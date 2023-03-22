import 'package:flutter/material.dart';
import 'package:whats_app_flutter/model/drawer_data.dart';

import '../model/chat_model.dart';

List<ChatModel> chatList = [
  new ChatModel(1, "reham yahia", "ouuuuuuuuu go downloaded it from browser ",
      "10.55 am", "assets/image/photo1.jfif","2","11/512022 ,10:30 AM" , "Today , 2:50"),
  new ChatModel(2, "mostafa adel", "noted it is so pretty", "10.55 am",
      "assets/image/photo2.jfif","", "11/512022 ,10:30 AM" , "Today , 6:25"),
  new ChatModel(1, "amira mohamed", "GeneralSoftware New Whatsapp Beta Released, Features Improved Material Design UI, New Calling Interface And More",
      "10.55 am", "assets/image/photo3.jfif","1", "11/512022 ,10:30 AM" , "Yesterday , 8:40"),
  new ChatModel(1, "ibrahim ahmed", "Recently, the official Material Design changes to WhatsApp went live on Google Play Store for Android users and what we heard today is as much of a treat",
      "10.55 am", "assets/image/photo4.jfif","", "11/512022 ,10:30 AM" , "Today , 1:20"),
  new ChatModel(1, "olaa adel", "WhatsApp gets a new beta today that features quite a lot which we will be telling you later on",
      "10.55 am", "assets/image/photo5.jfif","", "11/512022 ,10:30 AM" , "Yesterday , 4:10"),
  new ChatModel(1, "seif walid", " So WhatsApp looks in bit of a hurry judging by the updates and betas being released.",
      "10.55 am", "assets/image/photo6.jfif","3", "11/512022 ,10:30 AM" , "Today , 7:10 "),
  new ChatModel(1, "toaa yassien", " what other changes has the WhatsApp team made to the new beta? Is it better?",
      "10.55 am", "assets/image/photo7.jfif","","11/512022 ,10:30 AM", "Yesterday , 8:40"),
  new ChatModel(1, "yassien farouk", "It sure is because the Material Design have been implemented to a whole new level along with a revamped Call interface. The beta has a build number of 2.12.87 and can be downloaded via the service's site as well as APK Mirror. But before that, better read the details to it.",
      "10.55 am", "assets/image/photo9.jfif","", "11/512022 ,10:30 AM" ,"Today , 1:20" ),
  new ChatModel(1, "anas mohamed", "Some of the major changes include the color in the call side",
      "10.55 am", "assets/image/photo10.jfif","", "11/512022 ,10:30 AM" , "Today , 7:10 "),
  new ChatModel(1, "basma emad", "The color has shifted from the green on top and red on bottom for hanging up to the dark green. The user interface looks more sophisticated this way and definitely does not looks like a child's play.", "10.55 am",
      "assets/image/photo11.jfif","1", "11/512022 ,10:30 AM" ,"Yesterday , 8:40" ),
  new ChatModel(1, "alaa tarek", "On the plus side, the caller ID or callers name will be displayed in a bigger font which is more easy on the eyes", "10.55 am",
      "assets/image/photo12.jfif","", "11/512022 ,10:30 AM" , "Today , 2:50"),
];

List<DrawerData> Ddata = [
  new DrawerData("New group",Icon(Icons.group_add_outlined , size: 17,)),
  new DrawerData("New broadcast",Icon(Icons.broadcast_on_personal , size: 17)),
  new DrawerData("Linked devices",Icon(Icons.device_hub , size: 17)),
  new DrawerData("Starred message",Icon(Icons.message , size: 17)),
  new DrawerData("Setting",Icon(Icons.settings , size: 17)),
  new DrawerData("Status privacy",Icon(Icons.privacy_tip_outlined , size: 17)),
  new DrawerData("Clear call log",Icon(Icons.call_end_outlined , size: 17)),
];


Widget chatName(String name){
  return Text(name , style: TextStyle(color: Colors.white ,fontSize: 15 , fontWeight: FontWeight.bold ),
  );

}
Widget chatNameBlack(String name){
  return Text(name , style: TextStyle(color: Colors.black ,fontSize: 15 , fontWeight: FontWeight.bold ),
  );

}

Widget chatMessage(String message) {
  return Text(message, style: TextStyle(
      color: Colors.white70, fontSize: 13,),
  );
}
Widget chatMessageBlack(String message) {
  return Text(message, style: TextStyle(
    color: Colors.black, fontSize: 13,),
  );
}

Widget chatTime(String time) {
  return Text(time, style: TextStyle(
    color: Colors.white70, fontSize: 13,),
  );
}
Widget chatTimeBlack(String time) {
  return Text(time, style: TextStyle(
    color: Colors.black, fontSize: 13,),
  );
}



Widget countTheNewChat(String time) {
  return Text(time, style: TextStyle(
    color: Colors.deepOrange, fontSize: 13,),
  );
}
//end drawer


Widget comOfEndDrawer()
{
  return ListView(
    children: [
      for(int i=0 ; i<Ddata.length ; i++)
      ListTile(
        title: Text(Ddata[i].text ,),
        leading:Ddata[i].icon ,
      )
    ],
  );


}


