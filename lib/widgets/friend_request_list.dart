import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class friendRequest extends StatelessWidget {
  const friendRequest({
    super.key,
  });

  void profileView(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('profileView', arguments: {});
  }

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
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
            child: AutoSizeText(
              'Tahmim Jawad',
              maxLines: 1,
              style: Theme.of(context).textTheme.titleLarge?.apply(
                    fontSizeFactor: .8,
                  ),
            ),
          ),
          subtitle: Row(
            children: [
              SizedBox(
                height: _mediaQuery.size.width * .08,
                width: _mediaQuery.size.width * .24,
                child: ElevatedButton(
                  onPressed: () {},
                  child: AutoSizeText(
                    'Confirm',
                    maxLines: 1,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: _mediaQuery.size.width * .08,
                width: _mediaQuery.size.width * .24,
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
          trailing: AutoSizeText(
            '4d',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.apply(color: Colors.grey.shade700, fontSizeFactor: .65),
          ),
        ),
      ),
    );
  }
}
