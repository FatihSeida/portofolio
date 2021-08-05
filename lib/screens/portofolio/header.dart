import 'package:flutter/material.dart';

import '../../constant.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: kDefaultPadding * 3),
          child: Text(
            'My Portofolio',
            style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.white,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
