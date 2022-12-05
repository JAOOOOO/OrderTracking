import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_tracking/data/order_details/order_details.dart';
import 'package:order_tracking/data/repo/firebase_order_details_repo.dart';

part 'order_details_bloc.freezed.dart';
part 'order_details_event.dart';
part 'order_details_state.dart';

class OrderDetailsBloc extends Bloc<OrderDetailsEvent, OrderDetailsState> {
  final String orderId;
  //Inject
  final FirebaseOrderDetailsRepo _repo = FirebaseOrderDetailsRepo();
  late final StreamSubscription<OrderDetails> _subscription;
  OrderDetailsBloc({required this.orderId})
      : super(const OrderDetailsState.loading()) {
    on<RefreshOrderState>(
      (event, emit) => emit(
        OrderDetailsState.ready(details: event.orderDetails),
      ),
    );

    _subscription =
        _repo.streamOrderDetails(orderId: orderId).listen((orderDetails) {
      add(RefreshOrderState(orderDetails));
    });
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
