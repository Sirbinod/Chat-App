import 'package:chat_app/app_config/app_inputStyle.dart';
import 'package:chat_app/widget/round_button.dart';
import'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const String id = 'login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 24.0),child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(child: Hero(tag:'logo',child: Container(
            height: 200.0,
            child: Icon(Icons.message,size: 60.0,),
          ),),),
          SizedBox(height: 48.0,),
        TextField(
          keyboardType: TextInputType.emailAddress,
          textAlign: TextAlign.center,
          // onChanged: (value){
          //   email = value;
          // },
          decoration:
            kTextFieldDecoration.copyWith(hintText: 'Enter Your email'),

        ),
          SizedBox(
            height: 8.0,
          ),
          TextField(obscureText: true,
            textAlign: TextAlign.center,
            decoration: kTextFieldDecoration.copyWith(hintText: 'Enter you password'),
          ),
          SizedBox(height: 24.0,),
          RoundButton(color:Colors.lightBlueAccent,title: 'Log In',onPresses: (){})
        ],
      ),),
    );
  }
}
