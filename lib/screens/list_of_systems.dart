import 'dart:math';

import 'package:firestore2_app/screens/tests/return_datas.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/globals.dart';
import '../widgets/appBar_Custom.dart';
import '../widgets/custom_navigation_bar.dart';
import '../widgets/system_list_containers.dart';
import '../widgets/system_list_tile.dart';

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

/// The code `final userSystem1 = List.generate(10, (i) => UserSystems(i, 'Systeme ',
/// Random().nextInt(50), Random().nextInt(10), Random().nextInt(100), getRandomLastWaterDate(),
/// getRandomSystemMode(), 'rainy'))` is generating a list of `UserSystems` objects.
final userSystem1 = List.generate(
  10, 
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
    
    Future<void> sendSystemDatas(UserSystems systemDatas) async {
      Navigator.pushReplacementNamed(
        context, 
        "/",
        arguments: {
          "systemId": systemDatas.systemId,
          "systemName": systemDatas.systemName,
          "plantId": systemDatas.plantId,
          "userIrrigationFrequency": systemDatas.userIrrigationFrequency,
          "lastWaterQuantityUsed": systemDatas.lastWaterQuantityUsed,
        }
      );
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // remove back button in appbar.
        flexibleSpace: const AppBarCustom(
            showSecondColumn: false, thirdColumnText: 'sbcxcxc sdbs'),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
                  child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: userSystem1.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: SystemListTile(
                        systemId: userSystem1[index].systemId,
                        systemName: userSystem1[index].systemName,
                        plantId: userSystem1[index].plantId,
                        userIrrigationFrequency: userSystem1[index].userIrrigationFrequency,
                        lastWaterQuantityUsed: userSystem1[index].lastWaterQuantityUsed,
                        lastWaterDate: 'last',
                        systemMode: 'dg',
                        meteo: 'eer',
                        boxColor: randomColors(),
                      ),
                      onTap:() {
                        sendSystemDatas(userSystem1[index]);
                      },
                    );
                  }
                )
            ),
          ),
          // Gap(20),
          // ElevatedButton(
          //   onPressed: (){
          //     print("Add new System");
          //   },
          //   child: Text("Add new System"),
          // )
        ],
      ),
      bottomNavigationBar: const CustomNavigationBar(),
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

  Color randomColors() {
    final _color = [
      const Color.fromARGB(255, 196, 130, 126),
      const Color.fromARGB(255, 43, 177, 48),
      const Color.fromARGB(255, 23, 73, 115),
      const Color.fromARGB(255, 196, 190, 137),
      const Color.fromARGB(255, 219, 157, 230),
    ];

    return _color[Random().nextInt(_color.length)];
  }