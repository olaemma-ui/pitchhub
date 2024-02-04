import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:pitchub/core/style.dart';

class AppSideBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index)? onTap;
  const AppSideBar({super.key, required this.selectedIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      onDestinationSelected: onTap,
      extended: true,
      destinations: const [
        NavigationRailDestination(
          icon: Icon(FlutterIcons.list_ent),
          label: Text('Categories'),
          selectedIcon: Icon(
            FlutterIcons.list_ent,
            color: ColorConstant.brand,
          ),
        ),
        NavigationRailDestination(
          icon: Icon(FlutterIcons.list_ent),
          label: Text('Categories'),
          selectedIcon: Icon(
            FlutterIcons.list_ent,
            color: ColorConstant.brand,
          ),
        ),
      ],
      selectedIndex: selectedIndex,
    );
  }
}
