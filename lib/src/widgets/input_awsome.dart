import 'package:awsome_tools/awsome_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputWidgetAwsome extends StatefulWidget {
  const InputWidgetAwsome({
    Key? key,
    this.inputDescription = '',
    this.textAlign,
    this.hint = '',
    this.controller,
    this.maxLines = 1,
    this.maxLength = 120,
    this.onChange,
    this.validator,
    this.onFieldSubmitted,
    this.prefixIcon = const SizedBox(),
    this.suffixIcon = const SizedBox(),
    this.isRequired = false,
    this.filled = false,
    this.inputType = InputTypes.text,
    this.helperText,
  }) : super(key: key);

  ///
  final TextAlign? textAlign;
  final String inputDescription;
  final String hint;
  final TextEditingController? controller;
  final int maxLines;
  final int maxLength;
  final bool isRequired;
  final bool filled;
  final void Function(String)? onChange;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final Widget suffixIcon, prefixIcon;
  final InputTypes inputType;
  final String? helperText;
  @override
  State<InputWidgetAwsome> createState() => _InputWidgetAwsomeState();
}

class _InputWidgetAwsomeState extends State<InputWidgetAwsome> {
  //
  bool obscureText = false;
  //
  void _changeObscureText() {
    obscureText = !obscureText;
    setState(() {});
  }

  // void _setPasswordByTrue() {
  //   if (widget.inputType == InputTypes.password) {
  //     obscureText = true;
  //   } else {
  //     obscureText = false;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final input = switch (widget.isRequired) {
      true => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TxtAwsome(
              widget.isRequired
                  ? '* ${widget.inputDescription}'
                  : widget.inputDescription,
              style: regularStyle.copyWith(
                color: widget.isRequired ? Colors.red : null,
              ),
            ),
            const SizedBox(height: 10.0),
            _buikdTxtFormField(),
          ],
        ),
      _ => _buikdTxtFormField(),
    };

    return input;
  }

  TextFormField _buikdTxtFormField() {
    return TextFormField(
      controller: widget.controller,
      autofocus: false,
      maxLength: widget.maxLength,
      maxLines: widget.maxLines,
      keyboardType: keyboardType,
      obscureText: obscureText,
      obscuringCharacter: '*',
      textAlign: widget.textAlign ?? TextAlign.right,
      inputFormatters: inputFormatters,
      buildCounter: _buildCounter,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      onChanged: widget.onChange,
      autocorrect: false,
      decoration: InputDecoration(
        helperText: widget.helperText,
        // helperStyle: regularStyle.copyWith(
        //   fontSize: 9.0,
        //   color: configAwsome.appColors.primaryColor,
        // ),
        // errorStyle: regularStyle.copyWith(fontSize: 14.0, color: Colors.red),
        filled: widget.filled,
        hintText: widget.hint,
        prefixIcon: widget.prefixIcon,
        suffixIcon: _suffixIcon,
      ),
    );
  }

  Widget? _buildCounter(
    BuildContext context, {
    int? currentLength,
    int? maxLength,
    bool? isFocused,
  }) =>
      null;

  TextInputType? get keyboardType => widget.inputType == InputTypes.number
      ? TextInputType.number
      : widget.inputType == InputTypes.number
          ? TextInputType.number
          : null;

  List<TextInputFormatter>? get inputFormatters {
    return [
      widget.inputType == InputTypes.number
          ? FilteringTextInputFormatter.digitsOnly
          : FilteringTextInputFormatter.singleLineFormatter
    ];
  }

  Widget get _suffixIcon {
    return switch (widget.inputType) {
      InputTypes.password => IconButton(
          padding: const EdgeInsets.all(0.0),
          onPressed: _changeObscureText,
          icon: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: Icon(
              obscureText ? Icons.visibility_off : Icons.visibility,
              key: ValueKey<bool>(obscureText),
              size: obscureText ? 18.0 : 22.0,
            ),
          ),
        ),
      _ => widget.suffixIcon,
    };
  }
}
