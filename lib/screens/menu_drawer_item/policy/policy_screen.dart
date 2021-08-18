// ignore: import_of_legacy_library_into_null_safe
import 'package:english_quiz/widgets/widgets.dart';
import 'package:utils_libs/utils_libs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PolicyScreen extends StatefulWidget {

  PolicyScreen({Key? key}) : super(key: key);

  @override
  _PolicyScreenState createState() => _PolicyScreenState();
}

class _PolicyScreenState extends State<PolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            color: COLORS.WHITE,
            child: Column(
              children: [
                WidgetHeaderBar(
                  title: MESSAGES.TERMS_POLICIES,
                  backgroundColor: COLORS.PRIMARY_COLOR,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: ListView(
                      children: [
                        Text(
                          MESSAGES.TERMS_POLICIES,
                          style: AppStyle.DEFAULT_MEDIUM_BOLD,
                        ),
                        AppValue.vSpaceTiny,
                        Text(
                          MESSAGES.TEXT,
                          style: AppStyle.DEFAULT_MEDIUM,
                          textAlign: TextAlign.justify,
                        ),
                        AppValue.vSpaceSmall,
                        Text(
                          MESSAGES.TERMS_POLICIES,
                          style: AppStyle.DEFAULT_MEDIUM_BOLD,
                        ),
                        AppValue.vSpaceTiny,
                        Text(
                          MESSAGES.TEXT,
                          style: AppStyle.DEFAULT_MEDIUM,
                          textAlign: TextAlign.justify,
                        ),
                        AppValue.vSpaceSmall,
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
