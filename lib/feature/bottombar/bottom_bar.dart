import 'package:emailinbox_oguzhan_onal/feature/cleanpage/view/clean_page.dart';
import 'package:emailinbox_oguzhan_onal/feature/homepage/view/home_page.dart';
import 'package:emailinbox_oguzhan_onal/product/components/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:kartal/kartal.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  final List<Widget> _navigationList = <Widget>[
    const CleanPage(),
    const Text('Settings'),
    const Text('Falan')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _navigationList.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navbarItem(EvaIcons.folder, 0),
          navbarItem(EvaIcons.settings, 1),
          navbarItem(EvaIcons.activity, 2),
        ],
      ),
    );
  }

  Widget navbarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        height: 40,
        width: context.dynamicWidth(0.3),
        child: Icon(
          icon,
          color: index == _selectedIndex ? ConstColors.blue : ConstColors.gray,
        ),
        decoration: BoxDecoration(
            borderRadius: context.lowBorderRadius,
            color: index == _selectedIndex
                ? ConstColors.whitish
                : ConstColors.white),
      ),
    );
  }
}
