import 'package:flutter/material.dart';
import 'package:homework/widgets/info_plate.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Color(0xffede9f1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            spreadRadius: 1,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: .stretch,
        mainAxisAlignment: .spaceBetween,
        children: [
          Flexible(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
              child: Image.network(
                  "https://i.pinimg.com/736x/d8/29/cc/d829cc8968d174a43558b01e2f357845.jpg",
                fit: .fitWidth,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: .centerLeft,
              child: Padding(
                  padding: EdgeInsetsGeometry.all(10.0),
                  child: InfoPlate(main: "Заголовок новости", sub: "Сегодня, 12:00", alignment: .start)
              ),
            )
          ),
        ],
      ),
    );
  }
}
