import 'package:fitness_tracker_app/pages/details/widgets/Stats.dart';
import 'package:fitness_tracker_app/pages/details/widgets/appbar.dart';
import 'package:fitness_tracker_app/pages/details/widgets/dates.dart';
import 'package:fitness_tracker_app/pages/details/widgets/graph.dart';
import 'package:fitness_tracker_app/pages/details/widgets/info.dart' hide Stats;
import 'package:fitness_tracker_app/pages/details/widgets/steps.dart';
import 'package:fitness_tracker_app/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MainAppBar(appBar: AppBar(),),
      body: const Column(
        children: [
          Dates(),
          Steps(),
          Graph(),
          Info(),
          Divider(height: 30,),
          Stats(),
          SizedBox(height: 30,),
          BottomNavigation(),
        ],
      ),
    );
  }
}
