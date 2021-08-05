import 'package:flutter/material.dart';
import 'package:portofolio_website_fatih/screens/portofolio/portofolio_screen.dart';
import 'package:portofolio_website_fatih/screens/resume/resume_screen.dart';
import 'package:portofolio_website_fatih/widgets/sidebar.dart';

import '../responsive.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size _size = MediaQuery.of(context).size;
    print(_size.width);
    return Scaffold(
      body: Responsive(
        // Let's work on our mobile part
        mobile: Stack(
          children: <Widget>[
            PortofolioScreen(),
            SideBar(),
          ],
        ),
        tablet: Stack(
          children: <Widget>[
            PortofolioScreen(),
            SideBar(),
          ],
        ),

        desktop: Row(
          children: [
            // Once our width is less then 1300 then it start showing errors
            // Now there is no error if our width is less then 1340

            Expanded(
              flex: _size.width > 1340 ? 5 : 10,
              child: ResumeScreen(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 8 : 10,
              child: PortofolioScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
