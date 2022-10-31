import 'dart:developer';

import 'package:flutter/material.dart';

class FABBottomAppBarItem {
  IconData iconData;
  String content;

  FABBottomAppBarItem({required this.iconData, required this.content});
}

class FABBottomAppBar extends StatefulWidget {
  FABBottomAppBar({
    required this.items,
    required this.onTabSelected,
  }) {
    assert(this.items.length == 2 || this.items.length == 3);
  }
  final List<FABBottomAppBarItem> items;

  final ValueChanged<int> onTabSelected;

  @override
  State<StatefulWidget> createState() => FABBottomAppBarState();
}

class FABBottomAppBarState extends State<FABBottomAppBar> {
  int _selectedIndex = 0;

  _updateIndex(int index) {
    widget.onTabSelected(index);

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: _updateIndex,
      );
    });

    if (items.length > 1 && items.length == 2) {
      items.insert(items.length >> 1, _buildMiddleTabItem());
    }

    return BottomAppBar(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          // boxShadow: [
          //   BoxShadow(
          //       blurRadius: 3,
          //       spreadRadius: 3,
          //       color: Color(0xFFE2E2E2).withOpacity(1),
          //       offset: Offset(3, 0))
          // ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items,
        ),
      ),
    );
  }

  Widget _buildMiddleTabItem() {
    return Expanded(
      child: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }

  Widget _buildTabItem({
    required FABBottomAppBarItem item,
    required int index,
    required ValueChanged<int> onPressed,
  }) {
    Color color = _selectedIndex == index
        ? Color(0xFF6259C1).withOpacity(0.9)
        : Color(0xFF6259C1).withOpacity(0.4);
    return Expanded(
      child: SizedBox(
        height: 80,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onPressed(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(item.iconData, color: color),
                // Text(
                //   item.content,
                //   style: TextStyle(fontSize: 10, color: color),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
