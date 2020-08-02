import 'package:flutter/material.dart';
import 'package:volunteers_project/models/opportunity.dart';
import 'package:volunteers_project/widgets/opportunity_card.dart';

class OpportunitiesScreen extends StatelessWidget {
  final List<Opportunity> opportunities = [
    Opportunity(name: 'Hospital'),
    Opportunity(name: 'Dog Shelter'),
    Opportunity(name: 'Airport')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opportunities'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return OpportunityCard(opportunities[index]);
        },
        itemCount: opportunities.length,
      ),
    );
  }
}
