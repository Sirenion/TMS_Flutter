import 'package:flutter/material.dart';
import 'package:homework/widgets/anim_container.dart';
import 'package:homework/widgets/fading_container.dart';
import 'package:homework/widgets/hidden_container.dart';
import 'package:homework/widgets/moving_thing.dart';
import 'package:homework/widgets/rotating_star.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AnimContainer(),
                RotatingStar(),
                HiddenContainer(),
                const SizedBox(height: 15.0),
                MovingThing(),
                FadingContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
