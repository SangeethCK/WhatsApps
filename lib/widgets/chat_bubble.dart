import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp/models/message_models.dart';

class ChatBubble extends StatelessWidget {
  ChatBubble({Key? key, required this.chatM}) : super(key: key);

  MessageModel chatM;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:chatM.issent?Alignment.centerRight:Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width),
        child: Card(
            color: chatM.issent ? const Color(0xffdcf8c6) : Colors.white,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 10, 30, 20),
                  child: Text(chatM.message),
                ),
                Positioned(
                    bottom: 4.0,
                    right: 0.0,
                    child: Row(
                      children: [
                        Text(chatM.time),
                        const SizedBox(
                          width: 5,
                        ),
                        chatM.issent?
                  Icon(
                          Icons.done_all,
                          size: 15,
                          color: chatM.issent?Colors.blue:Colors.black,
                          
                        )
                        : Container(),
                      ],
                    ))
              ],
            )),
      ),
    );
  }
}
