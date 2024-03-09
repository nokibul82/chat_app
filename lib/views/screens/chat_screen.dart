import 'package:chat_app/controllers/chat_controller.dart';
import 'package:chat_app/views/widgets/chat_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chatController = Get.put(ChatController());
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ChatItemWidget(chatItem: chatController.chatList[index]);
        },
        itemCount: chatController.chatList.length,
      ),
    );
  }
}
