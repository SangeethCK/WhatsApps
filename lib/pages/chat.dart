import 'package:flutter/material.dart';
import 'package:whatsapp/models/listmodel.dart';
import 'package:whatsapp/widgets/listtile.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context ,index){
       return ListTileWidget(singleChat: chatList[index],);
       
       
    }, 

     itemCount: chatList.length);
  }
}


List<Welcome> chatList = [
  Welcome(avatar: "https://images.hindustantimes.com/rf/image_size_960x540/HT/p2/2020/05/13/Pictures/_67aa6b5c-94d7-11ea-9070-932bbf5d90a5.jpg",
   name: "Mr.Q", message: "Hi", time: "10:30PM", isgroup:true),

   Welcome(avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmixKuIKipuldtAjvy3-exT7-e4T7aC4e09g&usqp=CAU",
   name: "Mr.X", message: "HIII", time: "10:40PM", isgroup:false),

   Welcome(avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4KWIKwaojpneN3qgoL7Ec2xT4EcwjbQ8ImQ&usqp=CAU",
   name: "Mr.A", message: "Click Hi Button", time: "11:40PM", isgroup:false),

      Welcome(avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3F3e5C2_4KVWpSSvmBDVb8iPGyRnDB5DVPA&usqp=CAU",
   name: "Mr.B", message: "Hi..", time: "12:30PM", isgroup:false),

   
      Welcome(avatar: "https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png",
   name: "Mr.C", message: "Hi.its me.", time: "10:30PM", isgroup:false),
];