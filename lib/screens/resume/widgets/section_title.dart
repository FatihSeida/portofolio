import 'package:flutter/material.dart';

import '../../../constant.dart';

class SectionTitle extends StatelessWidget {
  final String text;

  const SectionTitle({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 35, minHeight: 35),
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(left: kDefaultPadding * 2, top: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6!.copyWith(
            color: kTextColor,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
