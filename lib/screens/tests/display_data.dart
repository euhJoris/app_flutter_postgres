import 'package:firestore2_app/screens/tests/send_data.dart';
import 'package:flutter/material.dart';

class DisplaySomeData extends StatelessWidget {
  const DisplaySomeData({super.key, required this.someData});

  final SomeData someData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(someData.data),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(someData.secondData),
      ),
    );
  }
}