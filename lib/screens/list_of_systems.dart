import 'dart:math';

import 'package:firestore2_app/screens/tests/return_datas.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/globals.dart';
import '../widgets/appBar_Custom.dart';
import '../widgets/custom_navigation_bar.dart';
import '../widgets/system_list_containers.dart';

class UserSystems {
  final int systemId;
  final String systemName;
  final int plantId;
  final int userIrrigationFrequency;
  final int lastWaterQuantityUsed;
  final String lastWaterDate;
  final String systemMode;
  final String meteo;

  UserSystems(
    this.systemId,
    this.systemName,
    this.plantId,
    this.userIrrigationFrequency,
    this.lastWaterQuantityUsed,
    this.lastWaterDate,
    this.systemMode,
    this.meteo
  );
}

final userSystem1 = List.generate(
  5, 
  (i) => UserSystems(
    i, 
    'Systeme $i', 
    Random().nextInt(50), 
    Random().nextInt(10), 
    Random().nextInt(100), 
    getRandomLastWaterDate(), 
    getRandomSystemMode(), 
    'rainy'
  )
);


class ListOfSystems extends StatelessWidget {
  const ListOfSystems({super.key});

  @override
  Widget build(BuildContext context) {

    final globals = Globals(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // remove back button in appbar.
        flexibleSpace: const AppBarCustom(
            showSecondColumn: false, thirdColumnText: 'sbcxcxc sdbs'),
      ),
      body: Container(
          child: ListView.builder(
            itemCount: userSystem1.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(userSystem1[index].systemName),
                subtitle: Text(userSystem1[index].systemId.toString()),
                // trailing: Text(userSystem1[index].userIrrigationFrequency.toString())),
                onTap: () {
                  print(userSystem1[index].systemName);
                },
              );
            }
          )
          // child: Text("kjwskjbss")
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}


  String getRandomLastWaterDate() {
    final texts = [
      'qwer',
      'tyui',
      'opas',
      'dfgh',
      'jklz',
      'xcvb',
      'nm12',
      '4564'
    ];

    return texts[Random().nextInt(texts.length)];
  }

  String getRandomSystemMode() {
    final texts = [
      'auto',
      'manu',
      'semi',
      'sleep'
    ];

    return texts[Random().nextInt(texts.length)];
  }