import 'package:bmify/services/data.dart';
import 'package:bmify/styles/pallete.dart';
import 'package:bmify/styles/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AgeCard extends StatefulWidget {
  final Data dataService;
  AgeCard({Key? key, required this.dataService}) : super(key: key);

  @override
  _AgeCardState createState() => _AgeCardState();
}

class _AgeCardState extends State<AgeCard> {
  int age = 17;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "AGE",
            style: TextStyle(
              fontSize: 12,
              color: MyColors.kTextColour,
              fontWeight: FontWeight.normal,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                age.toString(),
                style: TextStyle(
                  fontSize: 38,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Y",
                style: labelTextStyle,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: FaIcon(
                  FontAwesomeIcons.minusCircle,
                  color: Colors.white,
                  size: 28,
                ),
                onPressed: () {
                  setState(() {
                    age--;
                    widget.dataService.age = age;
                  });
                },
              ),
              IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: FaIcon(
                  FontAwesomeIcons.plusCircle,
                  color: Colors.white,
                  size: 28,
                ),
                onPressed: () {
                  setState(() {
                    age++;
                    widget.dataService.age = age;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
