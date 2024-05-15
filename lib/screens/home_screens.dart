import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text(
            "SignIn Successful",
            style: TextStyle(
              fontSize: 30,
              backgroundColor: Colors.white
            ),
          ),
        ]
      ),
    );
  }
}
