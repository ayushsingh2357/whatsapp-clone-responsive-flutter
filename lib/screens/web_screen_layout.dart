import 'package:flutter/material.dart';
import 'package:learning_whatsapp_clone/widgets/contacts_list.dart';
import 'package:learning_whatsapp_clone/widgets/web_profile_bar.dart';
import 'package:learning_whatsapp_clone/widgets/web_search_bar.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
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
              width: MediaQuery.of(context).size.width * 0.68,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/backgroundImage.png',
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
