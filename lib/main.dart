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
  List<Gift> gifts = new List();

  void addGift(String img, String nameGift) {
    print('INSERTO');
    gifts.add(Gift(
      img: img,
      nameGift: nameGift,
    ));
    print(gifts.length);
  }

  void removeGift(String img, String nameGift) {
    print('Elimino');
    gifts.removeWhere((gift) => gift.img == img && gift.nameGift == nameGift);
    print(gifts.length);
  }

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
              height: MediaQuery.of(context).size.height / 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://cdn.icon-icons.com/icons2/1904/PNG/512/profile_121261.png'),
                    backgroundColor: Colors.yellow,
                    radius: MediaQuery.of(context).size.height / 20,
                  ),
                  Text(
                    'MY SANTA´S LIST',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.share)
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.gifts.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Dismissible(
                      key: ValueKey(widget.gifts[index]),
                      background: Container(
                        color: Colors.red,
                      ),
                      onDismissed: (direction){
                        setState(() {
                          widget.gifts.removeAt(index);
                        });
                      },
                      child: Gift(img: widget.gifts[index].img, nameGift: widget.gifts[index].nameGift),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.store),
          elevation: 12.0,
          backgroundColor: Colors.red,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Shop(addGift: widget.addGift, removeGift: widget.removeGift))).then((_) {
              setState(() {});
            });
          }),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
