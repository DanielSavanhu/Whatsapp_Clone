import 'package:flutter/material.dart';

class Chats extends StatefulWidget {  
  @override
  _Chats createState() => _Chats();
}

class _Chats extends State<Chats> {
  List<Chatter> chatter = List<Chatter>();

  @override
  void initState() {    
    super.initState();
    chatter.add(
      Chatter(
        name:"Tariro", time: "04/01/2021",received:true,
        pic:null,pinned:true,
        lastmsg:"53 He said, \"Now, if-if was just perfect, and ever...\"",
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(        
      body:ListView.builder(
        itemCount:chatter.length,        
        itemBuilder:(_,x){
          return ListTile(
            title:Text(chatter[x].name, maxLines:1,
              style:TextStyle(fontWeight: FontWeight.bold)
            ),
            subtitle:Text(chatter[x].lastmsg, maxLines:1, textScaleFactor: .8,),
            leading:CircleAvatar(              
              child:Icon(Icons.person)
            ),
            trailing:Container(
              width:50,
              child:Column(
                children: [
                  Text(chatter[x].time, maxLines:1,textScaleFactor: .75,
                    style:TextStyle(color:Colors.grey)
                  ),
                  // Icon(Icons.sound)
                ],
              ),
            )
          );
        }
      )
    );           
  }
}

class Chatter{
  Chatter({
    this.name,this.pic,this.lastmsg,
    this.time,this.typing,this.recording,
    this.pinned,this.bluetick,this.doubletick,this.mute,
    this.singletick,this.notsent,this.received
  });
  String name, pic, lastmsg, time;
  bool typing=false, recording=false,received=false,mute=false,
  pinned=false, bluetick=false, doubletick=false, singletick=false, 
  notsent=false;
}
