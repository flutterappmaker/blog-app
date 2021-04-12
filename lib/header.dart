import 'package:blog/components/menu_item.dart';
import 'package:blog/components/social.dart';
import 'package:blog/components/web_menu.dart';
import 'package:blog/constants.dart';
import 'package:blog/models/blog.dart';
import 'package:blog/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kDarkBlackColor,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: Column(
              children: [
                Row(
                  children: [
                    if (!Responsive.isDesktop(context))
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    SvgPicture.asset(
                      'assets/icons/logo.svg',
                    ),
                    Spacer(),
                    if (Responsive.isDesktop(context)) WebMenu(),
                    Spacer(),
                    Social(),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding * 2,
                ),
                Text(
                  'Welcome to Our Blog',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32),
                ),
                Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Text(
                    'Stay updated with the newest design and development stories, case studies, \nand insights shared by DesignDK team.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        height: 1.5),
                  ),
                ),
                FittedBox(
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'Learn More',
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: kDefaultPadding / 2,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )
                        ],
                      )),
                ),
                if (Responsive.isDesktop(context))
                  SizedBox(
                    height: kDefaultPadding,
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
