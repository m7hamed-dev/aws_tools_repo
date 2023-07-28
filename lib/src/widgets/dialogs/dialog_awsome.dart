import 'package:awsome_tools/awsome_tools.dart';
import 'package:flutter/material.dart';

class DialogAwsome extends StatelessWidget {
  const DialogAwsome({super.key, required this.state});
  final StateAwsome state;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 20.0,
      contentPadding: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        // borderRadius: configAwsome.defaultBorderRadius,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        // alignment: Alignment.center,
        children: [
          // div
          Container(
            height: 120.0,
            width: double.infinity,
            padding: const EdgeInsets.all(0.0),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              color: _headerColor,
            ),
            child: Stack(
              children: [
                /// icon close
                IconButton(
                  onPressed: context.pop,
                  icon: const Icon(Icons.close, color: Colors.white),
                ),

                ///
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildDialogContent,
                      const SizedBox(height: 10.0),
                      const TxtAwsome('حدث خطا'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// Overlay container
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MaterialButton(
              onPressed: context.pop,
              color: _headerColor,
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: configAwsome.defaultBorderRadius,
              ),
              child: const TxtAwsome(
                'اغلاق',
              ),
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
      NetworkErrorState() =>
        const Icon(Icons.network_check_sharp, size: 48, color: Colors.white),
      _ => const Icon(Icons.check_circle, size: 48, color: Colors.white)
    };
  }

  Color get _headerColor {
    return switch (state) {
      InitalState() => const Color.fromARGB(255, 246, 237, 237),
      LoadingState() => configAwsome.appColors.primaryColor,
      ErrorState() => const Color.fromARGB(255, 167, 33, 23),
      _ => const Color.fromARGB(255, 79, 196, 83)
    };
  }
}
