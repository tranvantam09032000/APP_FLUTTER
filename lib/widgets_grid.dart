import 'package:flutter/material.dart';

class WidgetsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(appBar: AppBar(
          title: Text("Flutter GridView Demo"),
        ),
            body: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 8.0,
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: SelectCard(choice: choices[index]),
                  );
                }
                )
            )
        )
    );
  }
}

class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Home', icon: Icons.home),
  const Choice(title: 'Contact', icon: Icons.contacts),
  const Choice(title: 'Map', icon: Icons.map),
  const Choice(title: 'Phone', icon: Icons.phone),
  const Choice(title: 'Camera', icon: Icons.camera_alt),
  const Choice(title: 'Setting', icon: Icons.settings),
  const Choice(title: 'Album', icon: Icons.photo_album),
  const Choice(title: 'WiFi', icon: Icons.wifi),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.orange,
        child: Center(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(child: Icon(choice.icon, size:50.0, color: Colors.white)),
              Text(choice.title),
            ]
        ),
        )
    );
  }
}