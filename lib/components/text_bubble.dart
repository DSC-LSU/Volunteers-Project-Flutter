import 'package:flutter/material.dart';
import 'package:volunteers_project/components/custom_Card.dart';
import 'package:volunteers_project/constants.dart';

class TextBubble extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;

  TextBubble({this.text, this.color, this.textColor});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: kCardPadding,
      margin: EdgeInsets.symmetric(horizontal: kDefaultMargin / 4),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1.copyWith(color: textColor),
      ),
      color: color,
    );
  }
}
