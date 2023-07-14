import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../widgets/appBar_Custom.dart';
import '../widgets/card_view.dart';
import '../widgets/system_mode_selection.dart';

// CONVERT TO STATEFULL WIDGET
class DetailScreen extends StatefulWidget {
    const DetailScreen({super.key});

    @override
    State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
    @override
    Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        appBar: AppBar(
            flexibleSpace: const AppBarCustom(
              // showFirstColumn: false,
                firstColumnText: 'qqw',
                thirdColumnText: 'tyu'),
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
                const Gap(45),
                Container(
                    child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text("Mon champ", style: Styles.textStyle),
                            const Gap(5),
                            Text("de quelque chose", style: Styles.headLineStyle),
                        ]),
                    Container(
                        height: 50,
                        width: 50,
                        color: Colors.lightBlue,
                        child: const Icon(
                            FluentSystemIcons.ic_fluent_settings_dev_regular))
                    ],
                )
                ])),
                const Gap(30),
                const Row(
                children: [
                  // CardView(
                  //   _averrageIrrigationTime: 
                  // ),
                ],
                ),
                const Gap(30),
                const Row(
                children: [
                    SystemModeSelection(),
                ],
                ),
                const Gap(50),
                const Row(children: [
                Column(children: [Text('Chart here')])
                ])
            ]));
    }
}
