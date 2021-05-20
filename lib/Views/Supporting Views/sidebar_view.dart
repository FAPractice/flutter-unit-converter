import 'package:flutter/material.dart';

import '../length_view.dart';
import '../temperature_view.dart';
import '../time_dart.dart';
import '../volume_view.dart';

class SidebarView extends StatefulWidget {
  @override
  _SidebarViewState createState() => _SidebarViewState();
}

class _SidebarViewState extends State<SidebarView> {
  var _index = 0;

  var _items = [LengthView(), VolumeView(), TemperatureView(), TimeView()];

  List<NavigationRailDestination> _generateNavItems(items) {
    List<NavigationRailDestination> nav_items = [];
    for (var item in items) {
      nav_items.add(NavigationRailDestination(
        label: Text(item.navigationTitle),
        icon: item.navigationIcon,
      ));
    }
    return nav_items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            labelType: NavigationRailLabelType.selected,
            selectedIndex: _index,
            onDestinationSelected: (val) => setState(() => _index = val),
            destinations: _generateNavItems(_items),
          ),
          _items[_index]
          // Text("Sup")
        ],
      ),
    );
  }
}
