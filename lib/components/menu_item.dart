import 'package:blog/constants.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  final String title;
  final bool isActive;

  const MenuItem({
    Key key,
    this.title,
    this.isActive,
  }) : super(key: key);

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return kPrimaryColor;
    } else if (!widget.isActive & _isHover) {
      return kPrimaryColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        print('object');
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: _borderColor(), width: 3))),
        child: Text(
          widget.title,
          style: TextStyle(
              color: Colors.white,
              fontWeight:
                  widget.isActive ? FontWeight.w600 : FontWeight.normal),
        ),
      ),
    );
  }
}
