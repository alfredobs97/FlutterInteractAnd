import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
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
          Card(
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: <Widget>[
                Positioned.fill(
                  child: Image.network(
                      'https://elpais.com/tecnologia/imagenes/2017/09/19/actualidad/1505815835_481570_1505909612_noticia_fotograma.jpg', fit: BoxFit.fill),
                ),
                IconButton(
                  icon: Icon(Icons.favorite),
                  color: Colors.white,
                  onPressed: () => {},
                )
              ],
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),
          Card(
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: <Widget>[
                Positioned.fill(
                  child: Image.network(
                      'https://www.apple.com/v/ipad-pro/x/images/meta/og__ek1oqpcwtymq_overview.png', fit: BoxFit.fill),
                ),
                IconButton(
                  icon: Icon(Icons.favorite),
                  color: Colors.white,
                  onPressed: () => {},
                )
              ],
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),
        ],
      )),
    );
  }
}

