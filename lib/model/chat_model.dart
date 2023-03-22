

import 'package:flutter/cupertino.dart';

class ChatModel {
  int id;
  late String name, massage, time;
  String image;
  String count;
   String date;
   String state;

  ChatModel(this.id, this.name, this.massage, this.time, this.image , this.count ,this.date  , this.state);

  // ChatModel(this.name , this.date , this.image);
}