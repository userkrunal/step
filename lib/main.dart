import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:step/home.dart';
import 'package:step/provider/step_provider.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => StepProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => Home_Screen(),
        },
      ),
    )
  );
}