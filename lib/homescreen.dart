import 'package:blog/blog_post.dart';
import 'package:blog/constants.dart';
import 'package:blog/models/blog.dart';
import 'package:blog/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 2,
            child: Container(
              child: Column(
                  children: blogPosts.map((e) {
                return BlogPost(
                  blog: e,
                );
              }).toList()),
            )),
        if (!Responsive.isMobile(context))
          SizedBox(
            width: kDefaultPadding,
          ),
        if (!Responsive.isMobile(context))
          Expanded(
              child: Column(
            children: [
              Search(),
              SizedBox(
                height: kDefaultPadding,
              ),
              Categories(),
              SizedBox(
                height: kDefaultPadding,
              ),
              RecentPosts()
            ],
          )),
      ],
    );
  }
}

class RecentPosts extends StatelessWidget {
  const RecentPosts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Posts',
            style:
                TextStyle(color: kDarkBlackColor, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              Expanded(
                  flex: 2, child: Image.asset('assets/images/recent_1.png')),
              SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                flex: 5,
                child: Text('Our “Secret” Formula to Online Workshops',
                    maxLines: 2,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      color: kDarkBlackColor,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              Expanded(
                  flex: 2, child: Image.asset('assets/images/recent_2.png')),
              SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                flex: 5,
                child: Text('Digital Product Innovations from Warsaw with Love',
                    maxLines: 2,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      color: kDarkBlackColor,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style:
                TextStyle(color: kDarkBlackColor, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Text('Artificial Intelligence(5)',
              style: Theme.of(context).textTheme.caption),
          SizedBox(
            height: kDefaultPadding,
          ),
          Text('Augmented Reality(4)',
              style: Theme.of(context).textTheme.caption),
          SizedBox(
            height: kDefaultPadding,
          ),
          Text('Development(3)', style: Theme.of(context).textTheme.caption),
          SizedBox(
            height: kDefaultPadding,
          ),
          Text('Flutter(5)', style: Theme.of(context).textTheme.caption),
          SizedBox(
            height: kDefaultPadding,
          ),
          Text('UI/UX Design(5)', style: Theme.of(context).textTheme.caption),
        ],
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Search',
            style:
                TextStyle(color: kDarkBlackColor, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          TextField(
            onChanged: (value) {},
            decoration: InputDecoration(
                hintText: 'Type Here....',
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset('assets/icons/feather_search.svg'),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.black))),
          )
        ],
      ),
    );
  }
}
