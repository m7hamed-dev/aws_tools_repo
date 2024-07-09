import 'package:another_flushbar/flushbar.dart';
import 'package:awsome_tools/awsome_tools.dart';
import 'package:flutter/material.dart';

class SnackBarWidgetAwsome {
  //! overlay entry
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
    final title0 = title ?? state.msg ?? '';
    final descriptionMsg = state.descriptionMsg ?? '';
    Flushbar(
      title: title0,
      message: descriptionMsg,
      icon: state.iconBaseOnState.withCircle(color: Colors.white),
      backgroundColor: state.colorBaseOnStarte,
      duration: const Duration(seconds: 3),
      flushbarPosition: FlushbarPosition.TOP,
      // leftBarIndicatorColor: Colors.blue[300],
    ).show(context);
    // late OverlayEntry overlayEntry;
    // final timer = duration ?? configAwsome.duration;
    // //
    // var overlayEntry2 = OverlayEntry(
    //   builder: (context) {
    //     return Positioned(
    //       top: MediaQuery.of(context).size.height * .1,
    //       left: 0,
    //       right: 0,
    //       child: Container(
    //         color: state.colorBaseOnStarte,
    //         child: Row(
    //           children: [
    //             // icon base on state
    //             const SizedBox(width: 8),
    //             state.iconBaseOnState.withCircle(color: Colors.white),
    //             const SizedBox(width: 8),
    //             Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               mainAxisSize: MainAxisSize.min,
    //               children: [
    //                 Text(
    //                   state.msg ?? '',
    //                   overflow: TextOverflow.clip,
    //                   maxLines: 1,
    //                   style: const TextStyle(
    //                     fontSize: 20.0,
    //                     color: Colors.white,
    //                     fontWeight: FontWeight.bold,
    //                   ),
    //                 ),
    //                 // const SizedBox(height: 8.0),
    //                 Text(
    //                   state.descriptionMsg ?? '',
    //                   maxLines: 1,
    //                   overflow: TextOverflow.clip,
    //                   style: const TextStyle(
    //                     color: Colors.white,
    //                     fontSize: 20.0,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //     );
    //   },
    // );
    // //! remove the previous overlay
    // overlayEntry = overlayEntry2;
    // //! insert the new overlay
    // Overlay.of(context).insert(overlayEntry);
    // //! remove the overlay after the duration
    // Future.delayed(timer, () => overlayEntry.remove());
  }
}
