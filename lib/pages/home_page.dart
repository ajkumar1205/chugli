import 'package:chugli/pages/chat_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final nameList = ["Shruti Jain", "Ajay Thakur", "Surmi", "Anju", "Vidhi"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Chugli"),
      ),
      body: ListView.builder(
        itemCount: nameList.length,
        itemBuilder: (_, i) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(nameList[i]),
            subtitle: Text("No. $i"),
            trailing: const Icon(Icons.menu),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ChatPage(title: nameList[i]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.amber,
        onPressed: () {
          showBottomSheet(
            context: context,
            builder: (_) {
              return Container(
                child: Center(child: Text("Hello")),
              );
            },
          );
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
