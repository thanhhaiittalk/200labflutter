import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  double width = 0;
  double height = 0;
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return MaterialApp(
        home: Scaffold(
      body: _bodyWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () => {print("home")},
      ),
    ));
  }

  Widget _background() {
    return Container(
      color: Colors.white,
    );
  }

  Widget _frontWidget() {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          color: Colors.black54,
          margin: EdgeInsets.fromLTRB(width/5, height*0.45, width*0.6, height*0.35),
        )
      ],
    );
  }

  Widget _backWidget() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Colors.grey,
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Colors.orange,
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Colors.blue,
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Colors.pink,
                                  )),
                            ],
                          )),
                      Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    color: Colors.blue,
                                  )),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          color: Colors.green,
                                        )),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.yellow,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ],
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.black,
                  )),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.yellow,
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.transparent,
                  )),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.pink,
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
                color: Colors.pink,
                margin: EdgeInsets.fromLTRB(width / 100, 0, 0, 0))),
      ],
    );
  }

  Widget _bodyWidget() {
    return Stack(
      fit: StackFit.expand,
      children: [
        _background(),
        _backWidget(),
        _frontWidget(),
      ],
    );
  }
}
