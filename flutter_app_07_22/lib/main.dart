import 'package:flutter/material.dart';
import 'cupertino_page.dart';
import 'icon_txtorimg.dart';
import 'input_text.dart';
import 'input_image.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
//        theme: ThemeData(
//          primarySwatch:Colors.blue,
//        ),
        home: HelloPage(''));
        //HelloPage('Hello World'));
  }
}

//상태 변경되는 것은 들어오지 않게(final)
class HelloPage extends StatefulWidget {
  final String title;

  HelloPage(this.title);

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  //String _message = 'Hello World';
  int _counter = 0;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

        body: new Stack(
          children: <Widget>[
            new Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage('image/main_img.jpeg'),
                        fit: BoxFit.cover)
                ),
                //child: Padding(
                    //padding: const EdgeInsets.only(top: 1.0),
                    child: Column(
                        children: <Widget>[

                          SizedBox(height: 150.0),
                          SizedBox(
                              height: 100.0,

                               child: new RaisedButton(onPressed: null),
                                //border: Border(bottom: BorderSide()),


                             // RaisedButton(onPressed: null)

                      ),
                          Container(
                            //onPressed
                              height: 100.0,
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide()),
                              )),
                          Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide()),
                              )),
                          Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide()),
                              )),
                        ],))

            ])
                    );



  }

//
//  void _PlusPressed() {
//
//      showDialog(
//          context: context, builder: (BuildContext context) {
//        return AlertDialog(
//          content: Form(
//            key: _formKey,
//            child: Row(
//              mainAxisSize: MainAxisSize.min,
//              children: <Widget>[
//
//              Padding(
//                padding: const EdgeInsets.all(2.0),
//
//                  child: MaterialButton(
//                    child: Image.asset('image/paint.png'),
//                    onPressed: () {
//                    Navigator.push(
//                        context,
//                        MaterialPageRoute(builder: (context) => InputImage())
//                    );
//
//
//                  },
//                  )
//          ),
//              Padding(
//                padding: const EdgeInsets.all(2.0),
//                    child: MaterialButton(
//                      child: Image.asset('image/text.png'),
//                      onPressed: () {
//                        Navigator.push(
//                          context,
//                          MaterialPageRoute(builder: (context) => InputText())
//                      );
//                        if (_formKey.currentState.validate()) {
//                          _formKey.currentState.save();
//                        }
//                      },
//                    ),
//                )
//              ],
//            ),
//          ),
//        );
//      });
//    }
//  }
//
