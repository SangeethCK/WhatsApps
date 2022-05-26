import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/chatdata.dart';

class ChatDetails extends StatefulWidget {
 ChatDetails({Key? key,required this.name,required this.avatar}) : super(key: key);
  String name ;
  String avatar;
  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF075E54),
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children:  [
              Icon(Icons.arrow_back),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    widget.avatar),
              ),
            ],
          ),
        ),
        titleSpacing: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(widget.name),
            const Text(
              "Online",
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem(
                child: Text("View contact"),
              ),
              const PopupMenuItem(
                child: Text("Media,links and docs"),
              ),
              const PopupMenuItem(
                child: Text("Search"),
              ),
              const PopupMenuItem(
                child: Text("Mute Notifications"),
              ),
              const PopupMenuItem(
                child: Text("Wallpaper"),
              ),
               const PopupMenuItem(
                child: Text("More"),
              ),
            ];
          })
        ],
      ),
      body: ChatData(),
    );
    
  }
}
