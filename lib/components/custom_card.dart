import 'package:flutter/material.dart';
import 'package:volunteers_project/constants.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color color;

  CustomCard({this.child, this.padding, this.margin, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? kCardPadding,
      margin: margin ?? kCardMargin,
      decoration: BoxDecoration(
        boxShadow: kPrimaryBoxShadow,
        borderRadius: kDefaultBorderRadius,
        color: color ?? Colors.white,
      ),
      child: child,
    );
  }
}
