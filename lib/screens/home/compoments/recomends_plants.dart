import 'package:flutter/material.dart';
import 'package:treasury/constants.dart';

import '../../details/details_screen.dart';

class RecomendsPlant extends StatelessWidget {
  const RecomendsPlant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            country: 'Russian',
            image: 'assets/images/image_1.png',
            title: 'Samantha',
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DetailsScreen()));
            },
            price: 50,
          ),
          RecomendPlantCard(
            country: 'Brazil',
            image: 'assets/images/image_2.png',
            title: 'Angelica',
             press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DetailsScreen()));
            },
            price: 60,
          ),
          RecomendPlantCard(
            country: 'USA',
            image: 'assets/images/image_3.png',
            title: 'Babosa',
            press: () {},
            price: 80,
          ),
          RecomendPlantCard(
            country: 'Chile',
            image: 'assets/images/image_1.png',
            title: 'Mandacaru',
            press: () {},
            price: 150,
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.country,
      required this.price,
      required this.press})
      : super(key: key);

  final String image, title, country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(children: <Widget>[
        Image.asset(image),
        GestureDetector(
          onTap: press,
          child: Container(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23))
                ]),
            child: Row(
              children: <Widget>[
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: '$title\n'.toUpperCase(),
                      style: Theme.of(context).textTheme.button),
                  TextSpan(
                      text: country.toUpperCase(),
                      style: TextStyle(
                        color: kPrimaryColor.withOpacity(0.5),
                      ))
                ])),
                const Spacer(),
                Text(
                  'R\$ $price',
                  style: Theme.of(context)
                      .textTheme
                      .button
                      ?.copyWith(color: kPrimaryColor),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
