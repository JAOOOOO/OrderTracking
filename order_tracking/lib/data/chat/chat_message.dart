import 'package:freezed_annotation/freezed_annotation.dart';

///@author Jalal Addin Okbi
part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@freezed
class ChatMessage with _$ChatMessage {
  factory ChatMessage({
    required String userName,
    required DateTime createdAt,
    required String message,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}
