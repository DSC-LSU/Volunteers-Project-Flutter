import 'package:flutter/material.dart';
import 'package:volunteers_project/components/custom_card.dart';
import 'package:volunteers_project/components/text_bubble.dart';
import 'package:volunteers_project/constants.dart';
import 'package:volunteers_project/models/volunteer.dart';

class VolunteerCard extends StatelessWidget {
  final Volunteer volunteer;

  VolunteerCard(this.volunteer);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: kCardPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(volunteer.imageUrl),
                radius: 30,
              ),
              SizedBox(width: kDefaultMargin/4,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          volunteer.name,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: '${volunteer.rating}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6),
                                  TextSpan(
                                      text: '/${volunteer.numRatings}',
                                      style:
                                          Theme.of(context).textTheme.subtitle2)
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Text(volunteer.location, style: Theme.of(context).textTheme.bodyText2,),
                    SizedBox(
                      height: kDefaultMargin / 2,
                    ),
                    Text(
                      volunteer.description,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          .copyWith(color: Colors.grey),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: kDefaultMargin / 2,
          ),
          Wrap(
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: kDefaultMargin/2,
            children: [
              Text(
                  '${volunteer.numProjectsActive} active',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1,
                ),
              Text(
                '${volunteer.numProjectsVolunteered} volunteered',
                style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.green),
              ),
              Text(
                '${volunteer.numProjectsOrganized} organized',
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
          SizedBox(
            height: kDefaultMargin / 2,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            runSpacing: kDefaultMargin/2,
            children: volunteer.interests
                .map((e) => TextBubble(
                      text: e,
                      color: Theme.of(context).accentColor,
                      textColor: Colors.white,
                    ))
                .toList(),
          ),
          SizedBox(
            height: kDefaultMargin / 2,
          ),
        ],
      ),
    );

    // return Container(
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.stretch,
    //     children: [
    //       Row(
    //         children: [
    //           CircleAvatar(
    //             backgroundImage: NetworkImage(volunteer.imageUrl),
    //           ),
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.stretch,
    //             children: [
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Text(
    //                     volunteer.name,
    //                     style: Theme.of(context).textTheme.headline5,
    //                   ),
    //                   FittedBox(
    //                     child: Row(
    //                       children: [
    //                         Icon(
    //                           Icons.star,
    //                           color: Colors.yellow[700],
    //                         ),
    //                         RichText(
    //                           text: TextSpan(children: [
    //                             TextSpan(
    //                                 text: '${volunteer.rating}',
    //                                 style:
    //                                     Theme.of(context).textTheme.headline6),
    //                             TextSpan(
    //                                 text: '/${volunteer.numRatings}',
    //                                 style:
    //                                     Theme.of(context).textTheme.bodyText1)
    //                           ]),
    //                         )
    //                       ],
    //                     ),
    //                   )
    //                 ],
    //               ),
    //               Text(
    //                 volunteer.tagline,
    //                 style: Theme.of(context)
    //                     .textTheme
    //                     .subtitle2
    //                     .copyWith(color: Colors.grey),
    //               )
    //             ],
    //           )
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }
}
