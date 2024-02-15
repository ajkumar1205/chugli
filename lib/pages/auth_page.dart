import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late TextEditingController email;
  late TextEditingController otp;
  late double h;

  @override
  void initState() {
    super.initState();
    email = TextEditingController();
    otp = TextEditingController();
    h = 132;
  }

  @override
  Widget build(BuildContext context) {
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
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: h + 40,
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
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: h,
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
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            h = h + 54;
                          });
                        },
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
                      if (h != 132)
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          height: 0,
                          child: TextField(
                            controller: otp,
                            style: const TextStyle(fontSize: 20),
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              hintText: "Enter the OTP",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        )
                    ],
                  ),
                ),
                const SizedBox(height: 4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
