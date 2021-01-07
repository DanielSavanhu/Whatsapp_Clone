import 'package:flutter/material.dart';
import 'Home/calls.dart';
import 'Home/camera.dart';
import 'Home/chats.dart';
import 'Home/status.dart';
import 'main.dart';
import 'mainchat.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed:()=>Navigator.of(context)
          .push(MaterialPageRoute(builder:(_)=>MainChat())),
          child:Icon(Icons.message_outlined)
        ),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 125, 82,1),
          title:Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:[
              Text(widget.title),
              Icon(Icons.search)
            ]
          ),
          centerTitle: false,
          actions: [
            PopupMenuButton(
              icon:Icon(Icons.menu),
              itemBuilder:(_){
                return <PopupMenuEntry>[
                  PopupMenuItem(
                    child:Text("New group")
                  ),
                  PopupMenuItem(
                    child:Text("New broadcast")
                  ),
                  PopupMenuItem(
                    child:Text("WhatsApp Web")
                  ),
                  PopupMenuItem(
                    child:Text("Sharred Messages")
                  ),
                  PopupMenuItem(
                    child:Text("Settings")
                  ),
                ];
              }
            )
          ],
          bottom: TabBar(
            tabs: [
              
              Icon(
                Icons.camera_alt_outlined
              ),
              Row(
                children:[
                  Text("CHATS"),
                  CircleAvatar(
                    radius: 10,
                    child:Text("1", textScaleFactor: .6,)
                  )
                ]
              ),
              Row(
                children:[
                  Text("STATUS"),
                  CircleAvatar(
                    radius: 10,
                    child:Text("1", textScaleFactor: .6,)
                  )
                ]
              ),
              Row(
                children:[
                  Text("CALLS"),
                  CircleAvatar(
                    radius: 10,
                    child:Text("1", textScaleFactor: .6,)
                  )
                ]
              ),
            
            ],
          )
        ),
        body:TabBarView(
          children: [
            Camera(),
            Chats(),
            Status(),
            Calls(),           
          ],
        )
      ),
    );        
  }
}
