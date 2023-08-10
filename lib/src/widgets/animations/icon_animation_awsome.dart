import 'package:awsome_tools/src/extensions/icon_base_on_state.dart';
import 'package:flutter/material.dart';

import '../../network/base_state_awsome.dart';

class IconAnimationAwsome extends StatelessWidget {
  const IconAnimationAwsome({super.key, this.color, required this.state});
  final BaseApiState state;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      key: ValueKey<Widget>(state.iconBaseOnState),
      duration: const Duration(milliseconds: 400),
      // transitionBuilder: (child, animation) {
      // return ScaleTransition(
      // scale: animation,
      // child: child,
      // );
      // },
      child: state.iconBaseOnState,
    );
  }

//InitalState ()=> SizedBox(),
}
