import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboard_screen/screens/home_screen.dart';

class OnBoardScreen extends StatefulWidget {

  const OnBoardScreen({ Key? key }) : super(key: key);

  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      body: SafeArea(
    
        child: Center(

          child: IntroductionScreen(
            
            skipOrBackFlex: 0,
            nextFlex: 0,
            pages: [
    
              PageViewModel(
    
                title: "A reader lives a thousand lives",
                body: "The man who never reads lives only one.",
                image: buildImage("assets/ebook.png"),
                decoration: getPageDecoration()
              ),
    
              PageViewModel(
    
                title: "A reader lives a thousand lives",
                body: "The man who never reads lives only one.",
                image: buildImage("assets/learn.png"),
                decoration: getPageDecoration()
              ),
    
              PageViewModel(
    
                title: "A reader lives a thousand lives",
                body: "The man who never reads lives only one.",
                image: buildImage("assets/manthumbs.png"),
                decoration: getPageDecoration()
              ),

              PageViewModel(
    
                title: "A reader lives a thousand lives",
                body: "The man who never reads lives only one.",
                image: buildImage("assets/readingbook.png"),
                decoration: getPageDecoration()
              ),
            ],
            showNextButton: true,
            next: const Icon(Icons.arrow_forward_ios_rounded),
            showSkipButton: true,
            skip: const Text("Skip", style: TextStyle(color: Colors.blueAccent)),
            done: const Text("Read", style: TextStyle(color: Colors.blueAccent)),
            onDone: (){

              Navigator.pushReplacement(

                context,
                MaterialPageRoute(builder: (_) => const HomeScreen())
              );
            },

            dotsDecorator: DotsDecorator( 

              size: const Size(10, 10),
              activeSize: const Size(30, 15),
              activeShape: RoundedRectangleBorder(

                borderRadius: BorderRadius.circular(30)
              )
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage(String imagePath){

    return Center(

      child: Image.asset(imagePath, width: 400),
    );
  }

  PageDecoration getPageDecoration(){

    return const PageDecoration(

      titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      imagePadding: EdgeInsets.all(25)
    );
  }
}