// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMessage _$$_ChatMessageFromJson(Map<String, dynamic> json) =>
    _$_ChatMessage(
      userName: json['userName'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_ChatMessageToJson(_$_ChatMessage instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'createdAt': instance.createdAt.toIso8601String(),
      'message': instance.message,
    };
