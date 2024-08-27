
import 'package:flutter/material.dart';

class SocialElevatedButtonTheme{
  SocialElevatedButtonTheme._();


  static ElevatedButtonThemeData elevatedButtonLightTheme = ElevatedButtonThemeData(
    style:ButtonStyle(
      elevation: const WidgetStatePropertyAll(0),
      foregroundColor: const WidgetStatePropertyAll(Colors.black),
      backgroundColor: const WidgetStatePropertyAll(Colors.blue),
      side: const WidgetStatePropertyAll(BorderSide(color: Colors.blue)),
      padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 10)),
      textStyle: const WidgetStatePropertyAll(TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold)),
      shape: WidgetStatePropertyAll(BeveledRectangleBorder(borderRadius: BorderRadius.circular(12))),
    )
  );


 static ElevatedButtonThemeData elevatedButtonDarkTheme = ElevatedButtonThemeData(
    style:ButtonStyle(
      elevation: const WidgetStatePropertyAll(0),
      foregroundColor: const WidgetStatePropertyAll(Colors.black),
      backgroundColor: const WidgetStatePropertyAll(Colors.blue),
      side: const WidgetStatePropertyAll(BorderSide(color: Colors.blue)),
      padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 10)),
      textStyle: const WidgetStatePropertyAll(TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold)),
      shape: WidgetStatePropertyAll(BeveledRectangleBorder(borderRadius: BorderRadius.circular(12))),
    )
  );


}