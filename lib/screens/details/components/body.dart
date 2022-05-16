import 'package:flutter/material.dart';
import 'package:treasury/constants.dart';
import 'package:treasury/screens/details/components/bottom_buttons.dart';
import 'package:treasury/screens/details/components/title_and_price.dart';

import 'image_and_icon.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcon(size: size),
          const TitleAndPrice(
            country: 'Russia',
            title: 'Angelica',
            price: 50,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          BottomButtons(size: size),
        ],
      ),
    );
  }
}
