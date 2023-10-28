// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Constant.dart';

class SliderCustom extends StatefulWidget {
  const SliderCustom({Key? key}) : super(key: key);

  @override
  State<SliderCustom> createState() => _SliderCustomState();
}

class _SliderCustomState extends State<SliderCustom> {
  double height = 100;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: Colors.purple.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'HEIGHT',
              style: kTextStyleInfo,
            ),
            Text(
              '${height.toInt()} cm',
              style: kTextStyleInfo.copyWith(color: Colors.white, fontSize: 35),
            ),
            Slider(
              activeColor: Colors.green,
              inactiveColor: Colors.orange,
              // divisions: 10,
              label: 'set volume value',
              value: height,
              onChanged: (double newValue) {
                setState(() {
                  height = newValue;
                });
              },
              max: 300,
              min: 40,
            )
          ],
        ),
      ),
    );
  }
}
