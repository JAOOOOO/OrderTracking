import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:order_tracking/data/chat/chat_message.dart';

///@author Jalal Addin Okbi

class FirebaseCommentsRepo {
  final FirebaseDatabase _db = FirebaseDatabase.instance;
  final String orderId;

  FirebaseCommentsRepo(this.orderId);

  Stream<ChatMessage> streamChats() {
    DatabaseReference doc = _db.ref('/chats/$orderId/');
    return doc.onChildAdded.map((event) {
      print('CHILD ADDED');
      final s = jsonDecode(
        jsonEncode(event.snapshot.value),
      );

      return ChatMessage.fromJson(
        s,
      );
    });
  }

  Future<void> sendComment({required String comment}) async {
    DatabaseReference doc = _db.ref('/chats/$orderId/').push();
    doc.set(
      ChatMessage(
        userName: 'User. JAO',
        createdAt: DateTime.now(),
        message: comment,
      ).toJson(),
    );
  }
}
