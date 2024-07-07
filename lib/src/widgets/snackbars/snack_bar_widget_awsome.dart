import '../txt_awsome.dart';
import 'package:flutter/material.dart';
import '../../config/config_awsome.dart';
import '../../network/base_state_awsome.dart';
import 'package:awsome_tools/src/extensions/icon_base_on_state.dart';
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
          child: Row(
            children: [
              // icon base on state
              state.iconBaseOnState.withCircle(
                color: Colors.white.withOpacity(.12),
                padding: EdgeInsets.all(configAwsome.defaultPadding),
              ),
              SizedBox(width: configAwsome.defaultPadding),
              title == null
                  ? TxtAwsome(message ?? '', color: Colors.white)
                  : Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TxtAwsome(
                            title,
                            color: Colors.white,
                            overflow: TextOverflow.clip,
                          ),
                          // const SizedBox(height: 8.0),
                          TxtAwsome(
                            msg,
                            color: Colors.white,
                            overflow: TextOverflow.clip,
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        );
      },
    );
    Overlay.of(context).insert(overlayEntry);
    Future.delayed(timer, () => overlayEntry.remove());
  }
}
