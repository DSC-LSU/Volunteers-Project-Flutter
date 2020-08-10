import 'package:flutter/material.dart';
import 'package:volunteers_project/constants.dart';
import 'package:volunteers_project/models/opportunity.dart';

class OpportunityDetailsScreen extends StatelessWidget {
  final Opportunity opportunity;

  const OpportunityDetailsScreen({@required this.opportunity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(opportunity.name),
                  background: Image.network(opportunity.imageUrl),
                ),
                // bottom: TabBar(
                //   labelColor: Colors.black87,
                //   unselectedLabelColor: Colors.grey,
                //   tabs: [
                //     Tab(
                //       icon: Icon(Icons.info),
                //       text: 'Tab 1',
                //     ),
                //     Tab(
                //       icon: Icon(Icons.lightbulb_outline),
                //       text: 'Tab 2',
                //     )
                //   ],
                // ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        icon: Icon(Icons.info),
                        text: 'Tab 1',
                      ),
                      Tab(
                        icon: Icon(Icons.lightbulb_outline),
                        text: 'Tab 2',
                      )
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: Text(opportunity.name),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _SliverAppBarDelegate(this._tabBar);

  @override
  // TODO: implement maxExtent
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      child: _tabBar,
    );
  }
}
