import 'package:flutter/material.dart';

class Item{
  String head;
  String description;
  String img;
  Color clr;
  Item({required this.head,required this.description,required this.img,required this.clr});
}
class ListofItems {
  static List<Item> loadlist (){
    var l = <Item>[
      Item(img: 'assets/blank.png',
          clr: Colors.black,
          head: '',
          description:
          ''),
      Item(img: 'assets/anydevice.png',clr: Colors.black,head: 'Watch on any device',description: 'Stream on your phone, tablet,\n laptop, and TV without paying\n more.'),
      Item(img: 'assets/download.png',clr: Colors.black,head: '3,2,1... Download!',description: 'Always have something to\n watch offline.'),
      Item(img: 'assets/nocontract.png',clr: Colors.black,head: 'No pesky contracts',description: 'Cancel anytime.')
    ];
    return l;
  }
}