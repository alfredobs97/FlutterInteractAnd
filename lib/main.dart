import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi lista de regalos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://cdn.icon-icons.com/icons2/1904/PNG/512/profile_121261.png'),
                    backgroundColor: Colors.yellow,
                    radius: MediaQuery.of(context).size.height / 10,
                  ),
                  Text('John Interact', style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  ),),
                  Text('Mi Lista de Regalos', style: TextStyle(
                    fontSize: 20
                  ),)
                ],
              ),
            ),
            Expanded(
              
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        child: Container(
                        height: MediaQuery.of(context).size.height / 4,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    color: Colors.green,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    color: Colors.indigo,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    color: Colors.limeAccent,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
