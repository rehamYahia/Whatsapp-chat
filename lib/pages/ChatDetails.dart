import 'package:flutter/material.dart';


class chatDetails extends StatelessWidget {
  String name , massage , time , image ;

  GlobalKey<ScaffoldState> openDrawer = new GlobalKey();

  chatDetails(this.name , this.massage , this.time , this.image);
  //const chatDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: openDrawer,

      endDrawer: Drawer(),
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        } , icon: Icon(Icons.arrow_back),iconSize: 20,),
        backgroundColor: Colors.black87,
        title: Row(
         children: [
          Container(
            width: 30,
            height: 30,
            child: CircleAvatar(

              // child: Image.asset(this.image),
              backgroundImage: AssetImage(this.image),
            ),
          ),

           SizedBox(width: 10,),
           Text(this.name , style: TextStyle(fontSize: 15),)
         ],
          
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt)),
          IconButton(onPressed: (){
            openDrawer.currentState?.openEndDrawer();
          }, icon: Icon(Icons.menu)),

        ],
      ),

      body: Container(
        width: 250,
        child: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              child: CircleAvatar(
                  backgroundImage:  AssetImage(this.image )
              ),
            ),
            SizedBox(width: 5,),

            Container(
              width: 300,
              child: Card(
                child: Text(this.massage , style: TextStyle(color: Colors.white)),
                color: Colors.deepOrange,

        ),
            ),
      ],
      ),
    )
    );
  }
}
