import 'package:flutter/material.dart';

class noticeNotification extends StatelessWidget {
  const noticeNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade200,
      elevation: 1,
      margin: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 8,
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/Me.jpg'),
          onBackgroundImageError: (e, s) {
            debugPrint('image issue, $e,$s');
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            'Tahmim Jawad',
            style: Theme.of(context).textTheme.titleLarge?.apply(
                  fontSizeFactor: .8,
                ),
          ),
        ),
        subtitle: Text(
          'Accepted your frind request',
          style: Theme.of(context).textTheme.titleMedium?.apply(
                fontSizeFactor: .8,
              ),
        ),
      ),
    );
  }
}
