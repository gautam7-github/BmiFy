import 'package:bmify/screens/Home.dart';
import 'package:bmify/styles/pallete.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text(
            //"BMIFY",
            //style: GoogleFonts.limelight(
            //textStyle: TextStyle(
            //fontSize: 72,
            //color: Colors.white,
            //),
            //),
            //),
            TextLiquidFill(
              text: 'BMIFY',
              waveColor: Colors.white,
              waveDuration: const Duration(
                milliseconds: 400,
              ),
            
              boxBackgroundColor: MyColors.kscaffColor,
              textStyle: TextStyle(
                fontSize: 72,
                fontWeight: FontWeight.bold,
              ),
              boxHeight: 100.0,
            ),
            Text(
              "Your one-stop destination to keep a track on your health.",
              softWrap: true,
              textAlign: TextAlign.center,
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          HapticFeedback.vibrate();
          Future.delayed(const Duration(milliseconds: 400), () {
            Get.off(
              () => HomePage(),
            );
          });
        },
        splashColor: Colors.transparent,
        tooltip: "goto calculator screen",
        child: FaIcon(
          FontAwesomeIcons.calculator,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
