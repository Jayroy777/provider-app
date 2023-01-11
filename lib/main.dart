import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateapp/myapp.dart';
import 'package:stateapp/providers/addclass.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AddClass(),
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  ));
}
