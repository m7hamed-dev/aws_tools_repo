import 'package:flutter/material.dart';
import '../../awsome_tools.dart';

class LoadingErrorSuccessAwsome extends StatelessWidget {
  const LoadingErrorSuccessAwsome({
    super.key,
    required this.state,
    this.init,
    this.loading,
    this.error,
    required this.success,
    this.setAnimation = false,
    this.errorMessage = 'Error ',
  });
  final StateAwsome state;
  final Widget? init;
  final Widget? loading;
  final Widget? error;
  final Widget success;
  final bool setAnimation;
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    final currenWidget = switch (state) {
      InitalState() => init ?? const SizedBox(),
      LoadingState() => loading ?? const CircularProgressIndicator(),
      ErrorState() => error ?? TxtAwsome(errorMessage),
      _ => success
    };
    return ChildWithAnimation(
      setAnimation: setAnimation,
      state: state,
      child: currenWidget,
    );
  }
}

class ChildWithAnimation extends StatelessWidget {
  const ChildWithAnimation({
    super.key,
    required this.setAnimation,
    required this.child,
    required this.state,
  });
  final bool setAnimation;
  final Widget child;
  final StateAwsome state;
  @override
  Widget build(BuildContext context) {
    if (setAnimation) {
      return Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          transitionBuilder: (child, animation) {
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
          key: ValueKey<StateAwsome>(state),
          child: child,
        ),
      );
    }
    return Center(child: child);
  }
}