import 'package:flutter/material.dart';
import 'package:medone/Admin/Widgets/customTextField.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return LoginState();
  }
}

class LoginState extends State {
  TextEditingController _usernameController, _passwordController;
  bool _rembermeValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/doc.png',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 30.0,
              ),
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  _usernameController,
                  "Username",
                  Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  _passwordController,
                  "Password",
                  Icon(Icons.security, color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Checkbox(
                              value: _rembermeValue,
                              onChanged: (_rememberValue) {
                                setState(() {
                                  _rembermeValue = !_rembermeValue;
                                });
                              }),
                          Text(
                            "Remember Me",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.black),
                          )
                        ],
                      ),
                      FlatButton(
                        onPressed: null,
                        child: Text(
                          "Forget Password ?",
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: Theme.of(context).accentColor,
              child: FlatButton(
                  onPressed: () {
                    debugPrint("Printing Login Info : ");
                    debugPrint(_usernameController.toString());
                    debugPrint(_passwordController.toString());
                    debugPrint(_rembermeValue.toString());
                    debugPrint("Login");
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  )),
            ),
          ),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "or ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  child: Text(
                    " Signup ",
                    style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  ),
                  onTap: () => debugPrint("Signup"),
                ),
                Text(
                  "Using",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
