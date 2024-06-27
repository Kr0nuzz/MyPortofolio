import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'porto1.dart';

class welcome_Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
      child:Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/wp.jpg"),
                  fit: BoxFit.cover
                )
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              // color: Colors.blue,
              margin: EdgeInsets.all(50.0),
              padding: EdgeInsets.only(bottom: 100),
              child: Column(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Lottie.asset("assets/poppy.json"),
                  Text(
                    "Muhamad Andreansyah",
                    style: GoogleFonts.kanit(
                        textStyle: const TextStyle(
                            fontSize: 20, 
                            fontWeight: FontWeight.bold, 
                            color: Colors.white
                        )
                    )
                  ),
                  Text("Mobile Apps Developer",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, PageTransition(child: Kolit(), type: PageTransitionType.rightToLeftWithFade)
                        );
                      },
                      child: Text('Know Me more ->'),style: ElevatedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.green)),
                ]
              ),
            )
          ],
      )
    );
  }
}