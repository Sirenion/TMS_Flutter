import 'package:flutter/material.dart';

class MovingThing extends StatefulWidget {
  const MovingThing({super.key});

  @override
  State<MovingThing> createState() => _MovingThingState();
}

class _MovingThingState extends State<MovingThing> {
  bool _moveForward = true;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    const double circleSize = 75.0;
    return SizedBox(
      height: 150.0,
      width: width,
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: _moveForward ? 0.0 : 1.0, end: _moveForward ? 1.0 : 0.0),
        duration: const Duration(seconds: 2),
        curve: Curves.easeOut,
        builder: (context, value, child) {
          return Stack(
            children: [
              Positioned(left: value * (width - 105.0), top: value * circleSize, child: child!),
            ],
          );
        },
        child: GestureDetector(
          onTap: () {
            setState(() {
              _moveForward = !_moveForward;
            });
          },
          child: Container(
            width: circleSize,
            height: circleSize,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              color: Colors.black, // changes position of shadow
            ),
          ),
        ),
      ),
    );
    // child: Stack(
    //   children: [
    //     AnimatedPositioned(
    //       left: _left ? 0 : (width - 105.0),
    //       top: _left ? 0 : circleSize,
    //       duration: const Duration(seconds: 1),
    //       child: GestureDetector(
    //         onTap: () {
    //           setState(() {
    //             _left = !_left;
    //           });
    //         },
    //         child: Container(
    //           width: circleSize,
    //           height: circleSize,
    //           decoration: const BoxDecoration(
    //             borderRadius: BorderRadius.all(Radius.circular(50.0)),
    //             color: Colors.black, // changes position of shadow
    //           ),
    //         ),
    //       ),
    //     ),
    //   ],
    // ),
    // );
  }
}
