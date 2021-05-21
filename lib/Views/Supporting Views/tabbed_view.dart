import 'package:flutter/material.dart';
import 'package:unit_converter/Views/Supporting%20Views/view_container.dart';

import '../length_view.dart';
import '../temperature_view.dart';
import '../time_dart.dart';
import '../volume_view.dart';

class TabbedView extends StatefulWidget {
  @override
  _TabbedViewState createState() => _TabbedViewState();
}

class _TabbedViewState extends State<TabbedView> {
  var _index = 0;
  var _items = [LengthView(), VolumeView(), TemperatureView(), TimeView()];

  List<BottomNavigationBarItem> _generateNavItems(items) {
    List<BottomNavigationBarItem> navItems = [];
    for (var item in items) {
      navItems.add(BottomNavigationBarItem(
        backgroundColor: Theme.of(context).primaryColor,
        label: item.navigationTitle,
        icon: item.navigationIcon,
      ));
    }
    return navItems;
  }

  Widget _getBodyItem(items, index) {
    return ViewContainer(items[index], items[index].navigationTitle);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBodyItem(_items, _index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (val) => setState(() => _index = val),
        items: _generateNavItems(_items),
      ),
    );
  }
}
