import 'package:awsome_tools/awsome_tools.dart';
import 'package:flutter/material.dart';

class DialogAwsome extends StatelessWidget {
  const DialogAwsome({super.key, required this.state});
  final StateAwsome state;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: configAwsome.defaultBorderRadius,
      ),
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
                _buildDialogContent,
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Close'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get _buildDialogContent {
    return switch (state) {
      LoadingState() => const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      ErrorState() => const Icon(Icons.error, size: 48, color: Colors.white),
      _ => const Icon(Icons.check, size: 48, color: Colors.white)
    };
  }
}
