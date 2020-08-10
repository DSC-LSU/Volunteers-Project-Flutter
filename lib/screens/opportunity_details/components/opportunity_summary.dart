import 'package:flutter/material.dart';

import 'package:volunteers_project/models/opportunity.dart';

class OpportunitySummary extends StatelessWidget {
  final Opportunity opportunity;

  const OpportunitySummary({
    this.opportunity,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(opportunity.name)
    ],);
  }
}
