import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});
  Future<void> logout() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('User Details')),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Profil Page'),
          ElevatedButton(
              onPressed: () async {
                await logout();
                Navigator.pop(context);
              },
              child: const Text('Logout')),
        ])));
  }
}
