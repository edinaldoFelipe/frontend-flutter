import 'package:flutter/material.dart';
import 'package:treasury/constants.dart';
import 'package:treasury/screens/home/compoments/featured_plants.dart';
import 'package:treasury/screens/home/compoments/recomends_plants.dart';
import 'package:treasury/screens/home/compoments/title_with_more_btn.dart';

import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HearderWithSearchBox(
            size: size,
            key: UniqueKey(),
          ),
          TitleWithMoreButton(
            title: "Recommended",
            press: () {},
          ),
          const RecomendsPlant(),
          TitleWithMoreButton(
            title: 'Featured Plants',
            press: () {},
          ),
          const FeaturedPlant(),
          const SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}