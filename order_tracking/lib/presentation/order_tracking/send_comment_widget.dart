import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:order_tracking/presentation/order_tracking/bloc/comments_bloc/order_comments_bloc.dart';

class SendCommentWidget extends StatelessWidget {
  const SendCommentWidget({
    Key? key,
    this.onSend,
  }) : super(key: key);

  final VoidCallback? onSend;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextFormField(
              controller: context.read<OrderCommentBloc>().controller,
              decoration: InputDecoration(
                hintText: 'type your message here',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).highlightColor,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(24),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: onSend,
            icon: const Icon(
              FontAwesomeIcons.solidPaperPlane,
            ),
          )
        ],
      ),
    );
  }
}
