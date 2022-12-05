part of 'order_details_bloc.dart';

@immutable
abstract class OrderDetailsEvent {}

class RefreshOrderState extends OrderDetailsEvent {
  final OrderDetails orderDetails;

  RefreshOrderState(this.orderDetails);
}
