import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final phone = TextEditingController();
    return Scaffold(
      body: Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    hintText: "example@mail.com",
                    constraints: BoxConstraints(maxWidth: 300)),
              ),
              TextField(
                controller: phone,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    hintText: "9876543210",
                    constraints: BoxConstraints(maxWidth: 300)),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Theme.of(context).primaryColor),
                  foregroundColor: const MaterialStatePropertyAll(Colors.white),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  ),
                ),
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
