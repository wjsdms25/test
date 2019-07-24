import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'cupertino_page.dart';
import 'icon_txtorimg.dart';
import 'input_text.dart';
import 'input_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: HelloPage(''));
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
  final _formKey = GlobalKey<FormState>();
  bool _TimeSwitch = true;
  bool _WeatherSwitch = true;
  bool _TextSwitch = true;
  bool _ImageSwitch = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(children: <Widget>[
      new Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage('image/main_img.jpeg'),
                  fit: BoxFit.cover)),
          child: Column(
            children: <Widget>[
              SizedBox(height: 200.0),
              SizedBox(
                  height: 80.0,
                  width: double.infinity,
                  child: Row(children: <Widget>[
                    Expanded(child: Text(''), flex: 1),
                    Expanded(
                      flex: 3,
                      //child: //Image.asset('image/main/time.png'),

                      child: Text(
                        '시계',
                        //textAlign: TextAlign.,
                        style: TextStyle(
                            fontFamily: 'NotoSansCJKkr',
                            fontWeight: FontWeight.w300,
                            fontSize: 32.0),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: CupertinoSwitch(
                          activeColor: Colors.orangeAccent,
                          value: _TimeSwitch,
                          onChanged: (bool value) {
                            setState(() {
                              _TimeSwitch = value;
                            });
                          },
                        ))
                  ])),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 80.0,
                width: double.infinity,
                child: Row(children: <Widget>[
                  Expanded(child: Text(''), flex: 1),
                  Expanded(
                    flex: 3,
                    child: Text(
                      '날씨',
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontFamily: 'NotoSansCJKkr',
                        fontSize: 32.0,
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: CupertinoSwitch(
                        activeColor: Colors.orangeAccent,
                        value: _WeatherSwitch,
                        onChanged: (bool value) {
                          setState(() {
                            _WeatherSwitch = value;
                          });
                        },
                      ))
                ]),
              ),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                  height: 80.0,
                  width: double.infinity,
                  child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(child: Text(''), flex: 1),
                        Expanded(
                          flex: 3,
                          child: RawMaterialButton(
                            constraints: BoxConstraints(minHeight: 80),
                            onPressed: _imagePressed,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '그림',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'NotoSansCJKkr',
                                      fontSize: 32.0),
                                ),
                              ))),
                        Expanded(
                            flex: 1,
                            child: CupertinoSwitch(
                              activeColor: Colors.orangeAccent,
                              value: _ImageSwitch,
                              onChanged: (bool value) {
                                setState(() {
                                  _ImageSwitch = value;
                                });
                              },
                            ))
                      ])),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                  height: 80.0,
                  width: double.infinity,
                  child: Row(children: <Widget>[
                    Expanded(child: Text(''), flex: 1),
                    Expanded(
                        flex: 3,
                        child: RawMaterialButton(
                            constraints: BoxConstraints(minHeight: 80),
                            onPressed: _textPressed,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '제목',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'NotoSansCJKkr',
                                    fontSize: 32.0),
                              ),
                            ))),
                    Expanded(
                        flex: 1,
                        child: CupertinoSwitch(
                          activeColor: Colors.orangeAccent,
                          value: _TextSwitch,
                          onChanged: (bool value) {
                            setState(() {
                              _TextSwitch = value;
                            });
                          },
                        ))
                  ])),
              Divider(
                color: Colors.black,
              ),
            ],
          ))
    ]));
  }

  void _imagePressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => InputImage()));
  }

  void _textPressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => InputText()));
  }
}
//
