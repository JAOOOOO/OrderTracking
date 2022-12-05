// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetails _$OrderDetailsFromJson(Map<String, dynamic> json) {
  return _OrderDetails.fromJson(json);
}

/// @nodoc
mixin _$OrderDetails {
  String get orderId => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  String get orderName => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailsCopyWith<OrderDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsCopyWith<$Res> {
  factory $OrderDetailsCopyWith(
          OrderDetails value, $Res Function(OrderDetails) then) =
      _$OrderDetailsCopyWithImpl<$Res, OrderDetails>;
  @useResult
  $Res call(
      {String orderId,
      OrderStatus status,
      String orderName,
      String userName,
      String imageUrl});
}

/// @nodoc
class _$OrderDetailsCopyWithImpl<$Res, $Val extends OrderDetails>
    implements $OrderDetailsCopyWith<$Res> {
  _$OrderDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? status = null,
    Object? orderName = null,
    Object? userName = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      orderName: null == orderName
          ? _value.orderName
          : orderName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderDetailsCopyWith<$Res>
    implements $OrderDetailsCopyWith<$Res> {
  factory _$$_OrderDetailsCopyWith(
          _$_OrderDetails value, $Res Function(_$_OrderDetails) then) =
      __$$_OrderDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderId,
      OrderStatus status,
      String orderName,
      String userName,
      String imageUrl});
}

/// @nodoc
class __$$_OrderDetailsCopyWithImpl<$Res>
    extends _$OrderDetailsCopyWithImpl<$Res, _$_OrderDetails>
    implements _$$_OrderDetailsCopyWith<$Res> {
  __$$_OrderDetailsCopyWithImpl(
      _$_OrderDetails _value, $Res Function(_$_OrderDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? status = null,
    Object? orderName = null,
    Object? userName = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_OrderDetails(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      orderName: null == orderName
          ? _value.orderName
          : orderName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDetails implements _OrderDetails {
  const _$_OrderDetails(
      {required this.orderId,
      required this.status,
      required this.orderName,
      required this.userName,
      required this.imageUrl});

  factory _$_OrderDetails.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDetailsFromJson(json);

  @override
  final String orderId;
  @override
  final OrderStatus status;
  @override
  final String orderName;
  @override
  final String userName;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'OrderDetails(orderId: $orderId, status: $status, orderName: $orderName, userName: $userName, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetails &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.orderName, orderName) ||
                other.orderName == orderName) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderId, status, orderName, userName, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDetailsCopyWith<_$_OrderDetails> get copyWith =>
      __$$_OrderDetailsCopyWithImpl<_$_OrderDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDetailsToJson(
      this,
    );
  }
}

abstract class _OrderDetails implements OrderDetails {
  const factory _OrderDetails(
      {required final String orderId,
      required final OrderStatus status,
      required final String orderName,
      required final String userName,
      required final String imageUrl}) = _$_OrderDetails;

  factory _OrderDetails.fromJson(Map<String, dynamic> json) =
      _$_OrderDetails.fromJson;

  @override
  String get orderId;
  @override
  OrderStatus get status;
  @override
  String get orderName;
  @override
  String get userName;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailsCopyWith<_$_OrderDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
