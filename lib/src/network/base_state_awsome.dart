import '../config/config_awsome.dart';

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
  const BaseState({this.msg, this.requiredData, this.descriptionMsg});
  final String? msg;
  final String? descriptionMsg;
  final Data? requiredData;
}

class InitalState<Data> extends BaseState<Data> {}

class LoadingState<Data> extends BaseState<Data> {}

class WarningState<Data> extends BaseState<Data> {
  WarningState({this.message, this.description})
      : super(
          msg: message ?? configAwsome.stringsAwsome.warning,
          descriptionMsg: description,
        );
  //!
  final String? message;
  final String? description;
}

class ErrorState<Data> extends BaseState<Data> {
  ErrorState({
    this.message,
    this.description,
  }) : super(
          msg: message ?? configAwsome.stringsAwsome.error,
          descriptionMsg: description,
        );
  final String? message;
  final String? description;
}

class EmptyState<Data> extends BaseState<Data> {
  EmptyState({this.message, this.description})
      : super(
          msg: message ?? configAwsome.stringsAwsome.noData,
          descriptionMsg: description,
        );
  final String? message;
  final String? description;
}

class NetworkErrorState<Data> extends BaseState<Data> {
  NetworkErrorState({this.message, this.description})
      : super(
          msg: message ?? configAwsome.stringsAwsome.networkError,
          descriptionMsg: description,
        );
  final String? message;
  final String? description;
}

class SuccesState<Data> extends BaseState<Data> {
  SuccesState({
    required this.data,
    required this.description,
    this.message = 'العملية تمت بصورة صحيحة',
  }) : super(
          requiredData: data,
          msg: message,
          descriptionMsg: description,
        );
  //! Data required
  final Data data;
  final String message;
  final String description;
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
