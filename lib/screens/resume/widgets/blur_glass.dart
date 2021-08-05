import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../constant.dart';

class BlurGlass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      width: 430,
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding - 5),
            width: double.infinity,
            color: Colors.white.withOpacity(0),
            child: Stack(
              children: [
                Align(
                  alignment: const Alignment(-1, -0.7),
                  child: Text(
                    'Fatih Seida',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.white,
                          fontFamily: 'Raffina',
                          fontSize: 24,
                        ),
                  ),
                ),
                Align(
                  alignment: const Alignment(1, -0.9),
                  child: SizedBox(
                    width: _size.width < 500 ? 120 : 140,
                    child: Text(
                      'Bachelor degree of Informatics Engineering',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.white,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(1, 0.8),
                  child: SizedBox(
                    width: _size.width < 500 ? 120 : 140,
                    child: Text(
                      'I am a bachelor degree graduate of Sunan Gunung Djati State Islamic University, majoring in Informatics Engineering with 3.51 GPA. Love problem-solving, enjoy developing and improving technologies. Eager and passionate to learn something new.',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.white,
                            fontFamily: 'RobotoCondensed',
                            fontSize: 10,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
