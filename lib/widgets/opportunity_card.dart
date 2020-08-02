import 'package:flutter/material.dart';
import 'package:volunteers_project/constants.dart';
import 'package:volunteers_project/models/opportunity.dart';

class OpportunityCard extends StatelessWidget {
  final Opportunity opportunity;

  OpportunityCard(this.opportunity);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultMargin),
      child: Text(opportunity.name),
    );
  }
}