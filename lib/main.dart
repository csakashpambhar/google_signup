import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_singup/resources/auth_methods.dart';
import 'package:google_singup/screens/home_screens.dart';
import 'package:google_singup/screens/login_screens.dart';
import 'package:google_singup/utils/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyB9GV-0gcYqSn-Xx2DRSVccE9vc5XWXE-E",
          appId: "1:107992850747:android:357cb5f684ac7489a8571e",
          messagingSenderId:  "107992850747",
          projectId: "signup-6ae04"
      ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google SignIn',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      // routes: {
      //   '/login': (context) => const LoginScreen(),
      //   '/home': (context) => const HomeScreen(),
      // },
      home: StreamBuilder(
          stream: AuthMethods().authChanges,
          builder: (context, snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if(snapshot.hasData){
              return const HomeScreen();
            }
            return LoginScreen();
          }
      ),
    );
  }
}
