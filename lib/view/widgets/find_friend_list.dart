import 'package:flutter/material.dart';

class findFriend extends StatelessWidget {
  const findFriend({super.key});

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
        subtitle: SizedBox(
          height: 40,
          width: 120,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Add Friend'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
