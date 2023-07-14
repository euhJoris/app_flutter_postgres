
import 'package:flutter/material.dart';

enum Modes {auto, semi, manual}

/// The SystemMode class represents a system mode with properties for the current mode and a callback
/// function for mode changes.
class SystemMode {
  Modes systemMode;
  Modes onModeChange;
  
  SystemMode({this.onModeChange = Modes.auto, this.systemMode = Modes.auto});

  get getSystemMode => this.systemMode;

  set setSystemMode( systemMode) => this.systemMode = systemMode;

  get getOnModeChange => this.onModeChange;

  set setOnModeChange(Modes value) => onModeChange = value;

    
}


class SystetemSelection extends StatefulWidget {
  const SystetemSelection({super.key});

  @override
  State<SystetemSelection> createState() => _systetemSelectionState();
}

// ignore: camel_case_types
class _systetemSelectionState extends State<SystetemSelection> {

  SystemMode modeStatus =SystemMode();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              ElevatedButton(
                child: Text(
                  "Auto"
                ),
                onPressed: (){
                  print(modeStatus);
                }
              )
            ]
          ),
          Column(
            children: [
              ElevatedButton(
                child: Text(
                  "Auto"
                ),
                onPressed: (){
                  
                }
              )
            ]
          ),
          Column(
            children: [
              ElevatedButton(
                child: Text(
                  "Auto"
                ),
                onPressed: (){
                  
                }
              )
            ]
          )
        ]
      )
    );
  }


}
