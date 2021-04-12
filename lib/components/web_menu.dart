import 'package:blog/components/menu_item.dart';
import 'package:blog/models/blog.dart';
import 'package:flutter/material.dart';

class WebMenu extends StatefulWidget {
  const WebMenu({
    Key key,
  }) : super(key: key);

  @override
  _WebMenuState createState() => _WebMenuState();
}

class _WebMenuState extends State<WebMenu> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          menuItems.length,
          (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: MenuItem(
                    title: menuItems[index],
                    isActive: selectedIndex == index,
                  ),
                ),
              )),
    );
  }
}
