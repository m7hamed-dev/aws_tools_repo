class AppMessage {
  const AppMessage({
    required this.success,
    required this.loading,
    required this.error,
    required this.notAuth,
    required this.errorInfoLogin,
  });
  final String success;
  final String loading;
  final String error;
  final String notAuth;
  final String errorInfoLogin;
}
