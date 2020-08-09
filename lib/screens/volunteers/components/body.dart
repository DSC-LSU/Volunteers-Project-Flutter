import 'package:flutter/material.dart';
import 'package:volunteers_project/models/volunteer.dart';
import 'package:volunteers_project/screens/volunteers/components/volunteer_card.dart';

class Body extends StatelessWidget {
  final List<Volunteer> volunteers;

  Body({this.volunteers});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return VolunteerCard(volunteers[index]);
    }, itemCount: volunteers.length,);
  }
}