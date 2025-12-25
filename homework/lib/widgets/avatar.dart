import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(90.0)),
        border: Border.all(
            width: 2.0,
            color: Colors.white
        ),
      ),
      child: CircleAvatar(
        backgroundColor: Color(0xffebdeff),
        radius: 60.0,
      ),
    );
  }
}
