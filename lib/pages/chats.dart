import 'package:flutter/material.dart';
import 'ChatDetails.dart';
import 'component_for_darkmood.dart';

class ChatScreen extends StatelessWidget {
  //const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        child: new Icon(Icons.chat, color: Colors.white,),
        onPressed: () {
          // TODO add your logic here to add stuff
        },
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: [
            for (int counter = 0; counter < chatList.length; counter++)
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Card(
                  color: Colors.white60,
                  surfaceTintColor: Colors.deepOrange,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => chatDetails(
                                  chatList[counter].name,
                                  chatList[counter].massage,
                                  chatList[counter].time,
                                  chatList[counter].image)));
                    },
                    title: chatNameBlack(chatList[counter].name),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(chatList[counter].image),
                    ),
                    subtitle: Container(
                      child: chatMessageBlack(chatList[counter].massage),
                      height: 25,
                    ),
                    trailing: Column(
                      children: [
                        SizedBox(
                          height: 2,
                        ),
                        chatTimeBlack(chatList[counter].time),
                        SizedBox(
                          height: 2,
                        ),
                        countTheNewChat(chatList[counter].count)
                      ],
                    ),
                  ),
                ),
              ),


          ],
        ),
      ),
    );
  }
}
