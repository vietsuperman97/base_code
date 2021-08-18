// ignore: import_of_legacy_library_into_null_safe
import 'package:english_quiz/widgets/widgets.dart';
import 'package:utils_libs/utils_libs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutUsScreen extends StatefulWidget {

  AboutUsScreen({Key? key}) : super(key: key);

  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            color: COLORS.WHITE,
            child: Column(
              children: [
                WidgetHeaderBar(
                  title: MESSAGES.ABOUT_US,
                  backgroundColor: COLORS.PRIMARY_COLOR,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: ListView(
                      children: [
                        Text(
                          'Tiêu đề',
                          style: AppStyle.DEFAULT_MEDIUM_BOLD,
                        ),
                        AppValue.vSpaceTiny,
                        Text(
                          'Giới thiệu về chúng tôi',
                          style: AppStyle.DEFAULT_MEDIUM,
                          textAlign: TextAlign.justify,
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
