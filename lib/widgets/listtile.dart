import 'package:flutter/material.dart';
import 'package:whatsapp/models/listmodel.dart';
import 'package:whatsapp/pages/chatdetails.dart';

class ListTileWidget extends StatelessWidget {
  ListTileWidget({Key? key, required this.singleChat}) : super(key: key);

  Welcome singleChat;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ChatDetails(name:singleChat.name,avatar: singleChat.avatar,);
          }));
        },
        title: Text(singleChat.name),
        subtitle: Text(singleChat.message),
        leading: CircleAvatar(backgroundImage: NetworkImage(singleChat.avatar)),
        trailing: Text(singleChat.time),
      ),
    );
  }
}
