import 'package:flutter/widgets.dart';

class AppLayout {
  static Size getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
}