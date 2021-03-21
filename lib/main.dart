import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(AskMe());
}

class AskMe extends StatefulWidget {
  @override
  _AskMeState createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {
  int num=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.white10,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Center(child: Text('Ask Me AnyThing')),
        ),
        body: Center(
          child: Container(

            child: FlatButton(onPressed: (){
              setState(() {
                num = Random().nextInt(5)+1;
                print('hey');
              });
            },
              child: Image.asset('images/ball$num.png'),
            ),
          ),
        ),
      ),
    );
  }
}
