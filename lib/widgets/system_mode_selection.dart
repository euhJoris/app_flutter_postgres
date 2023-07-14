import 'package:firestore2_app/widgets/system_mode_selction_modal.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

import '../data/database/database_helper.dart';
import '../data/repositories/system_repository.dart';
import '../utils/app_styles.dart';
import '../utils/globals.dart';


/// The function `system_text_to_show` takes a system mode as input and returns the corresponding text
/// representation of that mode.
/// 
/// Args:
///   systemMode: The systemMode parameter is a string that represents the current mode of the system.
/// It can have one of the following values: "auto", "semi", "manual", or "standby".
/// 
/// Returns:
///   a string that represents the system mode based on the input parameter `systemMode`.
String system_text_to_show(systemMode) {
  String text;
  systemMode == "auto"
      ? text = "Mode automatique"
      : systemMode == "semi"
          ? text = "Mode Semi-assisté"
          : systemMode == "manual"
              ? text = "Mode Manuel"
              : text = "Mode Veille";

  return text;
}


class SystemModeSelection extends StatefulWidget {
  const SystemModeSelection({super.key});

  @override
  State<SystemModeSelection> createState() => _SystemModeSelectionState();
}

class _SystemModeSelectionState extends State<SystemModeSelection> {
  @override
  Widget build(BuildContext context) {
    final globals = Globals(context);

    SystemModeSettings systemSettings = SystemModeSettings(true, false);

    return SizedBox(
      child: Container(
          width: globals.minScreen.width,
          padding: const EdgeInsets.all(10),
          color: Color(0xFF555555),
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // StreamBuilder<QuerySnapshot>(
                    //   stream: users,
                    //   builder: (
                    //     BuildContext context,
                    //     AsyncSnapshot<QuerySnapshot> snapshot){
                    //       if(snapshot.hasError){
                    //         print("Error");
                    //       }

                    //       if(snapshot.connectionState == ConnectionState.waiting){
                    //         return Text("Loading");
                    //       }

                    //       final data = snapshot.requireData;

                    //       return Listview.builder(
                    //         itemCount: data.size,
                    //         itemBuilder: (context, index){
                    //           return Text(${data.docs[index]['name']})
                    //         }
                    //       );
                    //   }
                    // ),
                    Text(
                      'text',style: Styles.textStyle2,
                    ),
                    // FirestoreConnect(),
                    /// The `IconButton` widget is creating a button with an icon wich open the modal for system mode selection.
                    IconButton(
                      iconSize: 24, 
                      icon: Icon(FluentSystemIcons.ic_fluent_settings_regular),
                      onPressed: (){
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context){
                            return SystemModeModal();
                          }
                        );
                      }
                    )
                  ],
                ),
              )
            ],
          )
      )
    );
  }
}