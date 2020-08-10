import 'package:flutter/material.dart';
import 'package:volunteers_project/models/volunteer.dart';

import 'components/body.dart';

class VolunteersScreen extends StatelessWidget {
  static final List<Volunteer> volunteers = [
    Volunteer(
      id: 'dbaksdkakshd',
      name: 'Simon',
      imageUrl: 'https://i.pravatar.cc/150?img=15',
      rating: 4.5,
      numRatings: 26,
      email: 'simon@gmail.com',
      phoneNumber: '(225) 528-0456',
      interests: ['Dogs', 'Animal Shelters', 'Helping', 'People'],
      tagline: 'Spread positivity to be positive',
      description: 'Web Developer working from the Bronx. Go Yankees!',
      socialLinks: {
        'instagram': 'www.instagram.com',
        'facebook': 'www.facebook.com',
        'twitter': 'www.twitter.com'
      },
      location: 'Bronx, NY',
      numProjectsOrganized: 3,
      numProjectsVolunteered: 5,
      numProjectsActive: 1,
    ),
    Volunteer(
      id: 'dbaksdkakshd',
      name: 'Nicole',
      imageUrl: 'https://i.pravatar.cc/150?img=16',
      rating: 4.7,
      numRatings: 14,
      email: 'nicole@gmail.com',
      phoneNumber: '(225) 528-0456',
      interests: ['People', 'Elderly', 'Housing', 'Disaster relief'],
      tagline: 'Spread positivity to be positive',
      description: 'Trying to be the positive change I want to see',
      socialLinks: {
        'instagram': 'www.instagram.com',
        'facebook': 'www.facebook.com',
        'twitter': 'www.twitter.com'
      },
      location: 'Shreveport, LA',
      numProjectsOrganized: 1,
      numProjectsVolunteered: 7,
      numProjectsActive: 3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Volunteers'),),
      body: Body(volunteers: volunteers),
    );
  }
}
