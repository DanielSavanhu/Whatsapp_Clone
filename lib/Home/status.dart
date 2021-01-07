import 'package:flutter/material.dart';
class Status extends StatefulWidget {  
  @override
  _Status createState() => _Status();
}

class _Status extends State<Status> {
  List<Statuser> status = List<Statuser>();

  @override
  void initState() {    
    super.initState();
    status.add(
      Statuser(
        name:"Tariro", time: "16.50",seenSome:true,
        pic:null,date:"Yesterday",
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> recent = List<Widget>();
    status.forEach((element) {
      recent.add(ListTile(
        title:Text(element.name, maxLines:1,
          style:TextStyle(fontWeight: FontWeight.bold)
        ),
        subtitle:Text("${element.date}, ${element.time}", maxLines:1, textScaleFactor: .8,),
        leading:CircleAvatar(              
          child:Icon(Icons.person)
        ),            
      ));  
    });
    
    return Scaffold(
      appBar:AppBar(
        leading:CircleAvatar(              
          child:Icon(Icons.person_add)
        ),
        title:ListTile(          
          title:Text("My Status"),
          subtitle:Text("Tap to add status update"),
        )
      ),
      body:Stack(
        alignment:Alignment.bottomRight,
        children:[
          Column(
            children:[
              Container(
                child:ListTile(          
                  title:Text("Recent updates"),
                ),
              ),
              Column(
                children:recent
              ),
              Container(
                child:ListTile(          
                  title:Text("Viewed updates"),
                ),
              ),
              Column(
                children:recent
              ),

              Container(
                child:ListTile(          
                  title:Text("Muted updates"),
                  trailing:Icon(Icons.arrow_drop_down_outlined)
                ),
              ),
              Column(
                children:recent
              ),

            ]
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Expanded(child: Container(),),
              Icon(Icons.edit),
              Divider(color:Colors.white),
              Icon(Icons.camera_alt_outlined)
            ]
          )
      
        ]
      )
      
      
          );           
  }
}

class Statuser{
  Statuser({
    this.name,this.pic,this.date,
    this.time,this.seenAll,this.seenSome,
    this.newStati,this.mute,  
  });

  String name, pic, date, time;
  bool seenAll=false, seenSome=false,newStati=false,mute=false;
  
}
