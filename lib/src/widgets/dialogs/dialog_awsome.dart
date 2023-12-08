import '../txt_awsome.dart';
import 'package:flutter/material.dart';
import '../../config/config_awsome.dart';
import '../../style/txt_style_awsome.dart';
import '../../network/base_state_awsome.dart';
import 'package:awsome_tools/src/extensions/navigator_ext.dart';
import 'package:awsome_tools/src/extensions/txt_base_on_state.dart';
import 'package:awsome_tools/src/extensions/icon_base_on_state.dart';
import 'package:awsome_tools/src/extensions/color_base_on_state.dart';
import 'package:awsome_tools/src/widgets/circle_widget_awsom_extension.dart';

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
      return AlertDialog(
        elevation: 20.0,
        clipBehavior: Clip.antiAlias,
        contentPadding: const EdgeInsets.only(
          top: 0.0,
          left: 0.0,
          right: 0.0,
        ),
        // clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          // borderRadius: configAwsome.defaultBorderRadius,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(0.0),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: state.colorBaseOnStarte,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: -10.0,
                    right: -10,
                    child: const SizedBox(
                      width: 50,
                      height: 50,
                    ).withCircle(
                      color: Colors.white.withOpacity(.12),
                    ),
                  ),
                  Positioned(
                    top: -20.0,
                    right: -10,
                    // bottom: 10,
                    child: const SizedBox(
                      width: 70,
                      height: 70,
                    ).withCircle(
                      color: Colors.white.withOpacity(.12),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10),
                        state
                            .iconColorBaseOnState(
                                color: Colors.white, size: 40.0)
                            .withCircle(
                              padding: const EdgeInsets.all(10.0),
                              color: Colors.white.withOpacity(.22),
                            ),
                        const SizedBox(height: 10),
                        TxtAwsome(
                          message ?? state.msg ?? state.txtBaseState('string'),
                          style: boldStyle,
                          color: Colors.white,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(
                onPressed: context.pop,
                color: state.colorBaseOnStarte,
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: configAwsome.defaultBorderRadius,
                ),
                child: TxtAwsome(
                  'اغلاق',
                  style: regularStyle,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    }

    //! use Dialog without custom design
    return AlertDialog.adaptive(
      elevation: 20.0,
      contentPadding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      actionsPadding: const EdgeInsets.only(
        bottom: 10.0,
        right: 10.0,
        top: 10.0,
      ),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: configAwsome.defaultBorderRadius,
      ),
      content: TxtAwsome(
        message ?? state.msg ?? state.txtBaseState('s'),
        style: blackStyle,
        color: state.colorBaseOnStarte,
      ),
      actions: [
        MaterialButton(
          onPressed: context.pop,
          elevation: 0.0,
          color: state.colorBaseOnStarte,
          shape: RoundedRectangleBorder(
            borderRadius: configAwsome.defaultBorderRadius,
          ),
          child: TxtAwsome(
            'موافق',
            color: Colors.black,
            fontSize: 16.0,
            style: mediumStyle,
          ),
        ),
      ],
    );
  }
}
