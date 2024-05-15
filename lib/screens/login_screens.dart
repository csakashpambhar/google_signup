import 'package:flutter/material.dart';
import '../resources/auth_methods.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Continue with Google",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          CustomButton(
              text: 'Google Sign In',
              onPressed: () async {
                bool res = await _authMethods.signInWithGoogle(context);
                if(res){
                  Navigator.pushNamed(context, '/home');
                }
              }),
        ],
      ),
    );
  }
}
