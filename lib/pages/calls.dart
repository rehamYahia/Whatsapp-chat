import 'package:flutter/material.dart';

import 'component_for_darkmood.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        child: new Icon(
          Icons.add_call,
          color: Colors.white,
        ),
        onPressed: () {
// TODO add your logic here to add stuff
        },
      ),
      body: Container(
        color: Colors.black,
        child: ListView(children: [
          ListTile(
            title: chatName("Create call link"),
            subtitle: chatMessage("Share a link for your WhatsApp call"),
            leading: CircleAvatar(
              backgroundColor: Colors.black87,
              backgroundImage: AssetImage('assets/image/logo2.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: chatMessage(
              "Recent",
            ),
          ),
          for (int i = 0; i < 7; i++)
            ListTile(
              title: chatName(chatList[i + 1].name),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.call_missed_outlined,
                    color: Colors.red,
                    size: 15,
                  ),
                  SizedBox(width: 5,),
                  chatMessage(chatList[i + 1].date),

                ],
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage(chatList[i + 1].image),
              ),
              trailing: Icon(
                Icons.call,
                color: Colors.deepOrange,
                size: 17,
              ),
            )
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