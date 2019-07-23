import 'package:flutter/material.dart';
import 'icon_txtorimg.dart';
import 'input_image.dart';

class InputImage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<InputImage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //showDialog(
              //  context: context, builder: (BuildContext context) {
//              return AlertDialog(
//                content: Form(
//                  key: _formKey,
//                  child: Column(
//                    mainAxisSize: MainAxisSize.min,
//                    children: <Widget>[
//                      Padding(
//                        padding: EdgeInsets.all(8.0),
//                        child: TextFormField(),
//                      ),
//                      Padding(
//                        padding: EdgeInsets.all(8.0),
//                        child: TextFormField(),
//                      ),
//                      Padding(
//                        padding: const EdgeInsets.all(8.0),
//                        child: RaisedButton(
//                          child: Text("Submitß"),
//                          onPressed: () {
//                            if (_formKey.currentState.validate()) {
//                              _formKey.currentState.save();
//                            }
//                          },
//                        ),
//                      )
//                    ],
//                  ),
//                ),
//              );
          //  });
          },
          child: Text("Send"),
        ),
      ),
    );
  }
}
