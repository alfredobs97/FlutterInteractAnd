import 'package:flutter/material.dart';

class MiniGift extends StatefulWidget {
  final String img;
  final String nameGift;
  bool isSelected;

  MiniGift({this.img, this.nameGift, this.isSelected});

  @override
  _MiniGiftState createState() => _MiniGiftState();
}

class _MiniGiftState extends State<MiniGift> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: <Widget>[
          Positioned.fill(
            child: Image.network(widget.img, fit: BoxFit.fill),
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            color: widget.isSelected ? Colors.red : Colors.white,
            onPressed: (){
              setState(() {
                widget.isSelected ? widget.isSelected = false : widget.isSelected = true;
              });              
            },
          )
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 5,
      margin: EdgeInsets.all(10),
    );
  }
}
