import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:order_tracking/presentation/order_tracking/util/oreder_details_image_painter.dart';

/// @author Jalal Addin Okbi
class OrderDetailsImage extends StatelessWidget {
  const OrderDetailsImage({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: OrderDetailsImagePainter(),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        height: 240,
      ),
    );
  }
}
