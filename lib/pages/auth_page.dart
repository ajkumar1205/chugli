import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final phone = TextEditingController();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white,
              Colors.deepPurpleAccent.shade100,
              Colors.deepPurpleAccent
            ],
          ),
        ),
        child: Center(
          child: Container(
            height: 172,
            width: 308,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Theme.of(context).primaryColor,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Expanded(
                    child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      "Chugli",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
                Container(
                  height: 132,
                  width: 300,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        controller: email,
                        style: const TextStyle(fontSize: 20),
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            hintText: "example@mail.com",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                            )),
                      ),
                      // TextField(
                      //   controller: phone,
                      //   keyboardType: TextInputType.phone,
                      //   decoration: const InputDecoration(
                      //       hintText: "9876543210",
                      //       constraints: BoxConstraints(maxWidth: 300)),
                      // ),
                      const SizedBox(height: 10),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Theme.of(context).primaryColor),
                          foregroundColor:
                              const MaterialStatePropertyAll(Colors.white),
                          padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          ),
                        ),
                        child: const Text("Send OTP"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
