export class User {
  constructor(
    public email: string,
    public id: string,
    public createdAt: Date,
    public updatedAt: Date,
    private _token: string,
    private tokenExpirationDate: Date
) { }

  get token() {
    if (!this.tokenExpirationDate || new Date() > this.tokenExpirationDate) {
      // console.log('hit');
      return null
    }
    return this._token
  }
}
