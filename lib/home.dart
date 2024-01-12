import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Google SignIn',
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
            onTap: () => {
                  // Sigin
                },
            child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8.0),
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset(
                        'assets/google.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const Text(
                      'Continue With Google',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ))),
      )),
    );
  }
}
