part of 'order_comments_bloc.dart';

@freezed
class OrderCommentState with _$OrderCommentState {
  factory OrderCommentState.loading() = Loaidng;
  factory OrderCommentState.ready({
    required List<ChatMessage> messages,
  }) = Chats;
  factory OrderCommentState.empty() = Empty;
  factory OrderCommentState.error({String? message}) = Error;
}
