// ignore: import_of_legacy_library_into_null_safe
import 'package:utils_libs/utils_libs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommunityScreen extends StatefulWidget {

  CommunityScreen({Key? key}) : super(key: key);

  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WidgetContainerCenter(
          child: Text(MESSAGES.COMMUNITY, style: AppStyle.DEFAULT_MEDIUM,),
        ),
      ),
    );
  }
}
