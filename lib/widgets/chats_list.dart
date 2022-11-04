import 'package:flutter/material.dart';
import 'package:learning_whatsapp_clone/info.dart';
import 'package:learning_whatsapp_clone/widgets/my_message.dart';

import 'sender_message.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessage(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        } else {
          return SenderMessage(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
      },
    );
  }
}
