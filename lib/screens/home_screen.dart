import 'package:flutter/material.dart';
import 'package:onboard_screen/screens/onboard_screen.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      appBar: AppBar(

        backgroundColor: Colors.blue,
        elevation: 0,
        title: const Text("Home Page"),
      ),

      body: Center(

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            const Text("Home Page", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

            const SizedBox(height: 20),

            SizedBox(

              height: 40, width: 160,
              child: ElevatedButton(
                
                onPressed: (){

                  Navigator.pushReplacement(

                    context,
                    MaterialPageRoute(builder: (_) => const OnBoardScreen())
                  );
                },
                child: const Text("Back", textAlign: TextAlign.center,),
              ),
            )
          ],
        ),
      ),
    );
  }
}