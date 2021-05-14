import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmify/styles/pallete.dart';

class GenderCard extends StatelessWidget {
  final IconData genderIcon;
  final String label;
  GenderCard({required this.genderIcon, required this.label});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FaIcon(
            genderIcon,
            size: 60,
            color: Colors.white,
          ),
          Text(
            label,
            style: TextStyle(
              color: MyColors.kTextColour,
              fontSize: 18.0,
            ),
          )
        ],
      ),
    );
  }
}
