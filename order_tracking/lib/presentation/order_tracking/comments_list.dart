import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:order_tracking/data/chat/chat_message.dart';

/// @author Jalal Addin Okbi

class CommentsList extends StatelessWidget {
  const CommentsList({
    Key? key,
    required this.messages,
  }) : super(key: key);

  final List<ChatMessage> messages;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
        itemCount: messages.length,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        itemBuilder: (context, i) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              messages[i].userName,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    messages[i].message,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                const SizedBox(width: 16),
                Text(DateFormat.jm().format(messages[i].createdAt))
              ],
            ),
          ],
        ),
        separatorBuilder: (_, __) => const SizedBox(height: 16),
      ),
    );
  }
}
