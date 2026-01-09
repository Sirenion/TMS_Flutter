import 'package:flutter/material.dart';

class HiddenContainer extends StatefulWidget {
  const HiddenContainer({super.key});

  @override
  State<HiddenContainer> createState() => _HiddenContainerState();
}

class _HiddenContainerState extends State<HiddenContainer> {
  bool _changeContainer = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _changeContainer = !_changeContainer;
        });
      },
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 750),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return ScaleTransition(scale: animation, child: child);
        },
        child: Container(
          key: ValueKey<bool>(_changeContainer),
          width: 150.0,
          height: 150.0,
          color: _changeContainer ? Colors.blue : Colors.red,
        ),
      ),
      //   child: Stack(
      //     clipBehavior: .none,
      //     alignment: .center,
      //     children: [
      //       AnimatedContainer(
      //         duration: const Duration(milliseconds: 750),
      //         curve: Curves.easeIn,
      //         width: _changeContainer ? 150.0 : 0,
      //         height: _changeContainer ? 150.0 : 0,
      //         color: Colors.red,
      //         alignment: .center,
      //       ),
      //       AnimatedContainer(
      //         duration: const Duration(milliseconds: 750),
      //         curve: Curves.easeIn,
      //         width: _changeContainer ? 0 : 150.0,
      //         height: _changeContainer ? 0 : 150.0,
      //         color: Colors.blue,
      //         alignment: .center,
      //       ),
      //     ],
      //   ),
      // )
    );
  }
}
