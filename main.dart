import 'package:flutter/material.dart';
import 'package:project/login/registrationpage.dart';
import 'package:project/login/userlogin.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Women empowerment',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Login_page(),
      //    home:   Registration_page()
    );
  }
}
