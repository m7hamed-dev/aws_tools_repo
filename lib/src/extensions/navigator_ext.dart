import 'package:flutter/material.dart';

extension NavigatorAwsome on BuildContext {
  /// ## pop or Close this context
  void pop() => Navigator.pop(this);

  /// ## Push To Next Page
  void to(Widget page, {bool removeFromStack = false}) {
    if (removeFromStack) {
      _pushAndRemoveUntil(page);
    } else {
      _push(page);
    }
  }

  ///
  void _push(Widget page) =>
      Navigator.of(this).push(MaterialPageRoute(builder: (context) => page));

  /// This predicate will remove all routes from the stack
  void _pushAndRemoveUntil(Widget page) => Navigator.pushAndRemoveUntil(
      this, MaterialPageRoute(builder: (context) => page), (route) => false,);

  /// # with animation
  Future pushWithAnimation(
    Widget destination, {
    required TransitionType transitionType,
    bool removeFromStack = false,
  }) {
    PageRouteBuilder<dynamic> getPageRouteBuilder() {
      switch (transitionType) {
        case TransitionType.slideFromRight:
          return PageRouteBuilder<dynamic>(
            pageBuilder: (context, animation, secondaryAnimation) {
              return destination;
            },
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              const begin = Offset(1.0, 0.0);
              const end = Offset.zero;
              const curve = Curves.ease;
              final tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              final offsetAnimation = animation.drive(tween);
              return SlideTransition(position: offsetAnimation, child: child);
            },
          );
        case TransitionType.slideFromLeft:
          return PageRouteBuilder<dynamic>(
            pageBuilder: (context, animation, secondaryAnimation) =>
                destination,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(-1.0, 0.0);
              const end = Offset.zero;
              const curve = Curves.ease;
              final tween = Tween(begin: begin, end: end).chain(
                CurveTween(curve: curve),
              );
              final offsetAnimation = animation.drive(tween);
              return SlideTransition(position: offsetAnimation, child: child);
            },
          );
      }
    }

    if (removeFromStack) {
      // This predicate will remove all routes from the stack
      return Navigator.pushAndRemoveUntil(
        this,
        getPageRouteBuilder(),
        (route) => false,
      );
    } else {
      return Navigator.of(this).push(getPageRouteBuilder());
    }
  }
}

/// # TransitionType = { slideFromRight, slideFromLeft }
enum TransitionType { slideFromRight, slideFromLeft }
