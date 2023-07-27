class AppMessage {
  const AppMessage({
    this.success = 'العملية تمت بنجاح',
    this.loading = 'من فضلك انتظر',
    this.error = 'حدث خطأ',
    this.notAuth = 'غير مسجل معنا',
    this.errorInfoLogin = 'تاكد من البيانات التي قمت بادخالها',
    this.textInputValidation = 'يجب ان يحتوي علي قيمه',
    this.textPhoneInputValidation = 'يجب ادخال رقم هاتف صحيح',
  });

  ///
  final String success;
  final String loading;
  final String error;
  final String notAuth;
  final String errorInfoLogin;

  /// validations
  final String textInputValidation;
  final String textPhoneInputValidation;
}
