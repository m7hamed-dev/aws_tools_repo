class StringsAwsome {
  const StringsAwsome({
    this.success = 'العملية تمت بنجاح',
    this.loading = 'من فضلك انتظر',
    this.error = 'حدث خطأ',
    this.notAuth = 'غير مسجل معنا',
    this.warning = 'تنبيه !!',
    this.errorInfoLogin = 'تاكد من البيانات التي قمت بادخالها',
    this.noData = 'يجب ان يحتوي علي قيمه',
    this.textInputValidation = 'يجب ان يحتوي علي قيمه',
    this.textPhoneInputValidation = 'يجب ادخال رقم هاتف صحيح',
    this.networkError = 'Error occurred!',
  });

  ///
  final String success;
  final String loading;
  final String error;
  final String warning;
  final String networkError;
  final String noData;
  final String notAuth;
  final String errorInfoLogin;

  /// validations
  final String textInputValidation;
  final String textPhoneInputValidation;
}
