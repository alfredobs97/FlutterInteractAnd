import 'dart:convert';
import 'package:flutter/material.dart';
import 'mini-gift.dart';
import 'package:http/http.dart' as http;

class Shop extends StatefulWidget {
  final Function addGift;
  final Function removeGift;
  List<MiniGift> misRegalos = List();
  Shop({this.addGift, this.removeGift});
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  Future<List<MiniGift>> getGifts() async {
    final respuestaJson = await http.get('http://vps675002.ovh.net:81/getGifts').then((response) => jsonDecode(response.body));
    List<MiniGift> gifts = List();
    respuestaJson.forEach((gift) {
      gifts.add(MiniGift(
        img: gift['img'],
        nameGift: gift['name'],
        addGift: widget.addGift,
        removeGift: widget.removeGift,
      ));
    });

    return gifts;
  }

  void initState() {
    super.initState();
    getGifts().then((regalos) {
      widget.misRegalos = regalos;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SANTA´S GIFT BAG'),
        centerTitle: true,
      ),
      body: Center(
          child: widget.misRegalos.length < 1
              ? CircularProgressIndicator()
              : GridView.builder(
                  itemCount: widget.misRegalos.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: MiniGift(
                        img:
                            widget.misRegalos[index].img,
                        nameGift: widget.misRegalos[index].nameGift,
                        addGift: widget.addGift,
                        removeGift: widget.removeGift,
                      ),
                    );
                  },
                )),
    );
  }
}
