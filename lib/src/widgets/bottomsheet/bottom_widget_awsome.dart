import '../txt_awsome.dart';
import 'package:flutter/material.dart';
import '../../config/config_awsome.dart';
import '../../style/txt_style_awsome.dart';
import '../../network/base_state_awsome.dart';
import 'package:awsome_tools/src/extensions/navigator_ext.dart';
import 'package:awsome_tools/src/extensions/screen_size_ext.dart';
import 'package:awsome_tools/src/extensions/icon_base_on_state.dart';
import 'package:awsome_tools/src/extensions/color_base_on_state.dart';
import 'package:awsome_tools/src/widgets/circle_widget_awsom_extension.dart';

class BottomSheetWidgetAwsome extends StatelessWidget {
  const BottomSheetWidgetAwsome({
    super.key,
    required this.state,
    this.useCutomDesignDialog,
    this.message,
  });
  final BaseState state;
  final bool? useCutomDesignDialog;
  final String? message;
  @override
  Widget build(BuildContext context) {
    final useDesign = useCutomDesignDialog ?? configAwsome.useCutomDesignDialog;
    if (useDesign) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // div
          Container(
            height: 120.0,
            width: double.infinity,
            padding: const EdgeInsets.all(0.0),
            // clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: state.colorBaseOnStarte,
            ),
            child: Stack(
              children: [
                /// icon close
                IconButton(
                  onPressed: context.pop,
                  icon: const Icon(Icons.close, color: Colors.white),
                ),
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
                      /// icon with circle
                      Container(
                        padding: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(.22),
                        ),
                        child: state.iconBaseOnState,
                      ),
                      const SizedBox(height: 10.0),
                      TxtAwsome(
                        state.msg ?? '',
                        // style: mediumStyle,
                        textAlign: TextAlign.center,
                        color: Colors.white,
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
              child: const TxtAwsome(
                'اغلاق',
                // style: regularStyle,
                color: Colors.white,
              ),
            ),
          ),
        ],
      );
    }
    return Container(
      width: context.width,
      padding: const EdgeInsets.all(20.0),
      // clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          state.iconColorBaseOnState().withCircle(
                color: state.colorBaseOnStarte,
                padding: EdgeInsets.all(configAwsome.defaultPadding),
              ),
          SizedBox(height: configAwsome.defaultPadding),
          TxtAwsome(
            state.msg ?? '',
            // style: mediumStyle,
            textAlign: TextAlign.center,
            color: state.colorBaseOnStarte,
          ),

          /// Overlay container
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MaterialButton(
              onPressed: context.pop,
              minWidth: context.width,
              color: state.colorBaseOnStarte,
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: configAwsome.defaultBorderRadius,
              ),
              child: const TxtAwsome(
                'اغلاق',
                // style: regularStyle,
                color: Colors.white,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
