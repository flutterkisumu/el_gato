import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_fetch_state.freezed.dart';

/// The api fetch state
@freezed
class ApiFetchState<T> with _$ApiFetchState {
  /// This is the initial state when the app is first loaded
  factory ApiFetchState.initial() = _Initial;

  /// This is the loading state when the app is fetching data from the api
  factory ApiFetchState.loading() = _Loading;

  /// This is the success state when the app has successfully fetched data from
  /// the api
  factory ApiFetchState.success(T value) = _Success;

  /// This is the failed state when the app has failed to fetch data from the
  /// api
  factory ApiFetchState.failed(String e) = _Failed;
}
