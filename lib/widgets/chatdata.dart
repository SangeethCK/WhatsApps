import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/models/message_models.dart';
import 'package:whatsapp/widgets/chat_bubble.dart';

class ChatData extends StatefulWidget {
  const ChatData({Key? key}) : super(key: key);

  @override
  State<ChatData> createState() => _ChatDataState();
}

class _ChatDataState extends State<ChatData> {
  TextEditingController textedController = TextEditingController();

  bool isSend = false;

  FocusNode editFocus = FocusNode();
  bool showEmoji = false;

  

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "assets/images/WofyVJ.png",
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.fill,
      ),
      ListView.builder(
        itemBuilder: (context, index) {
          return ChatBubble(chatM: chatModel[index]);
        },
        itemCount: chatModel.length,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              // ignore: sized_box_for_whitespace
              Container(
                width: MediaQuery.of(context).size.width - 60,
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: TextField(
                      focusNode:editFocus ,
                      onChanged: (value) {
                        if(value.isNotEmpty){
                               setState(( ) {
                          isSend=true;
                        });
                        }else{
                                setState(( ) {
                          isSend=false;
                        });

                        }
                      },
                      onTap: (){
                        setState(() {
                          showEmoji=false;
                        });
                      },
                      controller: textedController,
                      decoration: InputDecoration(
                          hintText: "Message",
                          prefixIcon: IconButton(
                              onPressed: () {

                                
                                setState(() {
                                  editFocus.unfocus();
                                  showEmoji= !showEmoji;
                                });
                              },
                              icon: Icon(
                                showEmoji?
                                Icons.emoji_emotions: Icons.keyboard
                       
                              )),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                splashRadius: 5,
                                padding: const EdgeInsets.all(0),
                                onPressed: () {},
                                icon: const Icon(Icons.attach_file),
                              ),
                              IconButton(
                                padding: const EdgeInsets.all(0),
                                onPressed: () {},
                                icon: const Icon(Icons.currency_rupee),
                              ),
                              IconButton(
                                padding: const EdgeInsets.all(0),
                                onPressed: () {},
                                icon: const Icon(Icons.camera_alt),
                              ),
                            ],
                          )),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                    radius: 25,
                    child: IconButton(
                        onPressed: () {},
                        icon: isSend ? const Icon(Icons.send) : const Icon(Icons.mic))),
              )
            ],
          ),

              showEmoji? selectImogi():Container(),
        ],
      )
    ]);
  }
  Widget selectImogi(){

  return SizedBox(
    height: 300,
    child: EmojiPicker(
     
      onEmojiSelected:

       (category,emoji){
          textedController.text='${textedController.text}${emoji.emoji}';
      
         print(category,);
          print(emoji,);
    }),
  );

}

}

List<MessageModel> chatModel = [
  MessageModel(message: "Hi.Mr.X", time: "10:30", issent: true, isread: false),
  MessageModel(message: "Hi Mr.Y", time: "10:31", issent: false, isread: false),
  MessageModel(
      message: "How Are you", time: "10:32", issent: true, isread: true),
  MessageModel(
      message: "I'm fine ,thank you",
      time: "10:33",
      issent: false,
      isread: false),
];


