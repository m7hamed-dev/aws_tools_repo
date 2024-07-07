import 'package:awsome_tools/awsome_tools.dart';
import 'package:flutter/material.dart';

class SnackBarWidgetAwsome {
  //! overlay entry
  static late OverlayEntry overlayEntry;
  //! showSnackBar
  static void showSnackBar(
    BuildContext context, {
    bool setOnTop = false,
    required BaseState state,
    bool? useCutomDesign,
    final String? title,
    final String? message,
    final Duration? duration,
  }) {
    final timer = duration ?? configAwsome.duration;

    //
    var overlayEntry2 = OverlayEntry(
      builder: (context) {
        return Positioned(
          top: MediaQuery.of(context).size.height * .1,
          left: 0,
          right: 0,
          child: Container(
            color: state.colorBaseOnStarte,
            child: Row(
              children: [
                // icon base on state
                const SizedBox(width: 8),
                state.iconBaseOnState.withCircle(color: Colors.white),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      state.msg ?? '',
                      overflow: TextOverflow.clip,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // const SizedBox(height: 8.0),
                    Text(
                      state.descriptionMsg ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
    //! remove the previous overlay
    overlayEntry = overlayEntry2;
    //! insert the new overlay
    Overlay.of(context).insert(overlayEntry);
    //! remove the overlay after the duration
    Future.delayed(timer, () => overlayEntry.remove());
  }
}
