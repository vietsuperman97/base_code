// ignore: import_of_legacy_library_into_null_safe
import 'package:english_quiz/screens/screens.dart';
import 'package:english_quiz/widgets/widget_button.dart';
import 'package:utils_libs/utils_libs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserScreen extends StatefulWidget {

  UserScreen({Key? key}) : super(key: key);

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WidgetContainerCenter(
          child: WidgetButton(
            onTap: () => AppNavigator.navigateLogin(),
            text: MESSAGES.LOGIN,
          ),
        ),
      ),
    );
  }
}
