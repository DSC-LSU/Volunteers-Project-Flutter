import 'package:flutter/material.dart';
import 'package:volunteers_project/models/opportunity.dart';
import 'package:volunteers_project/screens/opportunities/components/opportunity_card.dart';

class OpportunitiesScreen extends StatelessWidget {
  static final List<Opportunity> opportunities = [
    Opportunity(
        id: 'adnaksjdnkjsd',
        name: 'Hospital',
        currentCount: 14,
        requiredCount: 25,
        uploadedTimestamp: DateTime(2020, 7, 30),
        imageUrl:
            'https://images.unsplash.com/photo-1588623358844-fd118c056dfc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Opportunity(
        name: 'Dog Shelter',
        currentCount: 14,
        requiredCount: 25,
        uploadedTimestamp: DateTime(2020, 7, 30),
        imageUrl:
            'https://images.unsplash.com/photo-1494947665470-20322015e3a8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
    Opportunity(
        name: 'Airport',
        currentCount: 14,
        requiredCount: 25,
        uploadedTimestamp: DateTime(2020, 7, 30),
        imageUrl:
            'https://images.unsplash.com/photo-1561101904-da649fcbf03f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opportunities', style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.white)),
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
