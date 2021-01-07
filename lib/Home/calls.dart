import 'package:flutter/material.dart';
class Calls extends StatefulWidget {  
  @override
  _Calls createState() => _Calls();
}

class _Calls extends State<Calls> {
  List<Callser> calls = List<Callser>();

  @override
  void initState() {    
    super.initState();
    calls.add(
      Callser(
        name:"Tariro", time: "16.50",seenSome:true,
        pic:null,date:"Yesterday",
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(            
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add_call)
      ),
      body:ListView.builder(
        itemCount:calls.length,        
        itemBuilder:(_,x){
          return ListTile(
            title:Text(calls[x].name, maxLines:1,
              style:TextStyle(fontWeight: FontWeight.bold)
            ),
            subtitle:Text("${calls[x].date}, ${calls[x].time}", maxLines:1, textScaleFactor: .8,),
            leading:CircleAvatar(              
              child:Icon(Icons.person)
            ),
            trailing:Container(
              width:50,
              child:IconButton(
                icon:Icon(Icons.add_call),
              )
            )
          );
        }
      )

      
      
          );           
  }
}

class Callser{
  Callser({
    this.name,this.pic,this.date,
    this.time,this.seenAll,this.seenSome,
    this.newStati,this.mute,  
  });

  String name, pic, date, time;
  bool seenAll=false, seenSome=false,newStati=false,mute=false;
  
}
