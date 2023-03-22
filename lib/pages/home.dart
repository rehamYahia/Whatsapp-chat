import 'package:flutter/material.dart';
import 'package:whats_app_flutter/pages/status.dart';
import 'calls.dart';
import 'chats.dart';
import 'component_for_darkmood.dart';

class HomeScreen extends StatelessWidget {
  GlobalKey<ScaffoldState> sd = new GlobalKey<ScaffoldState>();

  //const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          key: sd,
          appBar: AppBar(
            shadowColor: Colors.black12,
            backgroundColor: Colors.black87,
            title: Text(
              "WhatsApp",
              style: TextStyle(color: Colors.deepOrange),
            ),
            actions: [
              Container(
                width: 200,
              ),
              Icon(Icons.search),
              IconButton(
                  onPressed: () {
                    sd.currentState?.openEndDrawer();
                  },
                  icon: Icon(Icons.menu))
            ],
            bottom: TabBar(
              tabs: [

                Tab(
                  text: "Chats",
                ),
                Tab(
                  text: "Calls",
                ),
                Tab(
                  text: "Status",
                ),
                Icon(Icons.camera_alt),
              ],
            ),
          ),
          endDrawer: Drawer(
            child: comOfEndDrawer(),
          ),
          body: TabBarView(

            children: [
              ChatScreen(),
              CallsScreen(),
              StatusScreen(),
              Text("camera"),
            ],
          ),
        ));
  }
}
