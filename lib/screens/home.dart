import 'package:bmify/services/data.dart';
import 'package:bmify/components/weightCard.dart';
import 'package:bmify/components/ageCard.dart';
import 'package:bmify/components/genderCards/maleCard.dart';
import 'package:bmify/components/genderCards/femaleCard.dart';
import 'package:bmify/screens/result.dart';
import 'package:bmify/styles/pallete.dart';
import 'package:bmify/components/backCard/reusableCard.dart';
import 'package:bmify/styles/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';

enum Gender { male, female }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender? userGender;
  int height = 157;
  var dataService = Data(157, 67, 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          HapticFeedback.vibrate();
                          userGender = Gender.male;
                        });
                      },
                      child: ResuableCard(
                        currentColor: userGender == Gender.male
                            ? MyColors.kActiveCardColour
                            : MyColors.kInactiveCardColour,
                        cardChild: MaleCard(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          HapticFeedback.vibrate();
                          userGender = Gender.female;
                        });
                      },
                      child: ResuableCard(
                        currentColor: userGender == Gender.female
                            ? MyColors.kActiveCardColour
                            : MyColors.kInactiveCardColour,
                        cardChild: FemaleCard(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ResuableCard(
                currentColor: MyColors.kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "HEIGHT",
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: hmeterTextStyle,
                        ),
                        Text(
                          "cm",
                          style: labelTextStyle,
                        ),
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      onChanged: (double newVal) {
                        setState(() {
                          height = newVal.toInt();
                          dataService.height = height;
                        });
                      },
                      activeColor: MyColors.kslideractiveColour,
                      inactiveColor: MyColors.ksliderInactiveColour,
                      min: 120.0,
                      max: 220.0,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ResuableCard(
                      currentColor: MyColors.kActiveCardColour,
                      cardChild: WeightCard(
                        dataService: dataService,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ResuableCard(
                      currentColor: MyColors.kActiveCardColour,
                      cardChild: AgeCard(
                        dataService: dataService,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              child: MaterialButton(
                onPressed: () {
                  HapticFeedback.vibrate();
                  Future.delayed(const Duration(milliseconds: 400), () {
                    Get.to(
                      ResultPage(
                        dataService: dataService,
                      ),
                    );
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "CALCULATE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        letterSpacing: 1,
                      ),
                    ),
                    FaIcon(FontAwesomeIcons.arrowCircleRight)
                  ],
                ),
                highlightColor: MyColors.kscaffColor,
                splashColor: Colors.transparent,
                color: MyColors.kBottomContainerColour,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
