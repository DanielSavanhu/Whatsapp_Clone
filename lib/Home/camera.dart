import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class _Camera extends State<Camera> {  
  
  ImagePicker imagePicker = ImagePicker();
  @override
  void initState() {    
    super.initState();
    
   
  }
  @override
  Widget build(BuildContext context) {    
    return Scaffold(              
      body:Center(
        child:FlatButton(
          onPressed: (){
            imagePicker.getImage(source:ImageSource.camera);
          },
          child:Text("Camera"), )
      )
    );           
  }
}
class Camera extends StatefulWidget {  
  @override
  _Camera createState() => _Camera();
}

