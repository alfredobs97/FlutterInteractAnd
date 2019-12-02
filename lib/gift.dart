import 'package:flutter/material.dart';

class Gift extends StatelessWidget {
  final String img;
  final String nameGift;

  Gift({this.img, this.nameGift});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      child: Container(
        height: MediaQuery.of(context).size.height / 4,
        color: Colors.blue,
        child: Column(
          children: <Widget>[
            Image.network(
              img,
              height: 200,
            ),
            Text(
              nameGift,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
