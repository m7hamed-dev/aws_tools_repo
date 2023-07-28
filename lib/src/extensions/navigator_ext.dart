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
}
