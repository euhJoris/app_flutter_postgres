import 'package:flutter/material.dart';

import '../widgets/appBar_Custom.dart';
import '../widgets/custom_navigation_bar.dart';

class UserSettings extends StatefulWidget {
  const UserSettings({super.key});

  @override
  State<UserSettings> createState() => _UserSettingsState();
}

class _UserSettingsState extends State<UserSettings> {

  @override
  Widget build(BuildContext context) {
    print('UserSettings');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // remove back button in appbar.
        flexibleSpace: const  AppBarCustom(
          showSecondColumn: false,
          thirdColumnText: 'sbcxcxc sdbs'
        ),
      ),
      body: SingleChildScrollView(
        child:Center(
          child: Text('User settings'),
        )
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}