import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:portofolio_website_fatih/models/models.dart';

import '../../../constant.dart';

class CertificateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding - 14),
      child: Neumorphic(
        style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
          depth: 8,
          lightSource: LightSource.topLeft,
          intensity: 12
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: const FaIcon(
                      FontAwesomeIcons.check,
                      size: 15,
                      color: kPrimaryColor,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          myCertificate[index].title,
                          style: Theme.of(context).textTheme.overline!.copyWith(
                                color: kTextColor,
                                fontFamily: 'RobotoCondensed',
                              ),
                        ),
                        Text(
                          'by : ${myCertificate[index].by} , ${DateFormat.y().format(myCertificate[index].year)}',
                          style: Theme.of(context).textTheme.overline!.copyWith(
                                color: kTextColor,
                                fontFamily: 'RobotoCondensed',
                              ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              itemCount: myCertificate.length,
            ),
          ),
        ),
      ),
    );
  }
}
