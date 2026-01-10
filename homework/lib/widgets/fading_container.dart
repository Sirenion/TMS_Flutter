import 'package:flutter/material.dart';
import 'package:homework/widgets/text_view.dart';

class FadingContainer extends StatefulWidget {
  const FadingContainer({super.key});

  @override
  State<FadingContainer> createState() => _FadingContainerState();
}

class _FadingContainerState extends State<FadingContainer>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn),
    );
  }

  void _launch() {
    _controller.reset();
    _controller.forward();
  }

  void _stop() {
    _controller.stop();
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
          FadeTransition(
            opacity: _fadeAnimation,
            child: Container(height: 150.0, width: 150.0, color: Colors.blue),
          ),
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
    );
  }
}
