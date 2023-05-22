import 'package:flutter/material.dart';

// ignore: camel_case_types
class addCarCard extends StatefulWidget {
  const addCarCard({super.key});

  @override
  State<addCarCard> createState() => _addCarCardState();
}

class _addCarCardState extends State<addCarCard> {
  @override
  Widget build(BuildContext context) {
    var value1 = false;
    return Container(
      height: 200,
      width: 200,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Icon(
              Icons.add_circle_rounded,
              size: 80,
              color: Colors.grey,
            ),
            Text(
              'Add Car',
              style: Theme.of(context).textTheme.titleMedium?.apply(
                    fontSizeFactor: .8,
                    color: Colors.grey,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
