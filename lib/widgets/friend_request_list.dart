import 'package:flutter/material.dart';

class friendRequest extends StatelessWidget {
  const friendRequest({
    super.key,
  });

  void profileView(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('profileView', arguments: {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        profileView(context);
      },
      child: Card(
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
          subtitle: Row(
            children: [
              SizedBox(
                height: 30,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Confirm'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 30,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Delete'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          trailing: Text(
            '4 day',
            style: Theme.of(context).textTheme.titleMedium?.apply(
                  color: Colors.grey.shade700,
                  fontSizeFactor: .7,
                ),
          ),
        ),
      ),
    );
  }
}
