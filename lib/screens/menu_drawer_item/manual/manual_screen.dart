// ignore: import_of_legacy_library_into_null_safe
import 'package:english_quiz/widgets/widgets.dart';
import 'package:utils_libs/utils_libs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ManualScreen extends StatefulWidget {

  ManualScreen({Key? key}) : super(key: key);

  @override
  _ManualScreenState createState() => _ManualScreenState();
}

class _ManualScreenState extends State<ManualScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            color: COLORS.WHITE,
            child: Column(
              children: [
                WidgetHeaderBar(
                  title: MESSAGES.MANUAL,
                  backgroundColor: COLORS.PRIMARY_COLOR,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: ListView(
                      children: [
                        WidgetManual(
                          step: '1',
                          title: 'aaaaaa',
                          content: 'ucuaus',
                        ),
                        AppValue.vSpaceSmall,
                        WidgetManual(
                          step: '2',
                          title: 'bbbbbb',
                          content: 'ucuaus',
                        ),
                        AppValue.vSpaceSmall,
                        WidgetManual(
                          step: '3',
                          title: 'cccccc',
                          content: 'ucuaus',
                        ),
                        AppValue.vSpaceSmall,
                        WidgetManual(
                          step: '4',
                          title: 'dddddd',
                          content: 'ucuaus',
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

class WidgetManual extends StatelessWidget{
  final String? content, step, title;
  const WidgetManual({this.content, this.step, this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            WidgetCircleColorContainer(
              width: 26,
              height: 26,
              color: COLORS.BLUE,
              alignment: Alignment.center,
              child: WidgetText(title: step),
            ),
            AppValue.hSpace(10),
            Text(title!, style: AppStyle.DEFAULT_MEDIUM_BOLD, textAlign: TextAlign.justify,)
          ],
        ),
        AppValue.vSpaceSmall,
        Text(
          content!,
          style: AppStyle.DEFAULT_MEDIUM,
        ),
      ],
    );
  }
}