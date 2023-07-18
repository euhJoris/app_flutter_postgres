import 'package:firestore2_app/screens/tests/display_data.dart';
import 'package:firestore2_app/screens/tests/send_data.dart';
import 'package:firestore2_app/widgets/card_view.dart';
import 'package:flutter/material.dart';

import '../widgets/appBar_Custom.dart';
import '../widgets/custom_navigation_bar.dart';
import 'list_of_systems.dart';

class SystemDetails extends StatefulWidget {
  const SystemDetails({super.key});


  @override
  State<SystemDetails> createState() => _SystemDetailsState();
}

class _SystemDetailsState extends State<SystemDetails> {
  @override
  Widget build(BuildContext context) {
    // final systemData = ModalRoute.of(context)!.settings.arguments as UserSystems;

    print('SystemDetails');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // remove back button in appbar.
        flexibleSpace: AppBarCustom(
          showSecondColumn: false,
          showSecondColumnText: false,
          // firstColumnText: 'Mon champ de ${systemData.plantId}',
        ),
      ),
      body: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/list');
              },
              child: const Text('Liste')
            )
            // Text(systemData.toString())
            // CardView(
            //   averrageIrrigationTime: systemData.userIrrigationFrequency,
            //   waterVolumeUsed: systemData.lastWaterQuantityUsed, 
            //   fieldHumidity: systemData.userIrrigationFrequency
            // ),
          ],
        ),
      bottomNavigationBar: CustomNavigationBar(),
      );
  }
}
