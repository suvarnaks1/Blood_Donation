

// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class Signinpage extends StatefulWidget {
//   const Signinpage({super.key});

//   @override
//   State<Signinpage> createState() => _SigninpageState();
// }

// class _SigninpageState extends State<Signinpage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: ElevatedButton(
//               onPressed: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => GooglePage()));
//               },
//               child: Text('signin with google'))),
//     );
//   }
// }

// class GooglePage extends StatefulWidget {
//   const GooglePage({super.key});

//   @override
//   State<GooglePage> createState() => AuthService().signInWithGoogle();
// }

// class AuthService {
//   signInWithGoogle() async {
//     final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
//     final GoogleSignInAuthentication gAuth = await gUser!.authentication;

//     final credential = GoogleAuthProvider.credential(
//       accessToken: gAuth.accessToken,
//       idToken: gAuth.idToken,
//     );
//     return await FirebaseAuth.instance.signInWithCredential(credential);
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class GooglePage extends StatefulWidget {
//   const GooglePage({super.key});

//   @override
//   State<GooglePage> createState() => AuthService().signInWithGoogle();
// }

// class AuthService extends GoogleSignIn {
//   Future<UserCredential?> signInWithGoogle() async {
//     try {
//       final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
//       final GoogleSignInAuthentication gAuth = await gUser!.authentication;

//       final credential = GoogleAuthProvider.credential(
//         accessToken: gAuth.accessToken,
//         idToken: gAuth.idToken,
//       );

//       return await FirebaseAuth.instance.signInWithCredential(credential);
//     } catch (e) {
//       print('Error signing in with Google: $e');
//       return null;
//     }
//   }
// }


// class Signinpage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => GooglePage()),
//             );
//           },
//           child: Text('Sign in with Google'),
//         ),
//       ),
//     );
//   }
// }

// class GooglePage extends StatefulWidget {
//   @override
//   _GooglePageState createState() => _GooglePageState();
// }

// class _GooglePageState extends State<GooglePage> {
//   @override
//   Widget build(BuildContext context) {
//     // You can implement the UI for the Google Page here
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Google Sign-In Page'),
//       ),
//       body: Center(
//         child: Text('Welcome to the Google Page!'),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GooglePage extends StatefulWidget {
  const GooglePage({Key? key});

  @override
  State<GooglePage> createState() => _GooglePageState();
}

class _GooglePageState extends State<GooglePage> {
  @override
  Widget build(BuildContext context) {
    // Implement your Google Page UI here
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Sign-In Page'),
      ),
      body: Center(
        child: Text('Welcome to the Google Page!'),
      ),
    );
  }
}

class AuthService {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return await _auth.signInWithCredential(credential);
    } catch (e) {
      print('Error signing in with Google: $e');
      return null;
    }
  }
}

class Signinpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            AuthService authService = AuthService();
            UserCredential? userCredential = await authService.signInWithGoogle();
            if (userCredential != null) {
              // Handle successful sign-in here
              print('Signed in: ${userCredential.user?.displayName}');
              // You can navigate to the GooglePage or any other page here
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GooglePage()),
              );
            }
          },
          child: Text('Sign in with Google'),
        ),
      ),
    );
  }
}
