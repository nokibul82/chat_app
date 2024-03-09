import 'package:chat_app/models/chat_item_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatItemWidget extends StatelessWidget {
  const ChatItemWidget({super.key, required this.chatItem});
  final ChatItemModel chatItem;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.person_outlined),
      ),
      title: Text(chatItem.userName),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.done_all,
            color: Colors.blueAccent,
            size: 12,
          ),
          Flexible(
            child: RichText(
              overflow: TextOverflow.ellipsis,
              strutStyle: const StrutStyle(fontSize: 12.0),
              text: TextSpan(
                  style: const TextStyle(color: Colors.black),
                  text: chatItem.lastMessage),
            ),
          )
        ],
      ),
      trailing: Text(DateFormat('dd/mm/yyyy').format(chatItem.dateTime),
          style: const TextStyle(fontSize: 10)),
    );
  }
}
