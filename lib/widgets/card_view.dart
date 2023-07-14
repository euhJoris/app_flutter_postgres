import 'dart:js_interop';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../utils/globals.dart';

class CardView extends StatefulWidget {

  final int averrageIrrigationTime;
  final int waterVolumeUsed;
  final int fieldHumidity;

  const CardView({
    this.averrageIrrigationTime = 0,
    this.waterVolumeUsed = 0,
    this.fieldHumidity = 0,
    super.key}
  );

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    final globals = Globals(context);

    return Container (
        width: globals.minScreen.width,
        padding: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
          bottom: 15,
        ),
        color: Color(0xFF555555),
        child: Column(
          children: [
            Row(
              children: [
                Text("Mesures de la journée", style: Styles.containerTitle),
              ],
            ),
            const Gap(33),
            Row(
              children: [
                Expanded(
                  child: Container (
                    color: Colors.blue,
                    child: Column(
                      children: [
                        Text(
                          "Quantité d'eau consommée",
                          style: Styles.textStyle
                        ),
                        const Gap(25),
                        Text(
                          "${!widget.waterVolumeUsed.isNull ? widget.waterVolumeUsed : '--'}",
                          style: Styles.textStyle
                        ),
                      ]
                    ),
                  )
                ),
                Expanded(
                  child: Container (
                    color: Colors.orange,
                    child: Column(
                      children: [
                        Text(
                          "Humidité du sol",
                          style: Styles.textStyle
                        ),
                        const Gap(25),
                        Text(
                          "${!widget.fieldHumidity.isNull ? widget.fieldHumidity  : '--'} %",
                          style: Styles.textStyle
                        ),
                      ]
                    ),
                  )
                ),
                Expanded(
                  child: Container (
                    color: Colors.green,
                    child: Column(
                      children: [
                        Text(
                          "Temps moyen d'arrosage ",
                          style: Styles.textStyle
                        ),
                        const Gap(25),
                        Text(
                          "${!widget.averrageIrrigationTime.isNull ? widget.averrageIrrigationTime : '--'} min.",
                          style: Styles.textStyle
                        ),
                      ]
                    ),
                  )
                ),
              ],
            )
          ],
        )
    );
  }
}
