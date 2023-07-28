import 'package:awsome_tools/awsome_tools.dart';
import 'package:awsome_tools/src/extensions/color_base_on_state.dart';
import 'package:awsome_tools/src/extensions/icon_base_on_state.dart';
import 'package:flutter/material.dart';

class DialogWidgetAwsome extends StatelessWidget {
  const DialogWidgetAwsome({super.key, required this.state});
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
                        state.message,
                        style: regularStyle.copyWith(color: Colors.white),
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
}
