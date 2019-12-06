import 'package:flutter/material.dart';

class MiniGift extends StatefulWidget {
  final String img;
  final String nameGift;
  bool isSelected = false;
  final Function addGift;
  final Function removeGift;

  MiniGift({this.img, this.nameGift, this.addGift, this.removeGift});

  @override
  _MiniGiftState createState() => _MiniGiftState();
}

class _MiniGiftState extends State<MiniGift> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Image.network(widget.img, fit: BoxFit.fill),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            child: Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                      widget.nameGift,
                      overflow: TextOverflow.clip,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite),
                      color: widget.isSelected ? Colors.red : Colors.white,
                      onPressed: () {
                        setState(() {
                          widget.isSelected ? widget.removeGift(widget.img, widget.nameGift) : widget.addGift(widget.img, widget.nameGift);
                          widget.isSelected ? widget.isSelected = false : widget.isSelected = true;
                          
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      elevation: 5,
      margin: EdgeInsets.all(10),
    );
  }
}
