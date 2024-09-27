


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp( MyAnimation());
}


class MyAnimation extends StatefulWidget{


  @override
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation> {
        bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      home: Scaffold( 

        body: Center(
          child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Row ( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                  Container( 
                    height: isPressed?200:100,
                    width: isPressed ?200:100,
                    decoration:const  BoxDecoration( 
                      color: Colors.red
                    ),
                  ),
                  AnimatedContainer(
                    curve: Curves.bounceIn,// this how the effect wills show is handded by the curve property
                    duration: const Duration(seconds: 1),
                    width: isPressed?200:100,
                    height: isPressed?200:100,
                    decoration:const  BoxDecoration( 
                      color: Colors.orange,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: 
              FloatingActionButton(onPressed: (){ 
                setState(() {
                  isPressed =!isPressed;
                });
              },
              child: const Icon(Icons.touch_app_rounded),
              ),
      ),
    );
  }
}