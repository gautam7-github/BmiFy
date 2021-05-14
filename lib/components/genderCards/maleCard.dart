import 'package:bmify/components/genderCards/genderCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MaleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GenderCard(genderIcon: FontAwesomeIcons.mars, label: "MALE");
  }
}
