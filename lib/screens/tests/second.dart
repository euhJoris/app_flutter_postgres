// import 'dart:math';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';

// class Second extends StatefulWidget {
//   const Second({super.key});

//   @override
//   State<Second> createState() => _SecondState();
// }

// class _SecondState extends State<Second> {
//   var number = 0;
//   bool _state = false;

//   void initState(){
//     super.initState();
//     _activateListeners();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final dbRef = database.child('first_field');
//     return Center(
//         child: Column(
//       children: [
//         Text(number.toString()),
//         ElevatedButton(
//             onPressed: () async {
//               try {
//                 setRandom();
//                 dbRef.update({
//                   'first_Item': number,
//                   'second_field/new_Item': number * 20
//                 });
//                 // print('Pressed');
//               } catch (e) {
//                 // ignore: avoid_print
//                 print('Error !!');
//               }
//             },
//             child: const Text(
//               // _state ? 'ON' : 'OFF',
//               'Random',
//             )),
//             ElevatedButton(onPressed: () {
//               final nextAction = <String, dynamic>{
//                 'description': getRandomText(),
//                 'price': Random().nextInt(5000),
//                 'customer': getRandomAnotherText(),
//                 'time': DateTime.now().microsecondsSinceEpoch
//               };
//               dbRef.child('Another_Field').push().set(nextAction);
//             },
//              child:const Text(
//               'Push'
//              ))
//       ],
//     ));
//   }

//   // Data base
//   final database = FirebaseDatabase.instance.ref();

//   void setRandom() {
//     setState(() {
//       _state = !_state;
//     });
//     number = Random().nextInt(100);
//   }

//   String getRandomText() {
//     final texts = [
//       'qwer',
//       'tyui',
//       'opas',
//       'dfgh',
//       'jklz',
//       'xcvb',
//       'nm12',
//       '4564'
//     ];

//     return texts[Random().nextInt(texts.length)];
//   }

//   String getRandomAnotherText() {
//     final text = [
//       'qwvz',
//       'ukjsdfa',
//       'joidfsn',
//       'vsbi',
//       'pojwkmew',
//       'ackjqlak',
//       'qdw',
//       'klfqm'
//     ];

//     return text[Random().nextInt(text.length)];
//   }
  
//   void _activateListeners() {
//     database.child('first_field').onValue.listen((event) {
//       final Object? description = event.snapshot.value;
//       setState(() {
//         var _description = 'description: $description';
//       });
//     });
//   }
// }
