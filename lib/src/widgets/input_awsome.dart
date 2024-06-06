import 'txt_awsome.dart';
import '../config/config_awsome.dart';
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
    this.focusedBorder,
    this.enabledBorder,
    this.errorBorder,
    this.disabledBorder,
    this.border,
    this.focusedErrorBorder,
    this.fillColor,
    this.isSelectedALLText = false,
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
  final Color? fillColor;
  final bool isSelectedALLText;
  final InputBorder? focusedBorder,
      enabledBorder,
      errorBorder,
      disabledBorder,
      border,
      focusedErrorBorder;

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

  void selectAllText() {
    if (widget.controller != null && widget.isSelectedALLText) {
      widget.controller?.selection = TextSelection(
        baseOffset: 0,
        extentOffset: widget.controller?.text.length ?? 0,
      );
    }
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
    if (widget.inputDescription.isNotEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TxtAwsome(
            widget.isRequired
                ? '* ${widget.inputDescription}'
                : widget.inputDescription,
            style: TextStyle(
              color: widget.isRequired ? Colors.red : null,
            ),
          ),
          const SizedBox(height: 10.0),
          _buikdTxtFormField(),
        ],
      );
    }

    return _buikdTxtFormField();
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
        filled: widget.filled,
        hintText: widget.hint,
        fillColor: widget.fillColor,
        //! icons
        prefix: widget.prefixIcon,
        suffixIcon: _suffixIcon,
        //
        helperText: widget.helperText,
        focusedBorder: widget.focusedBorder,
        enabledBorder: widget.enabledBorder,
        errorBorder: widget.errorBorder,
        disabledBorder: widget.disabledBorder,
        border: widget.border,
        focusedErrorBorder: widget.focusedErrorBorder,
      ),
    );
  }

  Widget? _buildCounter(
    BuildContext context, {
    int? currentLength,
    int? maxLength,
    bool? isFocused,
  }) {
    return null;
  }

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
