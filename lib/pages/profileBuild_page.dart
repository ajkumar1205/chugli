import 'package:flutter/material.dart';

class ProfileBuildPage extends StatelessWidget {
  const ProfileBuildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Complete your Profile"),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 2,
                color: Theme.of(context).primaryColor,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                const CircleAvatar(
                  radius: 100,
                  child: Icon(
                    Icons.person,
                    size: 200,
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text("Take from Gallery"),
                      ),
                      const SizedBox(width: 50),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.camera_alt),
                        color: Theme.of(context).primaryColor,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
