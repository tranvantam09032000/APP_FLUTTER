import 'package:flutter/material.dart';

class WidgetsButtons extends StatefulWidget {
  const WidgetsButtons({Key? key}) : super(key: key);

  @override
  State<WidgetsButtons> createState() => _WidgetsButtons();
}

class _WidgetsButtons extends State<WidgetsButtons> {
  int _volume = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter FlatButton Example'),
          ),
          body: Center(
              child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(25),
              child: FlatButton(
                child: Text(
                  'SignUp',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: FlatButton(
                child: Text(
                  'LogIn',
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
          ]))),
    );

    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text('Flutter RaisedButton Example'),
    //     ),
    //     body: Container(
    //       child: Center(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Text('Flutter RaisedButton Example', style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),),
    //             RaisedButton(
    //               child: Text("Click Here", style: TextStyle(fontSize: 20),),
    //               onPressed: _changeText,
    //               color: Colors.red,
    //               textColor: Colors.yellow,
    //               padding: EdgeInsets.all(8.0),
    //               splashColor: Colors.grey,
    //             )
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );

    // return MaterialApp(home: Scaffold(
    //   appBar: AppBar(
    //     title: Text("FAB Button Example"),
    //     backgroundColor: Colors.blue,
    //     actions: <Widget>[
    //       IconButton(icon: Icon(Icons.camera_alt), onPressed: () => {}),
    //       IconButton(icon: Icon(Icons.account_circle), onPressed: () => {})
    //     ],
    //   ),
    //   // floatingActionButton: FloatingActionButton(
    //   //   child: Icon(Icons.navigation),
    //   //   backgroundColor: Colors.green,
    //   //   foregroundColor: Colors.white,
    //   //   onPressed: () => {},
    //   // ),
    //   floatingActionButton:FloatingActionButton.extended(
    //     onPressed: () {},
    //     icon: Icon(Icons.save),
    //     label: Text("Save"),
    //   ),
    // ),
    // );

    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text('InkWell Button Example'),
    //     ),
    //     body: Center(
    //       child: new Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: <Widget>[
    //           InkWell(
    //             splashColor: Colors.green,
    //             highlightColor: Colors.blue,
    //             child: Icon(Icons.ring_volume, size: 50),
    //             onTap: () {
    //               setState(() {
    //                 _volume += 2;
    //               });
    //             },
    //           ),
    //           Text (
    //               _volume.toString(),
    //               style: TextStyle(fontSize: 50)
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );

    // return MaterialApp(
    //   home: Scaffold(
    //       appBar: AppBar(
    //         title: Text('Outline Button Example'),
    //       ),
    //       body: Center(child: Column(children: <Widget>[
    //         Container(
    //           margin: EdgeInsets.all(25),
    //           child: OutlineButton(
    //             child: Text("Outline Button", style: TextStyle(fontSize: 20.0),),
    //             highlightedBorderColor: Colors.red,
    //             shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(15)),
    //             onPressed: () {},
    //           ),
    //         ),
    //         Container(
    //           margin: EdgeInsets.all(25),
    //           child: FlatButton(
    //             child: Text('Flat Button', style: TextStyle(fontSize: 20.0),),
    //             color: Colors.blueAccent,
    //             textColor: Colors.white,
    //             onPressed: () {},
    //           ),
    //         ),
    //       ]
    //       ))
    //   ),
    // );

    // return Scaffold(
    //     appBar: AppBar(
    //       title: Text('Flutter ButtonBar Example'),
    //     ),
    //     body: Padding(
    //         padding: EdgeInsets.all(10),
    //         child: Column(
    //           children: <Widget>[
    //             Padding(
    //               padding: EdgeInsets.all(15),
    //               child: new ButtonBar(
    //                 mainAxisSize: MainAxisSize.min,
    //                 children: <Widget>[
    //                   RaisedButton(
    //                     child: new Text('Javatpoint'),
    //                     color: Colors.lightGreen,
    //                     onPressed: () {/** */},
    //                   ),
    //                   FlatButton(
    //                     child: Text('Flutter'),
    //                     color: Colors.lightGreen,
    //                     onPressed: () {/** */},
    //                   ),
    //                   FlatButton(
    //                     child: Text('MySQL'),
    //                     color: Colors.lightGreen,
    //                     onPressed: () {/** */},
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         )
    //     )
    // );
  }
  _changeText() {
    setState(() {
      if ('Flutter RaisedButton Example'.startsWith('F')) {
        'We have learned FlutterRaised button example.';
      } else {
        'Flutter RaisedButton Example';
      }
    });
  }
}
