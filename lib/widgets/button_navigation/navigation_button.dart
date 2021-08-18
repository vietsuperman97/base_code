// ignore: import_of_legacy_library_into_null_safe
import 'package:utils_libs/utils_libs.dart' show COLORS, ICONS, MESSAGES, NotificationUse, ROUTE_NAMES;
import 'package:flutter/material.dart';
import 'package:english_quiz/widgets/widgets.dart';

class NavigationButton extends StatefulWidget {
  final List<Widget> children;
  final int _selectedIndex;
  final VoidCallback onSelectIndex;
  final Function onTabSelected;
  NavigationButton({required int selectedIndex, required this.onSelectIndex, required this.onTabSelected, required this.children}) :_selectedIndex = selectedIndex;

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<NavigationButton> {
  Widget _bottomNavigation(String noti) => (
    WorkWidgetFABBottomNav(
      noti: noti != '0' && noti != '' ? noti : null,
      notchedShape: CircularNotchedRectangle(),
      backgroundColor: Colors.white,
      selectedIndex: widget._selectedIndex,
      onTabSelected: (index) => widget.onTabSelected(index),
      items: List.from([
        WorkFABBottomNavItem.asset(
          route: ROUTE_NAMES.HOME,
          tabItem: TabWorkItem.news,
          navigatorKey: GlobalKey<NavigatorState>(),
          assetUri: ICONS.ICON_USER,
          text: MESSAGES.HOMES,
        ),
        WorkFABBottomNavItem.asset(
          route: ROUTE_NAMES.DISCOVER,
          tabItem: TabWorkItem.course,
          navigatorKey: GlobalKey<NavigatorState>(),
          assetUri: ICONS.ICON_USER,
          text: MESSAGES.DISCOVER,
        ),
        WorkFABBottomNavItem.asset(
          route: ROUTE_NAMES.COMMUNITY,
          tabItem: TabWorkItem.home,
          navigatorKey: GlobalKey<NavigatorState>(),
          assetUri: ICONS.ICON_USER,
          text: MESSAGES.COMMUNITY,
        ),
        WorkFABBottomNavItem.asset(
          route: ROUTE_NAMES.NOTIFICATION,
          tabItem: TabWorkItem.contract,
          navigatorKey: GlobalKey<NavigatorState>(),
          assetUri: ICONS.ICON_USER,
          text: MESSAGES.NOTIFICATION,
        ),
        WorkFABBottomNavItem.asset(
          route: ROUTE_NAMES.USER,
          tabItem: TabWorkItem.person,
          navigatorKey: GlobalKey<NavigatorState>(),
          assetUri: ICONS.ICON_USER,
          text: MESSAGES.USER,
        ),
      ]),
      selectedColor: COLORS.PRIMARY_COLOR,
      color: COLORS.NAV_ITEM_COLOR,
    )
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: widget.children[widget._selectedIndex],
        ),
        bottomNavigationBar: _bottomNavigation('2')
    );
  }
}