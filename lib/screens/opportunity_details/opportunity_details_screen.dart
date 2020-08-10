import 'package:flutter/material.dart';
import 'package:volunteers_project/constants.dart';
import 'package:volunteers_project/models/opportunity.dart';
import 'package:volunteers_project/screens/opportunities/components/gradient_image.dart';
import 'package:volunteers_project/screens/opportunities/components/opportunity_card.dart';
import 'package:volunteers_project/screens/opportunities/opportunities_screen.dart';
import 'package:volunteers_project/screens/opportunity_details/components/opportunity_summary.dart';
import 'package:volunteers_project/screens/volunteers/components/volunteer_card.dart';
import 'package:volunteers_project/screens/volunteers/volunteers_screen.dart';

class OpportunityDetailsScreen extends StatelessWidget {
  final Opportunity opportunity;

  OpportunityDetailsScreen({@required this.opportunity});

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
                  title: Text(
                    opportunity.name,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white),
                  ),
                  background: GradientImage(
                    imageUrl: opportunity.imageUrl,
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        icon: Icon(Icons.info),
                        text: 'Summary',
                      ),
                      Tab(
                        icon: Icon(Icons.supervised_user_circle),
                        text: 'Volunteers',
                      )
                    ],
                  ),
                ),
                pinned: true,
              ),
              // SliverList(
              //   delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
              //   return VolunteerCard(VolunteersScreen.volunteers[index]);
              // }, childCount: VolunteersScreen.volunteers.length),)
            ];
          },
          // body: Center(child: Text(opportunity.name)),
          body: SafeArea(
            child: TabBarView(
              children: [
                OpportunitySummary(opportunity: opportunity),
                ListView.builder(
                  itemBuilder: (context, index) {
                    return VolunteerCard(VolunteersScreen.volunteers[index]);
                  },
                  itemCount: VolunteersScreen.volunteers.length,
                )
                // ListView(
                //   children: [
                //     VolunteerCard(VolunteersScreen.volunteers[0])
                //   ],
                // )
                // ListView.builder(
                //   itemBuilder: (context, index) {
                //     return OpportunityCard(
                //         OpportunitiesScreen.opportunities[index]);
                //   },
                // )
              ],
            ),
          ),
          // body: Center(child: Text('ABC'),),
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
