// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../components/ButtonCalculate.dart';
import '../components/CardCustom.dart';
import '../components/SliderCustom.dart';
import '../components/weight_custom.dart';

class CalculateScreen extends StatefulWidget {
  const CalculateScreen({Key? key}) : super(key: key);

  @override
  State<CalculateScreen> createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {
  bool _stateButton1 = true;
  bool _stateButton2 = true;
  @override
  Widget build(BuildContext context) {
    double heightSize = MediaQuery.of(context).size.height;
    double widthSize = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //row 1 => male and female
              SizedBox(
                height: heightSize * 0.15,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        print("male");
                        setState(() {
                          if (_stateButton1) {
                            _stateButton1 = false;
                            _stateButton2 = true;
                          } else {
                            _stateButton1 = true;
                            _stateButton2 = false;
                          }
                        });
                      },
                      child: Container(
                        width: widthSize * 0.4,
                        child: CardCustom(
                          stateButton: _stateButton1,
                          titleCard: 'MALE',
                          iconData: Icons.male,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("female");
                        setState(() {
                          if (_stateButton2) {
                            _stateButton2 = false;
                            _stateButton1 = true;
                          } else {
                            _stateButton2 = true;
                            _stateButton1 = false;
                          }
                        });
                      },
                      child: Container(
                        width: widthSize * 0.4,
                        child: CardCustom(
                          stateButton: _stateButton2,
                          titleCard: 'FEMALE',
                          iconData: Icons.female,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //row 2 => Slider
              SizedBox(
                height: heightSize * 0.3,
                width: double.infinity,
                child: SliderCustom(),
              ),
              //row 3 => WEIGHT add and remove button KGText
              SizedBox(
                height: heightSize * 0.3,
                width: double.infinity,
                child: WeightCustom(),
              ),
              //row 4 => Button Calculate
              const Expanded(
                child: ButtonCalculate(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
