part of 'order_comments_bloc.dart';

abstract class OrderCommentsEvent {}

class SendComment extends OrderCommentsEvent {}

class AddComment extends OrderCommentsEvent {}
