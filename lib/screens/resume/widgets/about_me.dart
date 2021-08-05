import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:portofolio_website_fatih/models/models.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constant.dart';

class AboutMe extends StatelessWidget {
  void _launchURL(_url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                  bottom: kDefaultPadding,
                  left: kDefaultPadding,
                  right: kDefaultPadding),
              child: Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.flat,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: 8,
                    lightSource: LightSource.topLeft,
                    intensity: 12),
                child: InkWell(
                  onTap: () {
                    if (myContact[index].url != null) {
                      _launchURL(myContact[index].url);
                    }
                  },
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 7,
                              left: kDefaultPadding / 4,
                              right: kDefaultPadding,
                              bottom: 7),
                          child: Neumorphic(
                            style: NeumorphicStyle(
                                shape: NeumorphicShape.flat,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(5)),
                                depth: 8,
                                lightSource: LightSource.topLeft,
                                intensity: 12),
                            child: Container(
                              decoration: BoxDecoration(color: kPrimaryColor),
                              padding: EdgeInsets.all(5),
                              child: Icon(
                                myContact[index].icon,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '${myContact[index].value}',
                            style:
                                Theme.of(context).textTheme.caption!.copyWith(
                                      color: kTextColor,
                                      fontFamily: 'RobotoCondensed',
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: myContact.length),
    );
  }
}
