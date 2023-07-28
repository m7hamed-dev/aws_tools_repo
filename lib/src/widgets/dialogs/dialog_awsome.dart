import 'package:awsome_tools/src/extensions/navigator_ext.dart';
import 'package:flutter/material.dart';

class DialogAwsome extends StatelessWidget {
  const DialogAwsome({super.key});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      content: Stack(
        alignment: Alignment.center,
        children: [
          // Background container (optional)
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            child: const Text(
              'This is the background of the dialog',
              style: TextStyle(fontSize: 18),
            ),
          ),
          // Overlay container
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Custom Dialog',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                const SizedBox(height: 16),
                const Text(
                  'This is the content of the dialog.',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: context.pop,
                  child: const Text('Close'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
