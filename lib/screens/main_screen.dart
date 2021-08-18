// ignore: import_of_legacy_library_into_null_safe
import 'package:animated_drawer/views/animated_drawer.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:english_quiz/bloc/blocs.dart';
import 'package:english_quiz/screens/screens.dart';
import 'package:english_quiz/widgets/widget_button_home.dart';
import 'package:english_quiz/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utils_libs/utils_libs.dart'; // ignore: import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      body: AnimatedDrawer(
        homePageXValue: 300,
        homePageYValue: 80,
        homePageAngle: -0.2,
        homePageSpeed: 250,
        shadowXValue: 272,
        shadowYValue: 110,
       shadowAngle: -0.275,
       shadowSpeed: 550,
        openIcon: Icon(Icons.menu_open,size: 40, color: COLORS.BLACK),
        closeIcon: Icon(Icons.arrow_back_ios,size: 25, color: COLORS.BLACK),
        shadowColor: Colors.blue[200],
        backgroundGradient: LinearGradient(
          colors: [ const Color(0xFF0983CA),
            const Color(0xFF79D0FE)],
        ),
        menuPageContent: Padding(
          padding: const EdgeInsets.only(top: 100.0, left: 15),
          child: MainDrawer(
            onPress: handleOnPressItemMenu,
          ),
        ),
        homePageContent: DoubleBackToCloseApp(
          snackBar: SnackBar(
            content: Text(MESSAGES.BACK_TO_EXIT, style: AppStyle.DEFAULT_MEDIUM.copyWith(color: COLORS.WHITE),),
          ),
          child: NavigationButton(
            selectedIndex: _selectedIndex,
            onSelectIndex: () => setState(() => _selectedIndex = 2 ),
            onTabSelected: (index) => setState(() => _selectedIndex = index),
            children: [
              HomeScreen(drawerKey: _drawerKey),
              DiscoverScreen(),
              CommunityScreen(),
              NotificationScreen(),
              UserScreen(),
            ],
          ),
        ),
      ),
    );

  }

  handleOnPressItemMenu(element){
    switch (element[PreferencesKey.TITLE]) {
      case MESSAGES.INFORMATION_ACCOUNT:
        _drawerKey.currentState!.openEndDrawer();
        AppNavigator.navigateInformationAccount();
        break;
      case MESSAGES.NOTIFICATION:
        _drawerKey.currentState!.openEndDrawer();
        AppNavigator.navigateNotification();
        break;
      case MESSAGES.TERMS_POLICIES:
        _drawerKey.currentState!.openEndDrawer();
        AppNavigator.navigatePolicy();
        break;
      case MESSAGES.MANUAL:
        _drawerKey.currentState!.openEndDrawer();
        AppNavigator.navigateManual();
        break;
        case MESSAGES.ABOUT_US:
        _drawerKey.currentState!.openEndDrawer();
        AppNavigator.navigateAboutUs();
        break;
      default:
        break;
    }
  }
}