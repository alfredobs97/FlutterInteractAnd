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
        child: MaterialButton(
        child: Text('Pulsa aquí para volver'),
        color: Colors.red,
        onPressed: () => {
          Navigator.pop(context)
        },
      ),
      ),
    );
  }
}