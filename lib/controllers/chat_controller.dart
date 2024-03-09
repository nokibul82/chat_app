import 'package:chat_app/models/chat_item_model.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  final chatList = <ChatItemModel>[
    ChatItemModel(
        "Noki Noki", "can you do me a favour ?", "imageUrl", DateTime.now()),
    ChatItemModel(
        "Sujana", "can you do me a favour ?", "imageUrl", DateTime.now()),
    ChatItemModel(
        "Mehedi", "can you do me a favour ? can you do me a favour ? can you do me a favour ?", "imageUrl", DateTime.now()),
    ChatItemModel(
        "John Doe", "can you do me a favour ?", "imageUrl", DateTime.now())
  ].obs;
}
