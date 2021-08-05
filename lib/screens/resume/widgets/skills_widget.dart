import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'dart:math' as math;

import 'package:portofolio_website_fatih/models/models.dart';
import '../../../constant.dart';

class SkillsWidget extends StatefulWidget {
  @override
  _SkillsWidgetState createState() => _SkillsWidgetState();
}

class _SkillsWidgetState extends State<SkillsWidget> {
  late PageController pageController;
  double pageOffset = 2;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.4, initialPage: 2);
    pageController.addListener(() {
      setState(() => pageOffset = pageController.page!);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 160, minHeight: 135),
      child: PageView.builder(
        controller: pageController,
        itemBuilder: (BuildContext context, int index) {
          final sumOffset = pageOffset - index;
          double gauss =
              math.exp(-(math.pow((sumOffset.abs() - 0.5), 2) / 0.08));
          return Padding(
            padding: const EdgeInsets.only(
                left: kDefaultPadding / 2,
                right: kDefaultPadding / 2,
                bottom: kDefaultPadding,
                top: kDefaultPadding),
            child: Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  depth: 8,
                  lightSource: LightSource.topLeft,
                  intensity: 12),
              child: InkWell(
                customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onTap: () {},
                child: Transform.translate(
                  offset: Offset(-32 * gauss * sumOffset.sign, 0),
                  child: Container(
                    height: 120,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            mySkills[index].image,
                            height: 20,
                          ),
                          Transform.translate(
                            offset: Offset(8 * sumOffset, 0),
                            child: Text(
                              mySkills[index].title,
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: kTextColor,
                                    fontFamily: 'RobotoCondensed',
                                  ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(8 * sumOffset, 0),
                            child: Text(
                              mySkills[index].experience!,
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .overline!
                                  .copyWith(
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
              ),
            ),
          );
        },
        itemCount: mySkills.length,
      ),
    );
  }
}
