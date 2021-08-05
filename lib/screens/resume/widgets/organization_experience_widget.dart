import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';

import 'package:portofolio_website_fatih/models/models.dart';
import '../../../constant.dart';

class OrganizationExperienceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: 8,
                lightSource: LightSource.topLeft,
                intensity: 12
              ),
              child: Container(
                width: 420,
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${myOrganization[index].position} | ${myOrganization[index].organizationName} | ${DateFormat.y().format(myOrganization[index].year)}',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            color: kPrimaryColor,
                            fontFamily: 'RobotoCondensed',
                          ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: myOrganization.length,
      ),
    );
  }
}
