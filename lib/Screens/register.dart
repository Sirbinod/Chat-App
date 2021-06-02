import 'package:chat_app/app_config/app_inputStyle.dart';
import 'package:chat_app/widget/round_button.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
static const String id = 'register';

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[Flexible(child: Hero(tag:'logo',child: Container(height: 200.0,child: Icon(Icons.message,size: 50.0,),),),),
          SizedBox(height: 48.0,),
          TextField(textAlign: TextAlign.center, decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your email'),),
          SizedBox(height: 8.0,),
            TextField(textAlign: TextAlign.center, decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your email'),),
            SizedBox(
              height: 24.0,
            ),
            RoundButton(color:Colors.blueAccent, title:'Register',onPresses: (){})
          ],
        ),
      ),
    );
  }
}
