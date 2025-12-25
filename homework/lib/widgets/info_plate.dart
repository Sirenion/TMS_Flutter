import 'package:flutter/material.dart';
import 'package:homework/widgets/text_view.dart';

class InfoPlate extends StatelessWidget {

  final String main;
  final String sub;
  final CrossAxisAlignment alignment;

  const InfoPlate({super.key,
    required this.main,
    required this.sub,
    this.alignment = CrossAxisAlignment.center,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextView(
          input: main,
          bold: true,
          textSize: 16.0,
        ),
        TextView(
          input: sub,
          textSize: 12.0,
          textColor: Colors.grey,
        )
      ],
    );
  }
}
