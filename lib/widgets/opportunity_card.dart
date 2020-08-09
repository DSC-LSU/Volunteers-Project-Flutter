import 'package:flutter/material.dart';
import 'package:volunteers_project/constants.dart';
import 'package:volunteers_project/models/opportunity.dart';

class OpportunityCard extends StatelessWidget {
  final Opportunity opportunity;

  OpportunityCard(this.opportunity);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: kDefaultBorderRadius,
          boxShadow: kPrimaryBoxShadow,
          color: Colors.white),
      margin: kCardMargin,
      height: 300,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: kDefaultBorderRadius,
                    image: DecorationImage(
                      image: NetworkImage(opportunity.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(stops: [
                      .5,
                      1
                    ], colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(.9)
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(kDefaultMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        opportunity.uploadedTimestamp.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        opportunity.name,
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: kDefaultMargin / 2, horizontal: kDefaultMargin / 2),
            child: Row(
              children: [
                Expanded(
                    child: Icon(false ? Icons.star : Icons.star_border, color: Colors.yellow[700],)),
                Expanded(child: Icon(Icons.comment_outlined, color: Colors.blue[700],),),
                Expanded(
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: kDefaultMargin / 2,
                          vertical: kDefaultMargin / 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(kDefaultRadius),
                          ),
                          color: Theme.of(context).accentColor),
                      child: Text(
                        'Join',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
