import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:portofolio_website_fatih/constant.dart';
import 'package:portofolio_website_fatih/screens/resume/widgets/about_me.dart';
import 'package:portofolio_website_fatih/screens/resume/widgets/blur_glass.dart';
import 'package:portofolio_website_fatih/screens/resume/widgets/certificate_widget.dart';
import 'package:portofolio_website_fatih/screens/resume/widgets/organization_conclusion.dart';
import 'package:portofolio_website_fatih/screens/resume/widgets/organization_experience_widget.dart';
import 'package:portofolio_website_fatih/screens/resume/widgets/section_title.dart';
import 'package:portofolio_website_fatih/screens/resume/widgets/skills_widget.dart';

class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                width: 1400,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/background.jpg',
                        ),
                        fit: BoxFit.fill)),
                child: Container(
                  width: 500,
                  constraints:
                      const BoxConstraints(maxHeight: 350, minHeight: 350),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: const Alignment(0, 0),
                        child: Container(
                            constraints: const BoxConstraints(
                                maxHeight: 200, minHeight: 200),
                            child: BlurGlass()),
                      ),
                      Align(
                        alignment: const Alignment(0.0, 1),
                        child: SizedBox(
                          width: 250,
                          child: Image.asset(
                            'assets/images/profile.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: NeumorphicTheme.baseColor(context),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, -5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      color: Colors.black,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          const SectionTitle(text: 'Skills'),
                          SkillsWidget(),
                        ],
                      ),
                    ),
                    Container(
                      child: _size.width < 501
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  Container(
                                    width: 500,
                                    child: Column(
                                      children: <Widget>[
                                        const SectionTitle(text: 'About Me'),
                                        AboutMe(),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 500,
                                    child: Column(
                                      children: <Widget>[
                                        const SectionTitle(text: 'Certificate'),
                                        CertificateWidget(),
                                      ],
                                    ),
                                  )
                                ])
                          : Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      const SectionTitle(text: 'About Me'),
                                      AboutMe(),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      const SectionTitle(text: 'Certificate'),
                                      CertificateWidget(),
                                      Padding(
                                        padding: const EdgeInsets.all(
                                            kDefaultPadding),
                                        child: Neumorphic(
                                          style: NeumorphicStyle(
                                              shape: NeumorphicShape.concave,
                                              boxShape:
                                                  NeumorphicBoxShape.roundRect(
                                                      BorderRadius.circular(
                                                          12)),
                                              depth: -8,
                                              lightSource: LightSource.topLeft,
                                              surfaceIntensity: 20,
                                              intensity: 12),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: kPrimaryColor),
                                            padding: const EdgeInsets.all(
                                                kDefaultPadding),
                                            child: Text(
                                              '"Knowledge is of no value unless you put it into practice." -Anton Chekhow',
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .overline!
                                                  .copyWith(
                                                    color: Colors.white,
                                                    fontFamily:
                                                        'RobotoCondensed',
                                                    fontSize: 14,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                    ),
                    Container(
                      child: _size.width < 501
                          ? Column(
                              children: <Widget>[
                                const SectionTitle(
                                    text: 'Organization Experience'),
                                Container(
                                    width: 500,
                                    child: OrganizationConclusion()),
                                Container(
                                    width: 500,
                                    child: OrganizationExperienceWidget()),
                              ],
                            )
                          : Column(
                              children: <Widget>[
                                const SectionTitle(
                                    text: 'Organization Experience'),
                                Row(
                                  children: <Widget>[
                                    Expanded(child: OrganizationConclusion()),
                                    Expanded(
                                        child: OrganizationExperienceWidget()),
                                  ],
                                ),
                              ],
                            ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(5)),
                          depth: 8,
                          lightSource: LightSource.topLeft,
                          intensity: 12),
                      child: Container(
                        height: 30,
                        child: const Center(
                          child: Text(
                            'Made by Fatih Seida with love and full passionate',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
