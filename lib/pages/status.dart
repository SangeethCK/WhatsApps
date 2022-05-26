import 'package:flutter/material.dart';
import 'package:whatsapp/models/status_models.dart';

class Status extends StatelessWidget {
 Status({Key? key,required this.hms}) : super(key: key);

       StatusModels hms;

  @override
  Widget build(BuildContext context) {

  

    return Stack(
      children: [
         ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO-p9ThJctQTssrg3-NP4nUFYT_BH-AVQXOw&usqp=CAU"),
          ),
          title: Text(hms.name),
          subtitle: Text("Tab to add status"),
        ),
        const Padding(
          padding: const EdgeInsets.fromLTRB(5, 80, 20, 30),
          child: const Text("Viewed updates"),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 120, 0, 80),
          child:  ListView.builder(itemBuilder: ((context, index) {
            return  const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO-p9ThJctQTssrg3-NP4nUFYT_BH-AVQXOw&usqp=CAU"),
            ),
            title: Text("Sangeeth"),
            subtitle: const Text("Today 10:30 PM"),
          );
          }
          )
          )
          
          
          
        ),
      ],
    );
  }
}
