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
      body: Column(
        children: <Widget>[
          CupertinoButton(
            child: Text('on/off 스위치 버튼'),
          ),
          CupertinoSwitch(
            value:_switch,
            onChanged : (bool value) {
              setState((){
                _switch=value;
              });
            },
          )
        ],
      ),
    );
  }
}