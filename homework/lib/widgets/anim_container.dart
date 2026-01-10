import 'package:flutter/material.dart';
import 'package:homework/widgets/text_view.dart';

class AnimContainer extends StatefulWidget {
  const AnimContainer({super.key});

  @override
  State<AnimContainer> createState() => _AnimContainerState();
}

class _AnimContainerState extends State<AnimContainer> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 750),
        curve: Curves.easeOut,
        width: _isExpanded ? 300.0 : 200.0,
        height: _isExpanded ? 150.0 : 100.0,
        alignment: .center,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          color: _isExpanded ? Colors.orange : Colors.green,
        ),
        child: const TextView(input: "Push me", textColor: Colors.white),
      ),
    );
  }
}
