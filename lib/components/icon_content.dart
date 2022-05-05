import 'package:flutter/cupertino.dart';
import '../constants.dart  ';
class iconContent extends StatelessWidget {
  iconContent({required this.iconText, required this.label});
  final IconData iconText;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconText,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label,style: labelTextStyle)
      ],
    );
  }
}