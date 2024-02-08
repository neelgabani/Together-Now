import 'package:flutter/material.dart';
import 'package:together_now_ipd/Screens/introduction_screen.dart';
// import 'package:together_now_ipd/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Together Now',
      // theme: ThemeData.dark().copyWith(
      //     // primaryColor: Colors.blueGrey[900],
      //     // scaffoldBackgroundColor: Colors.blueGrey[900],
      //     ),
      debugShowCheckedModeBanner: false,
      home: IntroductionScreens(),
    );
  }
}
