import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class Camera extends StatefulWidget {
  const Camera({ Key? key }) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  late CameraController camerac ;
  var cameravalue;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    camerac= CameraController(cameras![0],ResolutionPreset.high );
    cameravalue=camerac.initialize();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          FutureBuilder(builder: (context, snapshot){

            if(snapshot.connectionState==ConnectionState.done){
              return CameraPreview(camerac);

            }
            return CircularProgressIndicator();


          },
          future: cameravalue,
          )
        ],
      )
    );
  }
}

List<CameraDescription>? cameras ;