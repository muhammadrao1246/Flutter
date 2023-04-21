import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home: Center(
          child: Text(
            "\n\n\n\n\nMY FIRST FLUTTER APP",
            style: TextStyle(
              color: Colors.green,
              backgroundColor: Colors.white,
              letterSpacing: 2.0,
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w200,
            ),
          )
      )
  )
  );
}
