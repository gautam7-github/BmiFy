import 'package:bmify/services/data.dart';
import 'package:bmify/styles/pallete.dart';
import 'package:bmify/styles/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightCard extends StatefulWidget {
  final Data dataService;
  WeightCard({Key? key, required this.dataService}) : super(key: key);

  @override
  _WeightCardState createState() => _WeightCardState();
}

class _WeightCardState extends State<WeightCard> {
  int weight = 67;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "WEIGHT",
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
                weight.toString(),
                style: TextStyle(
                  fontSize: 38,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Kg",
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
                    HapticFeedback.selectionClick();
                    weight--;
                    widget.dataService.weight = weight;
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
                    HapticFeedback.selectionClick();
                    weight++;
                    widget.dataService.weight = weight;
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
