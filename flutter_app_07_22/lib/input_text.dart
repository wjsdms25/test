import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'input_text.dart';


class InputText extends StatefulWidget {
  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<InputText>{
  bool _switch =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('InputText'),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage('image/sub2/text.jpg'),
                fit: BoxFit.cover)
        )
      )
        ,


    );
  }
}