import 'package:flutter/material.dart';
import 'package:awsome_tools/awsome_tools.dart';

extension DialogExtensionAws on BuildContext {
  Future<void> showCustomDialogAws({
    required String title,
    Widget? content,
  }) async {
    final width = isMobileLayout ? this.width * 0.8 : this.width * .5;
    return await showDialog<void>(
      context: this,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: configAwsome.defaultBorderRadius,
          ),
          content: SizedBox(
            width: width,
            // height: context.height * 0.8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(title),
                const Divider(),
                if (content != null)
                  SizedBox(height: configAwsome.defaultPadding),
                if (content != null) content,
              ],
            ),
          ),
          actions: [
            BtnAwsome(
              onPressed: context.pop,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: const TxtAwsome('OK', color: Colors.white),
            ),
          ],
        );
      },
    );
  }
}
