import 'package:flutter/material.dart';
import '../constants.dart';

class GestureDetec extends StatelessWidget {
  const GestureDetec({
    required this.title, required this.onTap
  }) : super();

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(title,
            style: kLargeButtonTextStyle,),
        ),
        color: kBottonContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
