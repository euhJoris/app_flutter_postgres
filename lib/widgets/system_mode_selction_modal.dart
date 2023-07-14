import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../data/database/database_helper.dart';
import '../utils/app_styles.dart';

enum Modes {auto, semi, manual}


// ###############################################

class SystemModeModal extends StatefulWidget {
  const SystemModeModal({super.key});

  @override 
  State<SystemModeModal> createState() => _systemModeModalState();
}


// ignore: camel_case_types
class _systemModeModalState extends State<SystemModeModal> {

  Modes? _systemMode = Modes.auto;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20)
        ),
        child: Container(
          padding: const EdgeInsets.all(15),
          color: const Color.fromARGB(255, 223, 228, 232),
          child: Column(
            children: [
              ListTile(
                title: Center(
                  child: Text(
                    "System Mode"
                  ),
                ),
              ),
              Gap(
                20,
                color: Colors.red
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      children: [
                        Text(
                          "Mode automatique",
                          style: Styles.textStyle
                        ),
                        const Gap(5),
                        Text(
                          "Description",
                          style: Styles.headLineStyle
                        ),
                      ]
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Radio<Modes>(
                            value: Modes.values[0],
                            groupValue: _systemMode,
                            onChanged: (Modes? value){
                              try {
                                setState(() {
                                  _systemMode = value;
                                  print(_systemMode);
                                });
                              } on Exception catch (e) {
                                print(e);
                              }
                            },
                          )
                        ]
                      )
                    ]
                  )
                ]
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      children: [
                        Text(
                          "Mode semi-automatique",
                          style: Styles.textStyle
                        ),
                        const Gap(5),
                        Text(
                          "Description",
                          style: Styles.headLineStyle
                        ),
                      ]
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Radio<Modes>(
                            value: Modes.values[1],
                            groupValue: _systemMode,
                            onChanged: (Modes? value) {
                              try {
                                setState(() {
                                  _systemMode = value;
                                  print(_systemMode);
                                });
                              } on Exception catch (e) {
                                print(e);
                              }
                            },
                          )
                        ]
                      )
                    ]
                  )
                ]
              ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      children: [
                        Text(
                          "Mode manuel",
                          style: Styles.textStyle
                        ),
                        const Gap(5),
                        Text(
                          "Description",
                          style: Styles.headLineStyle
                        ),
                      ]
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Radio<Modes>(
                            value: Modes.values[2],
                            groupValue: _systemMode,
                            onChanged: (Modes? value) {
                              try {
                                setState(() {
                                  _systemMode = value;
                                  print(_systemMode);
                                });
                              } on Exception catch (e) {
                                print(e);
                              }
                            },
                          )
                        ]
                      )
                    ]
                  )
                ]
              ),
              const Gap(30, color: Colors.red),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ElevatedButton(
                            child: Text(
                              "Annuler"
                            ),
                            onPressed: (){
                              Navigator.pop(context);
                            }
                          )
                        ]
                      ),
                    ),Expanded(
                      child: Column(
                        children: [
                          ElevatedButton(
                            child: Text(
                              "Valider"
                            ),
                            onPressed: () {
                              print("Success");                            
                            }
                          )
                        ]
                      ),
                    )
                  ]
                ),
              )
            ]
          )
        )
      )
    );
  }
}