import 'package:flutter/material.dart';

import 'package:volunteers_project/components/custom_card.dart';
import 'package:volunteers_project/constants.dart';

class DayButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function onPressed;

  const DayButton({this.text, this.isSelected = false, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CustomCard(
        width: 40,
        height: 40,
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(color: isSelected ? Colors.white : Colors.black87),
          ),
        ),
        shape: BoxShape.circle,
        color: isSelected ? Theme.of(context).accentColor : null,
        border: Border.all(color: Theme.of(context).accentColor),
        margin: EdgeInsets.symmetric(horizontal: kDefaultMargin / 4),
      ),
    );
  }
}
