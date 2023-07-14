// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';

// class Lamp extends StatefulWidget {
//   const Lamp({super.key});

//   @override
//   State<Lamp> createState() => _LampState();
// }

// class _LampState extends State<Lamp> {
//   // final database = FirebaseDatabase.instance.ref();
//   bool _state = false;

//   void changeState() {
//     _state = !_state;
//     // ignore: avoid_print
//     print(_state);
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final dbRef = database.child('Lamp');
//     return Center(
//       child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//         _state
//             ? const Icon(
//                 Icons.light_mode_rounded,
//                 color: Colors.amber,
//                 size: 70
//               )
//             : const Icon(
//                 Icons.light_mode_rounded,
//                 color: Colors.amber,
//                 size: 70
//               ),
//         ElevatedButton(
//             onPressed: () {
//               try {
//                 changeState();
//                 dbRef.update({
//                   'state': _state
//                 });
//               } catch (e) {
//                 // ignore: avoid_print
//                 print ('Erreur');
//               }
//             },
//             child: Text(
//               _state ? 'Eteindre' : 'Allumer',
//             )),
//       ]),
//     );
//   }
// }
