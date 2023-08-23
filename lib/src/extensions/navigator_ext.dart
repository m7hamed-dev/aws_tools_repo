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
      this, MaterialPageRoute(builder: (context) => page), (route) => false);

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
            pageBuilder: (context, animation, secondaryAnimation) =>
                destination,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var begin = const Offset(1.0, 0.0);
              var end = Offset.zero;
              var curve = Curves.ease;
              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);
              return SlideTransition(position: offsetAnimation, child: child);
            },
          );
        case TransitionType.slideFromLeft:
          return PageRouteBuilder<dynamic>(
            pageBuilder: (context, animation, secondaryAnimation) =>
                destination,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var begin = const Offset(-1.0, 0.0);
              var end = Offset.zero;
              var curve = Curves.ease;
              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);
              return SlideTransition(position: offsetAnimation, child: child);
            },
          );
      }
    }

    if (removeFromStack) {
      return Navigator.pushAndRemoveUntil(
        this,
        getPageRouteBuilder(),
        (route) =>
            false, // This predicate will remove all routes from the stack
      );
    } else {
      return Navigator.of(this).push(getPageRouteBuilder());
    }
  }
}

/// # TransitionType = { slideFromRight, slideFromLeft }
enum TransitionType { slideFromRight, slideFromLeft }
