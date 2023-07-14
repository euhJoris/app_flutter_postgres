import 'package:flutter/widgets.dart';

class Globals {
  final BuildContext context;

  Globals(this.context);

  Size get minScreen {
    final screenSize = MediaQuery.of(context).size;
    return Size(screenSize.width.toDouble() - 60.0, screenSize.height);
  }
}


