import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_tracking/presentation/order_tracking/bloc/details_bloc/order_details_bloc.dart';
import 'package:order_tracking/presentation/order_tracking/order_tracking_ready.dart';

/// @author Jalal Addin Okbi

class OrderTrackingScreen extends StatelessWidget {
  const OrderTrackingScreen({
    Key? key,
    this.orderId = 'dd-id',
  }) : super(key: key);

  final String orderId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderDetailsBloc>(
      create: (context) => OrderDetailsBloc(orderId: orderId),
      child: Builder(
        builder: (context) => Scaffold(
          resizeToAvoidBottomInset: true,
          body: SafeArea(
            child: BlocBuilder<OrderDetailsBloc, OrderDetailsState>(
              builder: (context, state) {
                return state.map<Widget>(
                  loading: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  ready: (data) => OrderTrackingReady(
                    orderId: data.details.orderId,
                    orderName: data.details.orderName,
                    imageUrl: data.details.imageUrl,
                    userName: data.details.userName,
                    status: data.details.status,
                  ),
                  error: (err) => Center(
                    child: Text(err.message ?? 'sorry an error occurred :('),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
