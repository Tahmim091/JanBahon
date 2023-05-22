import 'package:flutter/material.dart';

class requestNotification extends StatelessWidget {
  const requestNotification({super.key});

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
          'Requested to be friend',
          style: Theme.of(context).textTheme.titleMedium?.apply(
                fontSizeFactor: .8,
              ),
        ),
        trailing: Column(
          children: [
            SizedBox(
              height: 23,
              width: 80,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Accept'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 23,
              width: 80,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Decline'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
