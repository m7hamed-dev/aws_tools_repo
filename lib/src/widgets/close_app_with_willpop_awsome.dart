import 'package:flutter/material.dart';

class CloseAppWithWillPop extends StatefulWidget {
  const CloseAppWithWillPop({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  State<CloseAppWithWillPop> createState() => _CloseAppWithWillPopState();
}

class _CloseAppWithWillPopState extends State<CloseAppWithWillPop> {
  late DateTime currentBackPressTime;

  @override
  void initState() {
    super.initState();
    currentBackPressTime = DateTime.now();
  }

  Future<bool> _onWillPop() async {
    final DateTime now = DateTime.now();
    final difference = now.difference(currentBackPressTime);
    if (difference > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Press back again to exit')),
      );
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: _onWillPop, child: widget.child);
  }
}
