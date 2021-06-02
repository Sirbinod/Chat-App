import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_app/widget/round_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  static const String id = 'welcome';

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with SingleTickerProviderStateMixin{
  AnimationController controller;
  Animation animation;

  @override
  void initState(){
    super.initState();
    controller = AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white).animate(controller);
    controller.forward();
    controller.addListener(() {setState(() {});});
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'log',
                  child: Container(
                    child: Icon(Icons.message, size: 50.0,color: Colors.orangeAccent,),
                    height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(text: ['Together Chat'],textStyle: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                ),)
              ],
            ),
            SizedBox(height: 48.0,),
            RoundButton(color: Colors.lightBlueAccent, title:'Log In',onPresses: (){}),
            RoundButton(color: Colors.blueAccent, title:'Register',onPresses: (){})
          ],
        ),
      ),
    );
  }
}
