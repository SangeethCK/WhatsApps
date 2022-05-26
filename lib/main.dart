import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/pages/calls.dart';
import 'package:whatsapp/pages/camera.dart';
import 'package:whatsapp/pages/chat.dart';
import 'package:whatsapp/pages/status.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   cameras= await availableCameras ();
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF075E54),
        title: const Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {
              print("OnPressed");
            },
            icon: const Icon(
              Icons.search,
            ),
          ),
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem(child: Text("New Group")),
              const PopupMenuItem(child: Text("New Broadcast")),
              const PopupMenuItem(child: Text("Link Device")),
              const PopupMenuItem(child: Text("Starred message")),
              const PopupMenuItem(child: Text("Payments")),
              const PopupMenuItem(child: Text("Settings")),
            ];
          }),
        ],
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            ),
          ],
        ),
      ),
      body: TabBarView(controller: tabController, children: [
        Camera(),
        ChatPage(),
        // Status(),
        Text('data'),
        Calls(),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("On Pressed");
        },
        child: Icon(Icons.chat,),
        backgroundColor: Color(0XFF075E54),
      ),
    );
  }
}
