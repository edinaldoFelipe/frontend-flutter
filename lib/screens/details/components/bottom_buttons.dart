import 'package:flutter/material.dart';

import '../../../constants.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
               shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
            ),
            onPressed: () {},
            child: const Text(
              "Buy Now",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 84,
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Description",
                )),
          ),
          //     child: FlatButton(
          //   onPressed: () {},
          //   child: Text(
          //     "Description",
          //   ),
          // )
        )
      ],
    );
  }
}
