import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _backButton(context),
            _loginText(),
            _loginEmail(),
            _loginPassword(),
            SizedBox(
              height: 14,
            ),
            SizedBox(
                height: 46,
                width: 300,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 18, letterSpacing: 2),
                    ))),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  child: Divider(
                    thickness: 3,
                  ),
                ),
                Text(
                  "  OR  ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black45,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 100,
                  child: Divider(
                    thickness: 3,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Social Media Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            _socialLogins(),
            Spacer(),
            _gotoSignUp(),
          ],
        ),
      ),
    );
  }

  _gotoSignUp() {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        children: [
          Text(
            "Don't have an account?",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16, color: Colors.blue, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 14,
          ),
          InkWell(
            onTap: () {
              //perform action
            },
            child: Text(
              "Sign Up",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ],
      ),
    );
  }

  _socialLogins() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: 40,
            width: 40,
            child: Image.asset(
              "assets/google.png",
              fit: BoxFit.cover,
            )),
        SizedBox(
          width: 20,
        ),
        SizedBox(
            height: 40,
            width: 40,
            child: Image.asset(
              "assets/facebook.png",
              fit: BoxFit.cover,
            )),
        SizedBox(
          width: 20,
        ),
        SizedBox(
            height: 40,
            width: 40,
            child: Image.asset(
              "assets/apple.png",
              fit: BoxFit.cover,
            ))
      ],
    );
  }

  _loginPassword() {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        children: [
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: InputBorder.none, hintText: "Enter Password"),
          ),
          Divider(
            thickness: 4,
            height: 4,
            color: Colors.blue,
          )
        ],
      ),
    );
  }

  _loginEmail() {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: "Enter Email"),
          ),
          Divider(
            thickness: 4,
            height: 4,
            color: Colors.blue,
          )
        ],
      ),
    );
  }

  _loginText() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Welcome!",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    letterSpacing: 2),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Sign in to Continue",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black45,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _backButton(context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            //perform back click
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Icon(
              Icons.arrow_back,
              size: 40,
            ),
          ),
        ),
      ],
    );
  }
}
