import 'package:flutter/material.dart';
import 'package:learning_whatsapp_clone/info.dart';
import '../colors.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      width: MediaQuery.of(context).size.width * 0.70,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
            right: BorderSide(
          color: dividerColor,
        )),
        color: webAppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60'),
                radius: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.008,
              ),
              Text(
                info[0]['name'].toString(),
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
