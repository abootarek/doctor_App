import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

@freezed
class SignupState<T> with _$SignupState<T> {
  const factory SignupState.initial() = _Initial;

  const factory SignupState.loading() = SignUpLoading;

  const factory SignupState.success(T data) = SignUpSuccess<T>;

  const factory SignupState.error({required String error}) = SignUpError;
}
