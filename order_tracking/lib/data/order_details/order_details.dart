import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_tracking/data/order_details/order_status.dart';

part 'order_details.freezed.dart';
part 'order_details.g.dart';

///@author Jalal Addin Okbi

@freezed
class OrderDetails with _$OrderDetails {
  const factory OrderDetails({
    required String orderId,
    required OrderStatus status,
    required String orderName,
    required String userName,
    required String imageUrl,
  }) = _OrderDetails;

  factory OrderDetails.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsFromJson(json);
}
