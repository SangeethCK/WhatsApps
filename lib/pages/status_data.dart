import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp/models/status_models.dart';
import 'package:whatsapp/pages/status.dart';

class StatusData extends StatelessWidget {
  const StatusData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return Status(hms: statsM[index]);
    },
    itemCount: statsM.length,
    );
  }
}

List<StatusModels> statsM = [

  StatusModels(image: "https://i.kinja-img.com/gawker-media/image/upload/t_original/ijsi5fzb1nbkbhxa2gc1.png",
   name: "Mr.Z", time:"Today 10:30pm", isgroup: true),

    StatusModels(image: "https://cdn.pixabay.com/photo/2018/08/28/13/29/avatar-3637561_1280.png",
   name: "Mr.Y", time:"Today 10:30pm", isgroup: true),

   
    StatusModels(image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Jo_Kay_-_Those_Green_Eyes_%281431777290%29.jpg/220px-Jo_Kay_-_Those_Green_Eyes_%281431777290%29.jpg",
   name: "Mr.X", time:"Today 10:40pm", isgroup: false),

       StatusModels(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3F3e5C2_4KVWpSSvmBDVb8iPGyRnDB5DVPA&usqp=CAU",
   name: "Mr.Q", time:"Today 1:40pm", isgroup: false),

];