import 'package:awsome_tools/awsome_tools.dart';
import 'package:awsome_tools/src/config/config_awsome.dart';
import 'package:flutter/material.dart';

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
        elevation: 10.0,
        clipBehavior: Clip.antiAlias,
        contentPadding: const EdgeInsets.only(
          top: 0.0,
          left: 0.0,
          right: 0.0,
        ),
        // clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50.0,
              height: 6.0,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: Color.fromARGB(255, 220, 220, 220),
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.grey.withOpacity(.12),
                  child: Icon(
                    Icons.error,
                    color: configAwsome.appColors.primaryColor,
                    size: 44.0,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  (state is ErrorState)
                      ? 'خطأ'
                      : (state is WarningState)
                          ? 'تحذير'
                          : 'نجاح',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.8),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w900,
                    fontFamily: configAwsome.fontFamily,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    state.txtBaseState('no data !!'),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                      fontFamily: configAwsome.fontFamily,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: MaterialButton(
                    minWidth: 90.0,
                    onPressed: context.pop,
                    elevation: 0.0,
                    color: state.colorBaseOnStarte,
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
