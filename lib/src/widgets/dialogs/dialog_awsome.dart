import 'package:flutter/material.dart';
import 'package:awsome_tools/awsome_tools.dart';
import 'package:awsome_tools/src/extensions/icon_base_on_state.dart';
import 'package:awsome_tools/src/extensions/color_base_on_state.dart';

class DialogBodyWidget extends StatelessWidget {
  const DialogBodyWidget({
    super.key,
    required this.state,
    this.title,
    this.message,
    this.useCutomDesignDialog = true,
    this.useAnimation = false,
  });
  //
  final bool useCutomDesignDialog;
  final Widget? title;
  final String? message;
  final BaseState state;
  final bool useAnimation;
  //
  @override
  Widget build(BuildContext context) {
    /// create a dialog with custom Design
    if (useCutomDesignDialog) {
      return AlertDialog.adaptive(
        elevation: 20.0,
        contentPadding: const EdgeInsets.only(
          top: 10.0,
          left: 10.0,
          right: 10.0,
        ),
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
                color: state.colorBaseOnStarte,
              ),
              child: Stack(
                children: [
                  /// icon close
                  IconButton(
                    onPressed: context.pop,
                    icon: const Icon(Icons.close, color: Colors.white),
                  ),

                  /// circle
                  Positioned(
                    top: -80,
                    right: -20,
                    bottom: 0.0,
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(.22),
                      ),
                    ),
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
                        /// icon base on state with animation
                        useAnimation
                            ? Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(.18),
                                ),
                                child: GlowCircleAnimationAwsome(
                                  glowColor:
                                      configAwsome.appColors.primaryColor,
                                  child: state.iconBaseOnState,
                                ),
                              )

                            /// icon base on state without Animation
                            : Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(.18),
                                ),
                                child: state.iconBaseOnState,
                              ),

                        /// some height
                        const SizedBox(height: 10.0),

                        /// text
                        TxtAwsome(
                          message ??
                              state.message ??
                              state.txtBaseState('string'),
                          style: mediumStyle.copyWith(color: Colors.white),
                        ),
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
                color: state.colorBaseOnStarte,
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: configAwsome.defaultBorderRadius,
                ),
                child: TxtAwsome(
                  'اغلاق',
                  style: regularStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      );
    }

    /// use dialog without custom design
    return AlertDialog.adaptive(
      elevation: 20.0,
      contentPadding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      actionsPadding: const EdgeInsets.only(
        bottom: 10.0,
        right: 10.0,
        top: 10.0,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      content: TxtAwsome(
        state.message ?? state.txtBaseState('s'),
        style: mediumStyle.copyWith(),
      ),
      actions: [
        MaterialButton(
          onPressed: context.pop,
          elevation: 0.0,
          color: state.colorBaseOnStarte,
          child: TxtAwsome(
            'ok',
            style: mediumStyle.copyWith(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}
