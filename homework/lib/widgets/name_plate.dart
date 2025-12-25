import 'package:flutter/material.dart';
import 'package:homework/widgets/text_view.dart';

class NamePlate extends StatelessWidget {

  final String name;
  final String job;
  const NamePlate({super.key,
    required this.name,
    required this.job
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: switch(MediaQuery.of(context).size.width > 600) {
          true => .start,
          false => .center,
        },
        mainAxisAlignment: .center,
        children: [
          TextView(
            input: name,
            bold: true,
            textSize: 18.0,
          ),
          SizedBox(
            height: 5.0,
          ),
          TextView(
            input: job,
            textColor: Colors.grey,
          )
        ],
      ),
    );
  }
}
