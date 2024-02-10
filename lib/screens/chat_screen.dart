import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: ListView(
        children: [
          ListTile(
            leading:
                CircleAvatar(backgroundColor: Theme.of(context).primaryColor),
            title: const Text("Name"),
            subtitle: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.done_all,
                  color: Colors.blueAccent,
                  size: 12,
                ),
                Text("You: let me do it.", style: TextStyle(fontSize: 12)),
              ],
            ),
            trailing: const Text("10/02/24", style: TextStyle(fontSize: 10)),
          ),
          const Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }
}
