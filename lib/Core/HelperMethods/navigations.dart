import 'package:flutter/material.dart';

// عنواني في شجرة Flutter
Pushto(BuildContext context , Widget newpage){
  Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => newpage),
      );
}

