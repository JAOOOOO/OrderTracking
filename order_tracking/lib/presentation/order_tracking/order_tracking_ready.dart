import 'package:flutter/material.dart';
import 'package:order_tracking/data/order_details/order_status.dart';
import 'package:order_tracking/presentation/order_tracking/order_comments.dart';
import 'package:order_tracking/presentation/order_tracking/order_details_image.dart';
import 'package:order_tracking/presentation/order_tracking/order_status_widget.dart';

/// @author Jalal Addin Okbi
class OrderTrackingReady extends StatelessWidget {
  const OrderTrackingReady({
    Key? key,
    required this.orderName,
    required this.imageUrl,
    required this.userName,
    required this.status,
    required this.orderId,
  }) : super(key: key);

  final String orderId;
  final String orderName;
  final String imageUrl;
  final String userName;
  final OrderStatus status;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Text(
                    'Your meal is getting ready, $userName!',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                OrderDetailsImage(imageUrl: imageUrl),
                OrderStatusWidget(
                  orderName: orderName,
                  status: status,
                ),
                Expanded(
                  child: OrderComments(
                    orderId: orderId,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
