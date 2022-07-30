import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterfire_ui/auth.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapShot) {
        if (!snapShot.hasData) {
          return const SignInScreen(
            providerConfigs: [PhoneProviderConfiguration()],
          );
        }
        return Container();
      },
    );
  }
}
