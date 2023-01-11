import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateapp/providers/addclass.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    Timer.periodic(Duration(milliseconds: 1), (timer) {
      final temp1 = Provider.of<AddClass>(context, listen: false);
      temp1.incre();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final temp = Provider.of<AddClass>(context, listen: false);
    debugPrint("Main Widget Build");
    return Scaffold(
      body: SafeArea(child: Center(child: Consumer<AddClass>(
        builder: (context, value, child) {
          debugPrint("Only This Text Widget Build");
          return Text(
            value.i.toString(),
            style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          );
        },
      ))),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            temp.incre();
          },
          child: const Icon(Icons.add)),
    );
  }
}
