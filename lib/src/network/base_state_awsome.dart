import 'package:awsome_tools/awsome_tools.dart';

/// ## This is an abstract class with some functions like
/// ## intialState , loadingState , errorState
abstract class IBaseState<Data> {
  /// Initialize the state to an initial state.
  ///
  /// This state typically represents the initial state of your data
  /// before any loading or processing begins.
  /// Initialize the state to an initial state.
  BaseState<Data> state = InitalState();

  /// Update the state to a new state [newState].
  ///
  /// Use this method to transition the state to a different state based on
  /// your application logic.
  void updateState(BaseState<Data> newState);
}

abstract class BaseState<Data> {
  const BaseState({this.message, this.data});
  final String? message;
  final Data? data;
}

class InitalState<Data> extends BaseState<Data> {}

class LoadingState<Data> extends BaseState<Data> {}

class WarningState<Data> extends BaseState<Data> {
  WarningState({this.warning})
      : super(message: warning ?? configAwsome.stringsAwsome.warning);
  final String? warning;
}

class ErrorState<Data> extends BaseState<Data> {
  ErrorState({this.error})
      : super(message: error ?? configAwsome.stringsAwsome.error);
  final String? error;
}

class NoDataState<Data> extends BaseState<Data> {
  NoDataState({this.noData})
      : super(message: noData ?? configAwsome.stringsAwsome.noData);
  final String? noData;
}

class NetworkErrorState<Data> extends BaseState<Data> {
  NetworkErrorState({this.netWorkError})
      : super(message: netWorkError ?? configAwsome.stringsAwsome.networkError);
  final String? netWorkError;
}

class SuccesState<Data> extends BaseState<Data> {
  SuccesState({
    required this.successData,
    this.successMessage,
  }) : super(data: successData, message: successMessage);
  final Data successData;
  final String? successMessage;
}

// Base Result class
/// [S] represents the type of the success value
/// [E] should be [Exception] or a subclass of it
// sealed class Result<S, E extends Exception> {
//   const Result();
// }

// final class Success<S, E extends Exception> extends Result<S, E> {
//   const Success(this.value);
//   final S value;
// }

// final class Failure<S, E extends Exception> extends Result<S, E> {
//   const Failure(this.exception);
//   final E exception;
// }
