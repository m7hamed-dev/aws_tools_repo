import 'package:flutter/material.dart';

extension NavigatorAwsome on BuildContext {
  /// ## pop or Close this context
  void pop() => Navigator.pop(this);

  /// ## Push To Next Page
  void to(Widget page) {
    Navigator.of(this).push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  /// ## his predicate will remove all routes from the stack
  void toWithRemoveFromStack(Widget page) {
    Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (context) => page),
      (route) => false, // This predicate will remove all routes from the stack
    );
  }

  /// # with animation
  Future pushWithAnimation(Widget destination,
      {required TransitionType transitionType}) {
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

    return Navigator.of(this).push(getPageRouteBuilder());
  }
}

enum TransitionType {
  slideFromRight,
  slideFromLeft,
}
