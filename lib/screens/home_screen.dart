import 'package:chat_app/screens/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)),
          PopupMenuButton(
            offset: const Offset(0, 50),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onSelected: (value) => print("$value selected"),
            itemBuilder: (context) {
              return const [
                PopupMenuItem(
                  value: "New group",
                  child: Text(
                    "New group",
                  ),
                ),
                PopupMenuItem(
                  value: "New broadcast",
                  child: Text("New broadcast"),
                ),
                PopupMenuItem(
                  value: "Linked devices",
                  child: Text("Linked devices"),
                ),
                PopupMenuItem(
                  value: "Starred messages",
                  child: Text("Starred messages"),
                ),
                PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings"),
                ),
              ];
            },
          ),
        ],
        bottom: TabBar(
            onTap: (value) {
              setState(() {});
            },
            indicatorColor: Theme.of(context).secondaryHeaderColor,
            controller: _tabController,
            tabs: const [
              Tab(
                icon: Icon(CupertinoIcons.person_3_fill),
              ),
              Tab(text: "Chats"),
              Tab(text: "Status"),
              Tab(text: "Calls"),
            ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        Container(
          color: Colors.blueAccent,
        ),
        const ChatScreen(),
        Container(
          color: Colors.greenAccent,
        ),
        Container(
          color: Colors.redAccent,
        ),
      ]),
      floatingActionButton: _tabController.index != 0
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: _tabController.index == 1
                  ? const Icon(Icons.chat)
                  : _tabController.index == 2
                      ? const Icon(Icons.camera_alt)
                      : const Icon(Icons.add_ic_call_rounded),
            )
          : Container(),
    );
  }
}
