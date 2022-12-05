// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetails _$$_OrderDetailsFromJson(Map<String, dynamic> json) =>
    _$_OrderDetails(
      orderId: json['orderId'] as String,
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      orderName: json['orderName'] as String,
      userName: json['userName'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$_OrderDetailsToJson(_$_OrderDetails instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'orderName': instance.orderName,
      'userName': instance.userName,
      'imageUrl': instance.imageUrl,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.preparingKnives: 0,
  OrderStatus.cuttingVegetables: 1,
  OrderStatus.cuttingMeat: 2,
  OrderStatus.cuttingChicken: 3,
  OrderStatus.onStove: 4,
  OrderStatus.inOven: 5,
  OrderStatus.addingButter: 6,
  OrderStatus.packaging: 7,
  OrderStatus.onTheRun: 8,
};
