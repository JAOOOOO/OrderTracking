part of 'order_details_bloc.dart';

@immutable
@freezed
class OrderDetailsState with _$OrderDetailsState {
  const factory OrderDetailsState.loading() = Loading;
  const factory OrderDetailsState.ready({required OrderDetails details}) =
      Ready;
  const factory OrderDetailsState.error({String? message}) = Error;
}
/*

class OrderDetailsLoading extends OrderDetailsState {}

class OrderDetailsReady extends OrderDetailsState {
  final OrderDetails details;

  OrderDetailsReady({required this.details});

  @override
  bool operator ==(Object other) {
    if (other is OrderDetailsReady) {
      return details == other.details;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => details.hashCode;
}

class OrderDetailsError extends OrderDetailsState {
  final String? message;

  OrderDetailsError({this.message});
}
*/
