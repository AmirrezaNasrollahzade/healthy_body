// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Data/ResultData.dart';
import '../Screen/ResultScreen.dart';

class ButtonCalculate extends StatelessWidget {
  const ButtonCalculate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Provider.of<ResultData>(context, listen: false).functionResult();
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const ResultScreen())));
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green.shade300,
          ),
          child: const Text(
            'Click',
            style: TextStyle(
                color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
