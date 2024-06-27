import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:page_transition/page_transition.dart';
import 'welcome_Screen.dart';
import 'bio.dart';
import 'contact.dart';
import 'perform.dart';

class Kolit extends StatefulWidget {
  const Kolit({super.key});

  @override
  _KolitState createState() => _KolitState();
}

class _KolitState extends State<Kolit> with SingleTickerProviderStateMixin{
  int _selectedIndex = 0;
  int _previousIndex = 0;
  final screen = [
    MyBio(),
    MyPerform(),
    MyContact()
  ];
  late AnimationController _controller;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1)
    );
    _controller.forward();
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
        ],
      ),
      body: Container(
        child: AnimatedContainer(
          alignment: _selectedIndex == 0 ? Alignment(0, 0) : _selectedIndex == 1 ? Alignment(-0.5, 0) : Alignment(0.5, 0),
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
          child: Stack(
            children: [
              _selectedIndex < _previousIndex ? screen[_selectedIndex].animate(controller: _controller).move(begin: Offset(-450, 0),end:Offset(0, 0),curve: Curves.easeInOut,duration: Duration(seconds: 1))
                  : _selectedIndex > _previousIndex ? screen[_selectedIndex].animate(controller: _controller).move(begin: Offset(450, 0),end:Offset(0, 0),curve: Curves.easeInOut,duration: Duration(seconds: 1))
                  : screen[_selectedIndex],
              _selectedIndex < _previousIndex ? screen[_previousIndex].animate(controller: _controller).move(begin: Offset(0, 0),end: Offset(450, 0),curve: Curves.easeInOut,duration: Duration(seconds: 1))
                  : _selectedIndex > _previousIndex ? screen[_previousIndex].animate(controller: _controller).move(begin: Offset(0, 0),end: Offset(-450, 0),curve: Curves.easeInOut,duration: Duration(seconds: 1))
                  : screen[_selectedIndex]
            ],
          ),
        )
      ),
      bottomNavigationBar: GNav(
        gap: 8,
        tabs: [
          GButton(icon: Icons.home,text: "Bio",),
          GButton(icon: Icons.bar_chart_outlined,text: "Perform"),
          GButton(icon: Icons.person,text: "Contact",)
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index){
          setState(() {
            _previousIndex = _selectedIndex;
            _selectedIndex = index;
            _controller.reset();
            _controller.forward();

          });
        },
      ),


    );
  }
}


