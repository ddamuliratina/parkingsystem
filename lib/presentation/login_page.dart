import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> _signInWithEmailAndPassword(BuildContext context) async {
    // Your sign-in logic here
  }

  Future<void> _signUpWithEmailAndPassword(BuildContext context) async {
    // Your sign-up logic here
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                width: deviceWidth,
                color: Colors.white,
                alignment: Alignment.bottomLeft,
                child: const Padding(
                  padding: EdgeInsets.only(left: 30.0, bottom: 10.0),
                  child: Text(
                    "Easy",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: deviceWidth,
                  color: const Color.fromARGB(255, 6, 68, 119),
                  alignment: Alignment.topLeft,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 30.0, top: 10.0),
                    child: Text("Park",
                        style: TextStyle(fontSize: 24, color: Colors.white)),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                height: 200,
                width: deviceWidth,
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Transform.scale(
                            scale: 0.7,
                            child: Image.asset('assets/logo.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(75)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 25),
                        Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 50),
                        TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: "Email",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () =>
                                    Navigator.pushNamed(context, '/signup'),
                                child: const Text("Create an account"))
                          ],
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: ElevatedButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, '/home'),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 6, 68,
                                      119)), // Set button background color
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 253, 248,
                                      248)), // Set button text color
                            ),
                            child: Text('LOGIN'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
