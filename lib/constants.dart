import 'package:flutter/cupertino.dart';

const double kDefaultMargin = 20;

const double kDefaultRadius = 20;
const BorderRadius kDefaultBorderRadius =
    BorderRadius.all(Radius.circular(kDefaultRadius));

final List<BoxShadow> kPrimaryBoxShadow = [
  BoxShadow(
      offset: Offset(0, 10),
      color: Color(0xFFD3D3D3).withOpacity(.84),
      blurRadius: 33)
];

final EdgeInsets kCardMargin = EdgeInsets.symmetric(
    horizontal: kDefaultMargin, vertical: kDefaultMargin / 2);
final EdgeInsets kCardPadding = EdgeInsets.all(kDefaultMargin / 2);
