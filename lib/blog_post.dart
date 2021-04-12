import 'package:blog/constants.dart';
import 'package:blog/models/blog.dart';
import 'package:blog/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BlogPost extends StatelessWidget {
  final Blog blog;
  const BlogPost({
    Key key,
    this.blog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(aspectRatio: 1.78, child: Image.asset(blog.image)),
        Container(
          padding: EdgeInsets.all(kDefaultPadding),
          margin: EdgeInsets.only(bottom: kDefaultPadding),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'DESIGN',
                    style: TextStyle(
                        color: kDarkBlackColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: kDefaultPadding,
                  ),
                  Text(
                    blog.date,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              Text(
                blog.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: kDarkBlackColor,
                    height: 1.3,
                    fontWeight: FontWeight.w600,
                    fontSize: Responsive.isDesktop(context) ? 32 : 24,
                    fontFamily: 'Raleway'),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Text(
                blog.description,
                maxLines: 4,
                style: TextStyle(height: 1.5),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.only(bottom: kDefaultPadding / 4),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: kPrimaryColor, width: 3))),
                        child: Text(
                          'Read More',
                          style: TextStyle(color: kDarkBlackColor),
                        ),
                      )),
                  Spacer(),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/feather_thumbs-up.svg',
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                            'assets/icons/feather_message-square.svg',
                            color: Colors.black),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                            'assets/icons/feather_share-2.svg',
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
