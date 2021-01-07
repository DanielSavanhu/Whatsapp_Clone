import 'package:flutter/material.dart';

class MainChat extends StatefulWidget {  
  @override
  _MainChat createState() => _MainChat();
}

class _MainChat extends State<MainChat> {
  List<Texter> mainChat = List<Texter>();
  String name="Kind", time="14:00", date="today",pic;

  @override
  void initState() {    
    super.initState();
    mainChat.add(Texter(
      senttext: "I see", time:"19:27",doubletick: true,
    ));
    mainChat.add(Texter(
      senttext: "It's healthier too", 
      time:"20:42",rectext: true,
    ));
    mainChat.add(Texter(
      senttext: "Somehow I love being in the dark", 
      time:"19:27",doubletick: true,
    ));
    mainChat.add(Texter(
      senttext: "Good thing is you pulled back in good time", 
      time:"21:09",rectext: true,
    ));
    mainChat.add(Texter(
      senttext: "I see", time:"19:27",doubletick: true,
    ));
    mainChat.add(Texter(
      senttext: "It's healthier too", 
      time:"20:42",rectext: true,
    ));
    mainChat.add(Texter(
      senttext: "Somehow I love being in the dark", 
      time:"19:27",doubletick: true,
    ));
    mainChat.add(Texter(
      senttext: "Good thing is you pulled back in good time", 
      time:"21:09",rectext: true,
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body:Column(
        children:[
          Container(
            color: Color.fromRGBO(0, 125, 82,1),
            height:50,
            width:MediaQuery.of(context).size.width,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                IconButton(
                  icon:Icon(Icons.arrow_back),
                  onPressed:()=>Navigator.of(context).pop(),
                ),
                CircleAvatar(
                  radius: 15,
                  child:Icon(Icons.person)
                ),
                
                Expanded(
                  child:Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text("    "+name, style:TextStyle(fontWeight:FontWeight.bold,color:Colors.white)),
                      Text("    online", style:TextStyle(color:Colors.white),textScaleFactor:.8),
                    ]
                  ),
                ),
                IconButton(
                  icon:Icon(Icons.video_call_sharp,color:Colors.white),
                  onPressed:()=>Navigator.of(context).pop(),
                ),
                IconButton(
                  icon:Icon(Icons.call,color:Colors.white),
                  onPressed:()=>Navigator.of(context).pop(),
                ),
                IconButton(
                  icon:Icon(Icons.menu,color:Colors.white),
                  onPressed:()=>Navigator.of(context).pop(),
                ),
              ]
            )                            
          ),
          Expanded(
            child:Container(                          
              color:Colors.lightBlueAccent,            
              child:ListView.separated(
                separatorBuilder: (_,x)=>Divider(color:Color.fromRGBO(0, 0, 0, 0)),
                scrollDirection: Axis.vertical, 
                itemCount:mainChat.length,        
                itemBuilder:(_,x){
                  
                  if(mainChat[x].rectext==true){
                    return Row(                      
                      children:[
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration:BoxDecoration(
                            color:Colors.white,
                            borderRadius:BorderRadius.circular(5),
                          ),                      
                          child:Row(                        
                            children:[
                              Text(mainChat[x].senttext, maxLines:1,
                                style:TextStyle(fontWeight: FontWeight.bold)
                              ),                                    
                              Container(
                                width:50,
                                child:Column(
                                  children: [
                                    Text(mainChat[x].time, maxLines:1,textScaleFactor: .75,
                                      style:TextStyle(color:Colors.grey)
                                    ),
                                    
                                  ],
                                ),
                              ),
                            ]
                          )
                        )
                      ]
                    );

                  }
                  else return Row(  
                    children:[
                      Expanded(child:Container()),
                      Container(  
                        padding: EdgeInsets.all(5),
                        decoration:BoxDecoration(
                          color:Colors.lightGreenAccent,
                          borderRadius:BorderRadius.circular(5),
                        ),
                    
                      child:Row(                        
                        children:[
                          Text(mainChat[x].senttext, maxLines:1,
                            style:TextStyle(fontWeight: FontWeight.bold)
                          ),                                    
                          Container(
                            width:50,
                            child:Column(
                              children: [
                                Text(mainChat[x].time, maxLines:1,textScaleFactor: .75,
                                  style:TextStyle(color:Colors.grey)
                                ),
                                
                              ],
                            ),
                          ),
                        ]
                      )
                    )
                    ]
                  );

                }
              )
            ),
          ),
          Container(            
            height:50,   
            color:Colors.black,
            width:MediaQuery.of(context).size.width,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                // VerticalDivider(width: 1,),
                Container(
                  height:45,   
                  decoration:BoxDecoration(
                    color:Colors.white,
                    borderRadius:BorderRadius.circular(15),
                  ),                  
                  child:Expanded(
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[
                        
                        Icon(Icons.emoji_emotions_outlined,color:Colors.grey),
                        VerticalDivider(color:Colors.white),
                        Container(   
                          alignment:Alignment.center,               
                          height:35,                                    
                          width:MediaQuery.of(context).size.width*.6,
                          child:TextField(
                            decoration:InputDecoration( 
                              hintText: "Type a message"
                            )
                          )
                        ),
                        
                        IconButton(
                          icon:Icon(Icons.attachment_outlined,color:Colors.grey),
                          onPressed:()=>Navigator.of(context).pop(),
                        ),
                        IconButton(
                          icon:Icon(Icons.camera_alt,color:Colors.grey),
                          onPressed:()=>Navigator.of(context).pop(),
                        ),
                      ]
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(0, 125, 82,1),
                  radius: 15,
                  child:Icon(Icons.mic_outlined,)
                ),
              ]
            )                            
          ),

        ]
      ),               
    );           
  }
}

class Texter{
  Texter({
    this.senttext,this.rectext,    
    this.time,this.typing,
    this.recording,this.bluetick,
    this.doubletick,this.singletick,
    this.notsent,this.received
  });
  String senttext,time; 
  bool typing=false, recording=false,
  received=false,rectext=false,
  bluetick=false, doubletick=false,
  singletick=false, notsent=false;
}
