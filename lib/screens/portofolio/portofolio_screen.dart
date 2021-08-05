import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:portofolio_website_fatih/models/models.dart';
import 'package:portofolio_website_fatih/screens/portofolio/widgets/photo_list_view.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constant.dart';
import 'header.dart';

class PortofolioScreen extends StatelessWidget {
  void _launchURL(_url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBadgeColor,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 900),
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(height: 70, child: Header()),
            const Divider(thickness: 1),
            Padding(
              padding: const EdgeInsets.only(
                  top: kDefaultPadding / 2,
                  left: kDefaultPadding * 2.5,
                  right: kDefaultPadding * 2,
                  bottom: kDefaultPadding / 2),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(12)),
                          depth: -4,
                          surfaceIntensity: 0.75,
                          lightSource: LightSource.topLeft,
                          intensity: 0.75),
                      child: Container(
                        color: kBadgeColor,
                        padding: EdgeInsets.only(
                            top: 20, bottom: 20, left: 20, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              myPortofolio[index].title,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                      color: Colors.white,
                                      fontFamily: 'RobotoCondensed',
                                      fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: kDefaultPadding),
                            LayoutBuilder(
                              builder: (context, constraints) => SizedBox(
                                width: constraints.maxWidth > 850
                                    ? constraints.maxWidth
                                    : constraints.maxWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      myPortofolio[index].description,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                            color: Colors.white,
                                            fontFamily: 'RobotoCondensed',
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: InkWell(
                                    onTap: () {
                                      _launchURL(myPortofolio[index].url);
                                    },
                                    child: Neumorphic(
                                      style: NeumorphicStyle(
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(12)),
                                        depth: 2,
                                        surfaceIntensity: 0.75,
                                        lightSource: LightSource.topLeft,
                                        intensity: 0.5,
                                        color: kBadgeColor,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          'Go To Project',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'RobotoCondensed',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: myPortofolio.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
