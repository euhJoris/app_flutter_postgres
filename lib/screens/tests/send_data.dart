import 'package:firestore2_app/screens/tests/display_data.dart';
import 'package:flutter/material.dart';

class SomeData{
  final String data;
  final String secondData;

    SomeData(this.data, this.secondData);
}

final datas = List.generate(
  20,
  (i) => SomeData(
    'Todo $i',
    'A description of what needs to be done for Todo $i',
  ),
);

class ShowSomeData extends StatelessWidget {
  const ShowSomeData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: datas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(datas[index].data),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DisplaySomeData(someData: datas[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}