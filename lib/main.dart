import 'package:chat_app/Screens/chat.dart';
import 'package:chat_app/Screens/login.dart';
import 'package:chat_app/Screens/register.dart';
import 'package:chat_app/Screens/welcome.dart';
import 'package:flutter/material.dart';

void main() => runApp(ChatApp());

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Welcome.id,
      routes: {
        Welcome.id: (context) => Welcome(),
        Login.id: (context) => Login(),
        Register.id: (context) => Register(),
        Chat.id: (context) => Chat(),
      },
    );
  }
}
