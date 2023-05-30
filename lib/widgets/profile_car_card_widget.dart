import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class carCard extends StatefulWidget {
  const carCard({super.key});

  @override
  State<carCard> createState() => _carCardState();
}

// ignore: camel_case_types
class _carCardState extends State<carCard> {
  @override
  Widget build(BuildContext context) {
    var value1 = false;
    var _mediaQuery = MediaQuery.of(context);
    return Container(
      height: _mediaQuery.size.height * .13,
      width: _mediaQuery.size.width * .22,
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
              height: _mediaQuery.size.height * .13,
              width: _mediaQuery.size.width * 1,
              child: Image.asset(
                'assets/images/car.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Toyota Premio',
                    style: Theme.of(context).textTheme.titleMedium?.apply(
                          fontSizeFactor: .7,
                        ),
                  ),
                  Text(
                    'MX2104',
                    style: Theme.of(context).textTheme.titleMedium?.apply(
                          fontSizeFactor: .7,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Service Status:',
                    style: Theme.of(context).textTheme.titleMedium?.apply(
                          fontSizeFactor: .7,
                        ),
                  ),
                  SizedBox(
                    height: 30.0,
                    width: 60.0,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: CupertinoSwitch(
                        value: value1,
                        onChanged: (val) {
                          setState(() {
                            value1 = val;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
