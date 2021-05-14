import 'package:bmify/services/data.dart';
import 'package:bmify/styles/pallete.dart';
import 'package:bmify/styles/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatelessWidget {
  final Data dataService;
  const ResultPage({Key? key, required this.dataService}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.kscaffColor,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Future.delayed(const Duration(milliseconds: 400), () {
            Get.back();
          });
        },
        label: Text(
          "ReCalculate",
          style: BMITextStyle,
        ),
        icon: FaIcon(FontAwesomeIcons.calculator),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Your BMI is",
              style: GoogleFonts.limelight(
                textStyle: BMITextStyle,
              ),
            ),
            Text(
              dataService.getInterpretation()!,
              softWrap: true,
              textAlign: TextAlign.center,
              style: GoogleFonts.raleway(
                textStyle:
                    BMITextStyle.copyWith(color: dataService.intrepColor),
              ),
            ),
            Text(
              dataService.getBmi()!,
              softWrap: true,
              style: hmeterTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
