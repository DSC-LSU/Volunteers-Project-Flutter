import 'package:flutter/material.dart';
import 'package:volunteers_project/constants.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double width;
  final double height;
  final Color color;
  final BoxShape shape;
  final BorderRadius borderRadius;
  final Border border;

  CustomCard(
      {this.child,
      this.padding,
      this.margin,
      this.width,
      this.height,
      this.color,
      this.shape,
      this.borderRadius,
      this.border});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding ?? kCardPadding,
      margin: margin ?? kCardMargin,
      decoration: BoxDecoration(
        border: border,
        shape: shape ?? BoxShape.rectangle,
        boxShadow: kPrimaryBoxShadow,
        borderRadius: shape == BoxShape.circle
            ? null
            : borderRadius ?? kDefaultBorderRadius,
        color: color ?? Colors.white,
      ),
      child: child,
    );
  }
}
