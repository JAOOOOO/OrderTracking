import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_tracking/presentation/order_tracking/send_comment_widget.dart';

import 'bloc/comments_bloc/order_comments_bloc.dart';
import 'comments_list.dart';

///@author Jalal Addin Okbi
///
class OrderComments extends StatelessWidget {
  const OrderComments({
    Key? key,
    required this.orderId,
  }) : super(
          key: key,
        );

  final String orderId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderCommentBloc>(
      create: (context) => OrderCommentBloc(orderId: orderId),
      child: Builder(
        builder: (context) => Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 16),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, -2),
                  blurRadius: 16.0,
                  color:
                      Theme.of(context).colorScheme.tertiary.withOpacity(0.2),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlocBuilder<OrderCommentBloc, OrderCommentState>(
                  builder: (context, state) {
                    return state.map(
                      loading: (_) =>
                          const Center(child: CircularProgressIndicator()),
                      ready: (r) => CommentsList(messages: r.messages),
                      empty: (_) => const Center(
                        child: Text('start typing'),
                      ),
                      error: (_) => const Center(
                        child: Text('sorry :('),
                      ),
                    );
                  },
                ),
                SendCommentWidget(
                  onSend: () =>
                      context.read<OrderCommentBloc>().add(SendComment()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
