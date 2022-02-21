import 'package:flutter/material.dart';
import 'package:onboard_screen/screens/onboard_screen.dart';

void main(){

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: "On-Board Screen",
      theme: ThemeData(

        scaffoldBackgroundColor: Colors.white
      ),
      home: const OnBoardScreen(),
    );
  }
}