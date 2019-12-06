import 'package:flutter/material.dart';
import 'mini-gift.dart';

class Shop extends StatefulWidget {
  final Function addGift;
  final Function removeGift;
  Shop({this.addGift, this.removeGift});
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tienda de regalos'),
      ),
      body: Center(
          child: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          MiniGift(
            img:
                'https://elpais.com/tecnologia/imagenes/2017/09/19/actualidad/1505815835_481570_1505909612_noticia_fotograma.jpg',
            nameGift: 'Apple Watch',
            addGift: widget.addGift,
            removeGift: widget.removeGift,
          ),
          MiniGift(
            img: 'https://www.apple.com/v/ipad-pro/x/images/meta/og__ek1oqpcwtymq_overview.png',
            nameGift: 'Ipad Pro',
            addGift: widget.addGift,
            removeGift: widget.removeGift,
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          widget.addGift('https://elpais.com/tecnologia/imagenes/2017/09/19/actualidad/1505815835_481570_1505909612_noticia_fotograma.jpg', 'Apple Watch');
        },
      ),
    );
  }
}
