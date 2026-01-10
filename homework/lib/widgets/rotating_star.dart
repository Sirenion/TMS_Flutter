import 'package:flutter/material.dart';
import 'package:homework/widgets/text_view.dart';

class RotatingStar extends StatefulWidget {
  const RotatingStar({super.key});

  @override
  State<RotatingStar> createState() => _RotatingStarState();
}

class _RotatingStarState extends State<RotatingStar>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 2.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn),
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 3.14 * 2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn),
    );
  }

  void _launch() {
    _controller.forward();
  }

  void _stop() {
    _controller.reset();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0,
      width: 250.0,
      child: Column(
        mainAxisAlignment: .spaceEvenly,
        mainAxisSize: .max,
        crossAxisAlignment: .center,
        children: [
          RotationTransition(
            turns: _rotationAnimation,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: Container(
                child: const Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 100.0,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              ElevatedButton(
                onPressed: _launch,
                child: const TextView(
                  input: "Запустить",
                  textColor: Colors.deepPurple,
                ),
              ),
              ElevatedButton(
                onPressed: _stop,
                child: const TextView(
                  input: "Остановить",
                  textColor: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
