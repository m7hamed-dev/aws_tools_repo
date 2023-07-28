import 'package:awsome_tools/awsome_tools.dart';

class InputsValidation {
  static String? emptyField(String? value, bool condition) =>
      !condition ? configAwsome.appMessage?.textInputValidation : null;
  static String? phoneNumber(String? value, bool condition) {
    if (value != null) {
      // if (!value.startsWith('05') || value.length != 10) {
      if (!condition) {
        return configAwsome.appMessage?.textPhoneInputValidation;
        // return 'يجب ان يبدا رقم هاتفك ب 05 وان يتكون من 10 ارقام';
      }
    }
    return value!.isEmpty ? ' يجب ان يحتوي علي قيمه ' : null;
  }
}
