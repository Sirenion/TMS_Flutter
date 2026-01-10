import 'package:flutter/material.dart';

class MovingThing extends StatefulWidget {
  const MovingThing({super.key});

  @override
  State<MovingThing> createState() => _MovingThingState();
}

class _MovingThingState extends State<MovingThing> {
  bool _left = true;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 150.0,
      width: width,
      child: Stack(
        children: [
          AnimatedPositioned(
            left: _left ? 0 : (width - 105.0),
            top: _left ? 0 : 75.0,
            duration: const Duration(seconds: 1),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _left = !_left;
                });
              },
              child: Container(
                width: 75.0,
                height: 75.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  color: Colors.black, // changes position of shadow
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
