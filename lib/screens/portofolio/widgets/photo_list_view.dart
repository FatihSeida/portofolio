import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:portofolio_website_fatih/models/portofolioItems.dart';

import '../../../constant.dart';

class PhotoListView extends StatelessWidget {
  final List<String> photoUrl;

  const PhotoListView({required this.photoUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        builder: (context, myPortofolio) =>
            myPortofolio.connectionState == ConnectionState.waiting
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, ix) {
                      return OpenContainer<bool>(
                        closedBuilder: (context, openContainer) {
                          return InkWell(
                            onTap: openContainer,
                            child: Container(
                              margin: const EdgeInsets.all(kDefaultPadding / 2),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  photoUrl[ix],
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          );
                        },
                        openBuilder: (context, openContainer) {
                          return GestureDetector(
                            onTap: Navigator.of(context).pop,
                            child: Scaffold(
                              body: Center(
                                child: Container(
                                  width: 400,
                                  margin: const EdgeInsets.all(20),
                                  child: Image.asset(
                                    photoUrl[ix],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    itemCount: photoUrl.length,
                  ),
        future: getMyPortofolio(),
      ),
    );
  }
}
