import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {  
  @override
  _Contacts createState() => _Contacts();
}

class _Contacts extends State<Contacts> {
  List<Contacter> contacter = List<Contacter>();

  @override
  void initState() {    
    super.initState();
    contacter.add(
      Contacter(
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
        itemCount:contacter.length,        
        itemBuilder:(_,x){
          return ListTile(
            title:Text(contacter[x].name, maxLines:1,
              style:TextStyle(fontWeight: FontWeight.bold)
            ),
            subtitle:Text(contacter[x].lastmsg, maxLines:1, textScaleFactor: .8,),
            leading:CircleAvatar(              
              child:Icon(Icons.person)
            ),
            trailing:Container(
              width:50,
              child:Column(
                children: [
                  Text(contacter[x].time, maxLines:1,textScaleFactor: .75,
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

class Contacter{
  Contacter({
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
