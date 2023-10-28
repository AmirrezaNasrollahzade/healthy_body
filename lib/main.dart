import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Data/ResultData.dart';
import 'Screen/CalculateScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ResultData();
      },
      child: MaterialApp(
        title: 'BMI Calculator',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.purple.shade700,
          primarySwatch: Colors.blue,
        ),
        home: CalculateScreen(),
      ),
    );
  }
}
