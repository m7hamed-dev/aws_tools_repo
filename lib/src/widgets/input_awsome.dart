import 'package:awsome_tools/src/widgets/txt_awsome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../config/config_awsome.dart';
import '../constants/constants.dart';

class Input extends StatefulWidget {
  ///
  const Input({
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
    this.isShowBuildCounter = false,
    this.prefixIcon = const SizedBox(),
    this.suffixIcon = const SizedBox(),
    this.isRequired = false,
    this.filled = false,
    this.inputType = InputTypes.text,
  }) : super(key: key);

  ///
  final TextAlign? textAlign;
  final String inputDescription;
  final String hint;
  final TextEditingController? controller;
  final int maxLines;
  final int maxLength;
  final bool isShowBuildCounter;
  final bool isRequired;
  final bool filled;
  final void Function(String)? onChange;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final Widget suffixIcon, prefixIcon;
  final InputTypes inputType;

  ///
  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  //
  bool obscureText = false;
  //
  void _changeObscureText() {
    obscureText = !obscureText;
    setState(() {});
  }

  void _setPasswordByTrue() {
    if (widget.inputType == InputTypes.password) {
      obscureText = true;
    } else {
      obscureText = false;
    }
  }

  @override
  void initState() {
    _setPasswordByTrue();
    super.initState();
  }

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
            // style: maraiRegular,
            // color: widget.isRequired ? Colors.red : null,
          ),
          const SizedBox(height: defaultPadding - 10.0),
          _buikdTxtFormField(),
        ],
      );
    }
    return _buikdTxtFormField();
  }

  TextFormField _buikdTxtFormField() {
    return TextFormField(
      // style: maraiRegular.copyWith(
      //   color: isDark
      //       ? const Color.fromARGB(255, 243, 239, 239)
      //       : const Color.fromARGB(255, 0, 0, 0),
      // ),
      cursorHeight: 12.0,
      // cursorColor: isDark
      //     ? const Color.fromARGB(255, 243, 239, 239)
      //     : const Color.fromARGB(255, 0, 0, 0),
      controller: widget.controller,
      autofocus: false,
      maxLength: widget.maxLength,
      maxLines: widget.maxLines,
      keyboardType: keyboardType,
      obscureText:
          widget.inputType == InputTypes.password ? false : obscureText,
      textAlign: widget.textAlign ?? TextAlign.right,
      inputFormatters: inputFormatters,
      buildCounter: _buildCounter,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      onChanged: widget.onChange,
      autocorrect: false,
      decoration: InputDecoration(
        filled: widget.filled,
        // fillColor: HexColor('#f5f7fb'),
        hintText: widget.hint,
        // suffixIcon: _buildSuffixIcon(theme.isDark),
        prefixIcon: widget.prefixIcon,
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

  // String get obscureImage => obscureText ? AppAssets.bell : AppAssets.delete;
}
