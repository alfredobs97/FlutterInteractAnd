import 'package:flutter/material.dart';
import 'package:flutterinteractand/gift.dart';
import 'shop.dart';

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
                  Text(
                    'John Interact',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Mi Lista de Regalos',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Gift(
                          img:
                              'https://p7.hiclipart.com/preview/172/844/1010/apple-watch-series-2-apple-watch-series-3-pebble-apple-white-smart-watch.jpg',
                          nameGift: 'Apple Watch')),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Gift(
                          img:
                              'https://lh3.googleusercontent.com/wEpdmU0qYb6-FPLeAwhPGpOG9x9YNz5bXKy1DiLled1xr5HtqwFYAUGIfnr7nNgoKN20WhBQTTs1XoC9aLDUDXx1VkjqEAWgLoaSXWbyek3pkltmYDRaNgPvmcswzZFUg95qDYcURfo=w400',
                          nameGift: 'Dash')),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Gift(
                          img:
                              'https://rlv.zcache.com/flutter_come_to_the_dart_side_dark_shirts_t_shirt-r5513c2ea71bf4834b909491a47db1f61_k2gm8_540.jpg',
                          nameGift: 'Flutter T-shirt')),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Gift(
                          img: 'https://www.sicos.es/wp-content/uploads/2019/08/macbook-pro-15-2019-gris-espacial.png',
                          nameGift: 'Macbook pro 2019')),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.store),
          elevation: 12.0,
          backgroundColor: Colors.red,
          onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => Shop()))}),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
