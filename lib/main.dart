import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'Home/camera.dart';
import 'home.dart';

List<CameraDescription> cameras;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(      
        primarySwatch: Colors.green,
      ),
      home: HomePage(title: 'WhatsApp'),
    );
  }
}

// class _Camera extends State<Camera> {  
//   CameraController cameraController;
  
//   @override
//   void initState() {    
//     super.initState();
  
//     cameraController = CameraController(cameras[0], ResolutionPreset.medium);
//     cameraController.initialize()
//     .then((value) {
//       if(!mounted)return;
//       setState((){});
//     });
   
//   }
//   @override
//   Widget build(BuildContext context) {    
//     return Scaffold(              
//       body:CameraPreview(cameraController)
//     );           
//   }
// }
// class Camera extends StatefulWidget {  
//   @override
//   _Camera createState() => _Camera();
// }
