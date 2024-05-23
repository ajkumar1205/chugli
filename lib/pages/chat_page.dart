import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key, required this.title});
  
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.flag_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(title),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text("Hello Kutti"),
      ),
    );
  }
}
