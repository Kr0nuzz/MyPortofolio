import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyBio extends StatelessWidget {
  const MyBio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [Container(
                width:MediaQuery.of(context).size.width,
                height:170,
                decoration: BoxDecoration(
                    color: Color(0xff373A40),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50)
                    ),
                  boxShadow: [BoxShadow(color: Colors.black,blurRadius: 4,offset: Offset(4,8))],
                ),
              ),
                Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/p3.jpg",
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
              ]
            ),
            Container(decoration: BoxDecoration(color: Color(0xff686D76),
                boxShadow: [BoxShadow(color: Colors.black,blurRadius: 4,offset: Offset(4,8))],
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50))
            ),
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: AnimatedTextKit(
                totalRepeatCount: 1,
                animatedTexts: [
                  TyperAnimatedText(
                    "Hello! I'm Andre, a mobile app developer with a knack for creating intuitive and engaging applications for Android platforms. My skills in Flutter allow me to bring ideas to life, ensuring seamless performance and exceptional user experiences. Let's create something amazing together!",
                    speed: const Duration(milliseconds: 50),textStyle: TextStyle(
                    fontSize: 15, color: Colors.white
                  ),
                    textAlign: TextAlign.center,
                )
              ],),
            )
          ],
        ),

      ),
    );
  }
}