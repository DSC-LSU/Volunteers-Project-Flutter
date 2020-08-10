import 'package:flutter/material.dart';

import 'package:volunteers_project/constants.dart';

class GradientImage extends StatelessWidget {
  final String imageUrl;
  final List<Widget> stackChildren;

  const GradientImage({
    @required this.imageUrl,
    this.stackChildren = const [],
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl ?? ''),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              stops: [0.5, 1.0],
              colors: [Colors.transparent, Colors.black.withOpacity(.9)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
      ),
    ];

    stackChildren.map((e) => widgets.add(e)).toList();

    return Stack(
      children: widgets,
      // children: [
      // Container(
      //   padding: EdgeInsets.all(kDefaultMargin),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text(
      //         timeago.format(opportunity.uploadedTimestamp),
      //         style: Theme.of(context)
      //             .textTheme
      //             .subtitle2
      //             .copyWith(color: Colors.white),
      //       ),
      //       SizedBox(
      //         height: kDefaultMargin / 4,
      //       ),
      //       Text(
      //         opportunity.name,
      //         style: Theme.of(context)
      //             .textTheme
      //             .headline4
      //             .copyWith(color: Colors.white),
      //       )
      //     ],
      //   ),
      // ),
      // Align(
      //   alignment: Alignment.bottomRight,
      //   child: Padding(
      //     padding: EdgeInsets.all(kDefaultMargin),
      //     child: RichText(
      //       text: TextSpan(
      //         children: [
      //           TextSpan(
      //             style: Theme.of(context)
      //                 .textTheme
      //                 .headline4
      //                 .copyWith(color: Colors.white),
      //             text: '${opportunity.currentCount}',
      //           ),
      //           TextSpan(
      //             text: '/ ${opportunity.requiredCount}',
      //             style: Theme.of(context)
      //                 .textTheme
      //                 .subtitle2
      //                 .copyWith(color: Colors.white),
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      // )
      // ],
    );
  }
}
