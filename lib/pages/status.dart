import 'package:flutter/material.dart';

import 'component_for_darkmood.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
backgroundColor: Colors.deepOrange,
child: new Icon(Icons.camera_alt, color: Colors.white,),
onPressed: () {
// TODO add your logic here to add stuff
},
),


      body: Container(
        color: Colors.black,
        child: ListView(children: [
          ListTile(
            title: chatName("My Status"),
            subtitle: chatMessage("Tob to add status update"),
            leading: CircleAvatar(
              backgroundColor: Colors.black87,
              backgroundImage: AssetImage('assets/image/girl.jfif'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: chatMessage(
              "Recent update",
            ),
          ),
          for (int i = 10; i > 1; i--)

            Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(left: 10 , right: 10 , bottom: 10),
                child: Card(
                  color: Colors.white60,
                  child: ListTile(
                    title: chatNameBlack(chatList[i].name),
                    subtitle: countTheNewChat(chatList[i ].state),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(chatList[i ].image),
                    ),

                  ),
                ),
              ),
            ),

        ]),
      ),
    );
  }
}

// floatingActionButton: new FloatingActionButton(
// backgroundColor: Colors.deepOrange,
// child: new Icon(Icons.chat, color: Colors.white,),
// onPressed: () {
// // TODO add your logic here to add stuff
// },
// ),
