// ignore: import_of_legacy_library_into_null_safe
import 'package:utils_libs/utils_libs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DiscoverScreen extends StatefulWidget {

  DiscoverScreen({Key? key}) : super(key: key);

  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WidgetContainerCenter(
          child: Text(MESSAGES.DISCOVER, style: AppStyle.DEFAULT_MEDIUM,),
        ),
      ),
    );
  }
}
