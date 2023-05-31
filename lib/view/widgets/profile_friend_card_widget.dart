import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

// ignore: camel_case_types
class friendCard extends StatelessWidget {
  const friendCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 150,
              child: Image.asset(
                'assets/images/Amit.jpg',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Amit Hassan',
              style: Theme.of(context).textTheme.titleMedium?.apply(
                    fontSizeFactor: .7,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
