import 'package:flutter/material.dart';
import 'package:homework/widgets/custom_card.dart';
import 'package:homework/widgets/text_view.dart';

class NewsGrid extends StatelessWidget {

  final double width;
  const NewsGrid({super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: TextView(
            input: "Лента новостей",
            textSize: 16.0,
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          primary: false,
          clipBehavior: .none,
          padding: EdgeInsets.all(20.0),
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: switch(width > 600) {
              true => 3,
              false => 2,
            },
            mainAxisExtent: switch(width > 600) {
              true => 300.0,
              false => 250.0,
            },
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 15.0,
          ),
          itemBuilder: (_, index) => CustomCard(),
          itemCount: 6,
        )
      ],
    );
  }
}
