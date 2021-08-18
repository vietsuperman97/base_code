import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TrailLoading extends StatelessWidget {
  final double height;
  final double width;
  const TrailLoading({Key key, this.height, this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height,
        width: width,
        child: Lottie.asset(
          'assets/lottie/trail_loading.json',
        ),
      ),
    );
  }
}
// class Loading{
//   Loading._();
//   static Widget Trail({double height, double width}) => Container(
//     height: height,
//     width: width,
//     child: Lottie.asset(
//       'assets/lottie/trail_loading.json',
//     ),
//   );
// }