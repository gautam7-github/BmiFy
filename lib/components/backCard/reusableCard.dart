import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResuableCard extends StatelessWidget {
  final Color currentColor;
  final Widget cardChild;
  ResuableCard({required this.currentColor, required this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: currentColor,
      ),
      child: cardChild,
    );
  }
}
