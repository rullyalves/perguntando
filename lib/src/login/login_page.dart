import 'package:flutter/material.dart';
import 'package:perguntando/src/login/login_module.dart';
import 'package:perguntando/src/login/pages/email_validation/email_validation_page.dart';
import 'login_bloc.dart';
import 'pages/sign_in/sign_in_page.dart';
import 'pages/sing_up/sing_up_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var bloc = LoginModule.to.getBloc<LoginBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Image.asset(
              "assets/background.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Color(0xffcc000000),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: bloc.pageController,
            children: <Widget>[
              SignInPage(),
              SingUpPage(),
              EmailValidationPage(),
            ],
          ),
        ],
      ),
    );
  }
}
