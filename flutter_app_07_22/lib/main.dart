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
                        image: new AssetImage('image/main_background.png'),
                        fit: BoxFit.cover)
                ),
                child: Padding(
                    padding: const EdgeInsets.only(left:110.0,top: 1.0),
                    child: Column(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 210.0,
                                      child: Image.asset(
                                          'image/flipclip_image.png'
                                      ),
                                    ),
                                    MaterialButton(
                                        child: Image.asset('image/plus_shadow.png'),
                                        onPressed: _PlusPressed
                                    )
                                  ]

                                //            ));
                              )
                          ),
                          Expanded(
                            flex:5,
                            child:Container()

                )
                        ]
                    )
                  //Container(

                  //)
                )
            )
          ],
        )
    );
  }

//              child: Column(
//                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//
//                  children: <Widget>[
//                    Expanded(
//                       flex: 1,
//                      child:
//                      Container(
//                        width : 180.0,
//                        child: Image.asset('image/flipclip_image.png' ),
//                      ),
//                    ),
//
//                    Expanded(
//                    flex:5,
//                        child: Container(),
//                    )
//                  ]
//              )

//                    Padding(
//                      padding: const EdgeInsets.all(0.0),
//                      child: MaterialButton(
//                        child: Image.asset('image/plus_shadow.png'),
//                        onPressed:_PlusPressed
//                      )
//                      )
 //   ]
   //                 )
    //            )
      //      ),
        //  ]

                        //mainAxisAlignment: MainAxisAlignment.end,
                        //children: <Widget> [
                      //padding: const EdgeInsets.all(2.0),
//            materialbutton: MaterialButton(
//                          child: Image.asset('plus_shadow.png'),
//                          onPressed: _PlusPressed

          //            ));
                   // ]











//        )
//
//
//
//          ],
//        )
//
//    );


  void _PlusPressed() {

      showDialog(
          context: context, builder: (BuildContext context) {
        return AlertDialog(
          content: Form(
            key: _formKey,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
//                Image.asset(
//                'image/paint.png',
//            ),
              Padding(
                padding: const EdgeInsets.all(2.0),

                  child: MaterialButton(
                    child: Image.asset('image/paint.png'),
                    onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InputImage())
                    );

//                    if (_formKey.currentState.validate()) {
//                      _formKey.currentState.save();
//                    }
                  },
                  )
          ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                    child: MaterialButton(
                      child: Image.asset('image/text.png'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InputText())
                      );
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();
                        }
                      },
                    ),
                )
              ],
            ),
          ),
        );
      });
    }
  }

