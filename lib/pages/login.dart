import 'package:flutter/material.dart';
import 'package:flutter_minimal_ui/pages/login_form.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            _logo(),
            SizedBox(
              height: 50,
            ),
            _placeHolder(),
            SizedBox(
              height: 20,
            ),
            _loginOrSignUp(context)
          ],
        ),
      ),
    );
  }

//for login and signup button and text area
  _loginOrSignUp(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Hello !!",
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        Padding(
          padding: EdgeInsets.all(14.0),
          child: Text(
            "Some text. You can Login or \nregister From Here",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                color: Colors.black45,
                fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        //login button
        SizedBox(
            height: 46,
            width: 300,
            child: ElevatedButton(
                onPressed: () {
//move to login form
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginForm();
                  }));
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 18, letterSpacing: 2),
                ))),
        SizedBox(
          height: 14,
        ),
        //signup button
        SizedBox(
            height: 46,
            width: 300,
            child: InkWell(
              onTap: () {
                //perform click event here
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(
                          color: Colors.white, fontSize: 18, letterSpacing: 2),
                    ),
                  )),
            ))
      ],
    );
  }

//for place holder image
  _placeHolder() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 300,
          width: 300,
          child: Image.asset("assets/placeholder.png"),
        )
      ],
    );
  }

//for logo
  _logo() {
    return Row(
      children: const [
        Padding(
          padding: EdgeInsets.all(14.0),
          child: Text(
            "App Logo",
            style: TextStyle(
                color: Colors.black, fontSize: 28, fontWeight: FontWeight.w800),
          ),
        ),
      ],
    );
  }
}
