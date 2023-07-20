import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// The `SystemListTile` class is a Dart widget that represents a tile for displaying system information
/// in a list.
class SystemListTile extends StatelessWidget {

  final int systemId;
  final String systemName;
  final int plantId;
  final int userIrrigationFrequency;
  final int lastWaterQuantityUsed;
  final String lastWaterDate;
  final String systemMode;
  final String meteo;
  final Color boxColor;


  const SystemListTile({
    required this.systemId,
    required this.systemName ,
    required this.plantId ,
    required this.userIrrigationFrequency ,
    required this.lastWaterQuantityUsed ,
    required this.lastWaterDate ,
    required this.systemMode ,
    required this.meteo ,
    this.boxColor = const Color.fromARGB(0, 101, 101, 97),
    super.key
  });

  @override
  Widget build(BuildContext context) {

    

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: boxColor,
          width: 5,
        ),
      ),
      child: Column(
      children: [
        Row(
          children: [
            Text(systemName)
          ],
        ),
        Row(
          children: [
            Text(systemId.toString())
          ],
        ),
        const Gap(10),
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                child: Column(
                  children: [
                    Text('Info 1'),
                    Text(userIrrigationFrequency.toString())
                  ]
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: Column(
                  children: [
                    Text('Info 2'),
                    Text(lastWaterDate.toString())
                  ]
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                child: Column(
                  children: [
                    Text('Info 3'),
                    Text(lastWaterQuantityUsed.toString())
                  ]
                ),
              ),
            )
          ],
        ),
        Gap(30)
      ]
      )
    );
  }
}