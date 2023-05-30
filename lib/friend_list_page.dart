import 'package:flutter/material.dart';
import 'package:janbahon_v2/widgets/friends.dart';

class friendList extends StatelessWidget {
  const friendList({super.key});

  void profileView(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('profileView', arguments: {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Friend List',
          style: Theme.of(context).textTheme.titleLarge?.apply(
                color: Colors.black,
              ),
        ),
      ),
      body: ListView(
        children: [
          friend(),
          friend(),
          friend(),
          friend(),
          friend(),
          friend(),
        ],
      ),
    );
  }
}
