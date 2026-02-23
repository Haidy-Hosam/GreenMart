import 'package:flutter/material.dart';

// عنواني في شجرة Flutter
Pushto(BuildContext context , Widget newpage){
  Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => newpage),
      );
}

