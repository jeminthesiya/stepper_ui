import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper_ui/stepper/provider/stepper_provider.dart';
import 'package:stepper_ui/stepper/screen/stepper.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Stepper_provider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => stepper(),
        },
      ),
    ),
  );
}
