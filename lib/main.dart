import 'package:firebase_core/firebase_core.dart';
import 'package:firestore2_app/screens/list_of_systems.dart';
import 'package:firestore2_app/screens/system_details.dart';
import 'package:firestore2_app/screens/tests/display_data.dart';
import 'package:firestore2_app/screens/user_settings.dart';
import 'package:firestore2_app/services/firebase_options.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Variable used for testing initial route redirection
  //a can be delete but change initialRoute
  final bool a = true; 
  
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      title: 'Test',
      debugShowCheckedModeBanner: false,
      // home:  Scaffold(
      //   body: Center(
      //     child: FirstScreen(),
      //   ),
      // ),
      initialRoute: a?'/':'/list',
      routes: {
        '/': (context) => const SystemDetails(),
        '/list': (context) => const ListOfSystems(),
        '/settings': (context) => const UserSettings()
      },
    );
  }
}
