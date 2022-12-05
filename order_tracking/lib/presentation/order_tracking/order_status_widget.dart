import 'package:flutter/material.dart';
import 'package:order_tracking/data/order_details/order_status.dart';

/// @author Jalal Addin Okbi
class OrderStatusWidget extends StatelessWidget {
  const OrderStatusWidget({
    Key? key,
    required this.orderName,
    required this.status,
  }) : super(key: key);

  final String orderName;
  final OrderStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      color: Colors.white,
      child: Column(
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'To create your delicious',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                TextSpan(
                  text: '\n$orderName',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'We\'re now ${status.desc}',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
