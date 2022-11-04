import 'package:flutter/material.dart';
import 'package:learning_whatsapp_clone/colors.dart';
import 'package:learning_whatsapp_clone/info.dart';
import 'package:learning_whatsapp_clone/widgets/chats_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          const Expanded(child: ChatList()),
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: mobileChatBoxColor,
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.emoji_emotions,
                    color: Colors.grey,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.money,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                hintText: "Message",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none)),
                contentPadding: const EdgeInsets.all(10)),
          )
        ],
      ),
    );
  }
}
