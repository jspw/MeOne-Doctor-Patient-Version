import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse, HttpResponse } from '@angular/common/http'
import { catchError, tap } from 'rxjs/operators';
import { throwError, BehaviorSubject } from 'rxjs';

import { User } from "./user.model";
import { Router } from '@angular/router';

export interface Credentials {
  email: string
  password: string
}

export interface AuthResponseData {
  token: {
    id: string
    expiresIn: number
  }
  user: {
    email: string
    createdAt: string
    updatedAt: string
    _id: string
  }
}

@Injectable({ providedIn: 'root' })
export class AuthService {

  private baseURL = `https://souhardya-recipe-app.herokuapp.com`
  user = new BehaviorSubject<User>(null)

  private tokenExpirationTimer: any

  constructor(private http: HttpClient, private router: Router) { }

  signUp(credentials: Credentials) {
    return this.http
      .post<AuthResponseData>(`${this.baseURL}/users`, credentials)
      .pipe(
        tap(
          res => {
            console.log(res);

            this.handleAuthenticatedUser(res.user.email, res.user._id, res.user.createdAt, res.user.updatedAt, res.token.id, res.token.expiresIn)
          }
        ),
        catchError(this.handleError)
      )
  }

  autoLogin() {
    const userData: {
      email: string,
      id: string,
      createdAt: string,
      updatedAt: string,
      tokenExpirationDate: string,
      _token: string
    } = JSON.parse(localStorage.getItem('userData'))

    if (!userData) {
      return
    }

    const loadedUser = new User(
      userData.email,
      userData.id,
      new Date(userData.createdAt),
      new Date(userData.updatedAt),
      userData._token,
      new Date(userData.tokenExpirationDate)
    )

    if (loadedUser.token) {
      this.user.next(loadedUser)

      const tokenExpirationTimer = new Date(userData.tokenExpirationDate).getTime() - new Date().getTime()
      this.autoLogout(tokenExpirationTimer)
    }

  }

  logIn(credentials: Credentials) {
    return this.http
      .post<AuthResponseData>(`${this.baseURL}/users/login`, credentials)
      .pipe(
        tap(
          res => {
            console.log(res);

            this.handleAuthenticatedUser(res.user.email, res.user._id, res.user.createdAt, res.user.updatedAt, res.token.id, res.token.expiresIn)
          }
        ),
        catchError(this.handleError)
      )
  }

  logout() {
    this.http.post(`${this.baseURL}/users/logout`, {}).subscribe(
      (response) => {
        this.user.next(null)
        this.router.navigate(['/auth'])
        localStorage.removeItem('userData')
        if (this.tokenExpirationTimer) {
          clearTimeout(this.tokenExpirationTimer)
        }
        this.tokenExpirationTimer = null
      },
      error => console.log(error)
    )
  }

  autoLogout(tokenExpirationDuration: number) {
    console.log(tokenExpirationDuration);

    this.tokenExpirationTimer = setTimeout(() => {
      this.logout()
    }, tokenExpirationDuration)
  }

  private handleAuthenticatedUser(email: string, userId: string, createdAt: string, updatedAt: string, tokenId: string, expiresIn: number) {
    const expirationDate = new Date(new Date().getTime() + expiresIn * 1000)
    const firstCreatedAt = new Date(createdAt)
    const lastEditedAt = new Date(updatedAt)
    const user = new User(email, userId, firstCreatedAt, lastEditedAt, tokenId, expirationDate)

    localStorage.setItem('userData', JSON.stringify(user))
    this.autoLogout(expiresIn * 1000)

    this.user.next(user)
  }

  private handleError(error: HttpErrorResponse) {
    console.log(error);

    let errorMessage = 'An unknown Error'
    if (!error.error || !error.error.error) {
      return throwError(errorMessage)
    }
    switch (error.error.error) {
      case 'EMAIL_EXISTS':
        errorMessage = 'Email Already in Use!'
        break;
      case 'Invalid Credentials':
        errorMessage = 'Invalid Credentials!'
        break;

      default:
        break;
    }
    return throwError(errorMessage)

  }

}
