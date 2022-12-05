import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_tracking/data/chat/chat_message.dart';
import 'package:order_tracking/data/repo/firebase_comments_repo.dart';

part 'order_comments_bloc.freezed.dart';
part 'order_comments_event.dart';
part 'order_comments_state.dart';

class OrderCommentBloc extends Bloc<OrderCommentsEvent, OrderCommentState> {
  late final StreamSubscription<ChatMessage> _subscription;
  //inject
  late final FirebaseCommentsRepo _repo = FirebaseCommentsRepo(orderId);

  final TextEditingController _controller = TextEditingController();

  TextEditingController get controller => _controller;

  final String orderId;
  final List<ChatMessage> _chats = [];
  OrderCommentBloc({required this.orderId})
      : super(
          OrderCommentState.empty(),
        ) {
    on<AddComment>(
      (event, emit) => emit(
        OrderCommentState.ready(
          messages: List.of(_chats),
        ),
      ),
    );

    on<SendComment>((event, emit) {
      final String s = _controller.text;
      _controller.clear();
      _repo.sendComment(comment: s);
    });

    _subscription = _repo.streamChats().listen(
      (message) {
        _chats.add(message);

        add(AddComment());
      },
    );
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
