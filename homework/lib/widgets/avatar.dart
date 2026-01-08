import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Логотип нажат");
      },
      child: Container(
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
          backgroundColor: Color(0xffd3e5ff),
          radius: 50.0,
          child: Icon(Icons.lock, color: Colors.blueAccent, size: 50.0),
        ),
      ),
    );
  }
}
