import 'package:flutter/material.dart';
import './Sidemenu.dart';
import 'about.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Meet you',
      debugShowCheckedModeBanner: false,
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      // A widget which will be started on application startup
      home: const MyHomePage(title: 'MeetYou Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: const Text('MeetYou'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          alignment: Alignment.topCenter,
          width: 1200,
          height: 1200,
          padding: const EdgeInsets.fromLTRB(50, 200, 50, 50),
          color: const Color.fromARGB(255, 243, 198, 241),
          child: Column(
            children: [
              const Text(
                'More than 300 millions downloads worldwide',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ConstrainedBox(
                  constraints:
                      const BoxConstraints.expand(height: 80, width: 300),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.purple),
                    child: Row(
                      children: const [
                        Center(
                            child: Text(
                          'Intelligent period prediction',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        Icon(Icons.insert_invitation,
                            size: 40, color: Colors.orange),
                      ],
                    ),
                  )),
              ConstrainedBox(
                  constraints:
                      const BoxConstraints.expand(height: 80, width: 300),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color.fromARGB(255, 238, 95, 243)),
                    child: Center(
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Center(
                              child: Text(
                            'Multiple recording function',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                          const Icon(Icons.edit,
                              size: 40, color: Colors.purple),
                        ],
                      ),
                    ),
                  )),
              ConstrainedBox(
                  constraints:
                      const BoxConstraints.expand(height: 80, width: 350),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.yellow),
                    child: Row(
                      children: const [
                        Center(
                            child: Text(
                          'Find your cycle pattern',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        Icon(Icons.smart_toy_outlined,
                            size: 40, color: Colors.pink),
                      ],
                    ),
                  )),
              SizedBox(
                width: 300,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    primary: const Color.fromARGB(255, 247, 2, 226),
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  child: const Text(
                    'Get started!',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutPage(),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
