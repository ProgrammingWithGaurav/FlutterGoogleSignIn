import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfilPage extends StatelessWidget {
  // create a user class
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> logout() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('User Details'),
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
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
          Text(
            'User Name: ${_auth.currentUser?.displayName}',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'User Email: ${_auth.currentUser?.email}',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Image
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(75),
                child: Image.network(
                  _auth.currentUser?.photoURL ?? '',
                ),
              ),
            ),
          ),
        ])));
  }
}
