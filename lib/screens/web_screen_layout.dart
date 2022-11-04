import 'package:flutter/material.dart';
import 'package:learning_whatsapp_clone/colors.dart';
import 'package:learning_whatsapp_clone/widgets/chats_list.dart';
import 'package:learning_whatsapp_clone/widgets/contacts_list.dart';
import 'package:learning_whatsapp_clone/widgets/web_profile_bar.dart';
import 'package:learning_whatsapp_clone/widgets/web_search_bar.dart';

import '../widgets/web_chat_app_bar.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.70,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/backgroundImage.png',
                    )),
              ),
              child: Column(
                children: [
                  const WebChatAppBar(),
                  const Expanded(child: ChatList()),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.09,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                        color: dividerColor,
                      )),
                      color: chatBarMessage,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.emoji_emotions_outlined,
                              color: Colors.grey,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.attach_file,
                              color: Colors.grey,
                            )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 15,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: searchBarColor,
                                filled: true,
                                hintText: "Type a Message",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      width: 0, style: BorderStyle.none),
                                ),
                                contentPadding:
                                    const EdgeInsets.only(left: 20)),
                          ),
                        )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.mic,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
