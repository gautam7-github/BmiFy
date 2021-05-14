import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Data {
  int height = 157;
  int weight = 67;
  int age = 17;
  double fBMI = 0.0;
  Color? intrepColor = Colors.green;
  Map<String, Color> bmiRange = {
    "SevereThinness": Colors.white,
    "ModerateThinness": Colors.grey.shade400,
    "Mild Thinness": Colors.grey.shade900,
    "Normal": Colors.green,
    "OverWeight": Colors.yellow.shade500,
    "Obese": Colors.yellow.shade900,
    "KLTP": Colors.red
  };

//Category	BMI range - kg/m2
//Severe Thinness	< 16
//Moderate Thinness	16 - 17
//Mild Thinness	17 - 18.5
//Normal	18.5 - 25
//Overweight	25 - 30
//Obese Class I	30 - 35
//Obese Class II	35 - 40
//Obese Class III	> 40

  Data(this.height, this.weight, this.age);

  double calcBmi() {
    fBMI = ((weight / (height * height)) * 10000);
    print(fBMI);
    return double.parse(fBMI.toStringAsFixed(1));
  }

  String? getBmi() => calcBmi().toString();

  String? getInterpretation() {
    var _bmi = calcBmi();
    if (_bmi >= 40) {
      intrepColor = bmiRange["KLTP"];
      return 'Kindly leave the planet';
    }
    if (_bmi >= 26) {
      intrepColor = bmiRange["OverWeight"];
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      intrepColor = bmiRange["Normal"];
      return 'You have a normal body weight. Good job!';
    } else {
      intrepColor = bmiRange["ModerateThinness"];
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
