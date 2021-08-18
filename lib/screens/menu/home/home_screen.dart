// ignore: import_of_legacy_library_into_null_safe
import 'package:animated_drawer/views/animated_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:english_quiz/widgets/widgets.dart';
import 'package:utils_libs/utils_libs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'index.dart';

class HomeScreen extends StatefulWidget {

  final GlobalKey<ScaffoldState> drawerKey;

  const HomeScreen({Key? key, required this.drawerKey}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetContainerCenter(
        child: Text(MESSAGES.HOMES, style: AppStyle.DEFAULT_MEDIUM,),
      ),
    );
  }
}
