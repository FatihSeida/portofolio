import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:lottie/lottie.dart';

import '../../../constant.dart';

class OrganizationConclusion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Neumorphic(
        style: NeumorphicStyle(
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
            depth: 8,
            lightSource: LightSource.topLeft,
            intensity: 12),
        child: Container(
          margin: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Lottie.asset('assets/images/27649-lets-chat.zip',
                  width: 250, height: 150),
              Text(
                'It\'s a fabulous journey being active in student organizations, i had many things that i learned and maybe i will never found that in other places. Human relationship problems is the most challenging things that i\'ve ever found, because its not about we deliver the message to others, but we must understand, and arrange/choose the words as well as possible to be more persuasive.',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: kPrimaryColor,
                      fontFamily: 'RobotoCondensed',
                      fontSize: 14,
                    ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
