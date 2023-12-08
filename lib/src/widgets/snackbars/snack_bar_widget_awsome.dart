import '../txt_awsome.dart';
import 'package:flutter/material.dart';
import '../../config/config_awsome.dart';
import '../../style/txt_style_awsome.dart';
import '../../network/base_state_awsome.dart';
import 'package:awsome_tools/src/extensions/screen_size_ext.dart';
import 'package:awsome_tools/src/extensions/icon_base_on_state.dart';
import 'package:awsome_tools/src/extensions/color_base_on_state.dart';
import 'package:awsome_tools/src/constants/constant_values_awsome.dart';
import 'package:awsome_tools/src/widgets/circle_widget_awsom_extension.dart';

class SnackBarWidgetAwsome {
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
    final msg = message ?? state.msg ?? '';
    late OverlayEntry overlayEntry;
    overlayEntry = OverlayEntry(
      builder: (context) {
        return Positioned(
          top: MediaQuery.of(context).size.height * .1,
          left: 0,
          right: 0,
          child: Material(
            color: Colors.transparent,
            child: Container(
              // padding: const EdgeInsets.all(defaultPaddingAws),
              width: context.width,
              decoration: BoxDecoration(
                color: state.colorBaseOnStarte,
                boxShadow: [
                  BoxShadow(
                    color: state.colorBaseOnStarte.withOpacity(.2),
                    spreadRadius: 10.0,
                    blurRadius: 10.0,
                  )
                ],
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Row(
                    children: [
                      // icon base on state
                      state.iconBaseOnState.withCircle(
                        color: Colors.white.withOpacity(.12),
                        padding: EdgeInsets.all(configAwsome.defaultPadding),
                      ),
                      SizedBox(width: configAwsome.defaultPadding),
                      title == null
                          ? TxtAwsome(
                              message ?? '',
                              style: boldStyle,
                              color: Colors.white,
                            )
                          : Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TxtAwsome(
                                    title,
                                    style: boldStyle,
                                    color: Colors.white,
                                    overflow: TextOverflow.clip,
                                  ),
                                  // const SizedBox(height: 8.0),
                                  TxtAwsome(
                                    msg,
                                    style: mediumStyle,
                                    color: Colors.white,
                                    overflow: TextOverflow.clip,
                                  ),
                                ],
                              ),
                            ),
                    ],
                  ),
                  Positioned(
                    top: -20,
                    right: -50,
                    bottom: 0,
                    child: const SizedBox(
                      width: 50.0,
                      height: 50.0,
                    ).withCircle(
                      color: Colors.white.withOpacity(.12),
                      padding: const EdgeInsets.all(10.0),
                    ),
                  ),
                  Positioned(
                    top: -40,
                    right: -30,
                    child: const SizedBox(
                      width: 50.0,
                      height: 50.0,
                    ).withCircle(
                      color: Colors.white.withOpacity(.12),
                      padding: const EdgeInsets.all(10.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
    Overlay.of(context).insert(overlayEntry);
    Future.delayed(timer, () => overlayEntry.remove());
  }
}
