import 'package:flutter/material.dart';

class WidgetsScaffold extends StatelessWidget {
  const WidgetsScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        backgroundColor: Colors.yellow,
        primary: true,
        appBar: AppBar(
          title: Text('My App'),
          backgroundColor: Colors.blue,
          leading: Builder(
            builder: (context) =>
                IconButton(onPressed: () {
                  Scaffold.of(context).openDrawer();
                }, icon: Icon(Icons.menu)),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Welcome to Javatpoint',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center),
              ),
              ListTile(
                title: Text("Inbox"),
                leading: Icon(Icons.mail),
              ),
              Divider(
                height: 0.1,
              ),
              ListTile(
                title: Text("Primary"),
                leading: Icon(Icons.inbox),
              ),
              ListTile(
                title: Text("Social"),
                leading: Icon(Icons.people),
              ),
              ListTile(
                title: Text("Promotions"),
                leading: Icon(Icons.local_offer),
              )
            ],
          ),
        ),
        body: Center(
          child: Text(
            'Hello My App',
            style: TextStyle(fontSize: 32, color: Colors.blue),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 8.0,
            child: Icon(Icons.add),
            onPressed: () {
              print('I am Floating Action Button');
            }),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "User Profile",
              icon: Icon(Icons.account_circle),
            ),
          ],
          // onTap: (int itemIndex){
          //   setState(() {
          //     _currentIndex = itemIndex;
          //   });
          // },
        ),
      ),
    );
  }
}
