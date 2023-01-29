import 'package:flutter/material.dart';
import './about.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'My App',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'MyHomePage'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        // The title text which will be shown on the action bar
        title: new Text('Sidemenu'),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Dikachi'),
              accountEmail: new Text('a.b@gmail.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage(
                    'https://api.dicebear.com/5.x/adventurer/svg?seed=Abby'),
              ),
            ),
            new ListTile(
              title: new Text('About Page'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new AboutPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
