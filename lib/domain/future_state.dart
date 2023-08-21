import 'package:freezed_annotation/freezed_annotation.dart';

part 'future_state.freezed.dart';

@freezed
class FutureState<T> with _$FutureState {
  const factory FutureState.success(T data) = SuccessState;
  const factory FutureState.error(String error) = ErrorState;
  const factory FutureState.loading() = LoadingState;
  const factory FutureState.init() = InitState;
}
