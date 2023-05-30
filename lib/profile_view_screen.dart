import 'package:flutter/material.dart';
import 'package:janbahon_v2/widgets/profile_car_card_widget.dart';

// ignore: camel_case_types
class profileViewScreen extends StatefulWidget {
  const profileViewScreen({super.key});

  @override
  State<profileViewScreen> createState() => _profileViewScreenState();
}

// ignore: camel_case_types
class _profileViewScreenState extends State<profileViewScreen> {
  GlobalKey<ScaffoldState> scaffolKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        key: scaffolKey,
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade200,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(800),
                  child: Image.asset(
                    'assets/images/Me.jpg',
                    width: _mediaQuery.size.width * .38,
                    height: _mediaQuery.size.height * .18,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Tahmim Jawad',
                style: Theme.of(context).textTheme.titleLarge?.apply(
                      fontSizeFactor: .9,
                    ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'tahamimjawad@gmail.com',
                style: Theme.of(context).textTheme.titleMedium?.apply(
                      fontSizeFactor: .7,
                      color: Colors.grey.shade700,
                    ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 10,
                      ),
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.grey.shade200,
                    ),
                    child: Text(
                      'Confirm',
                      style: Theme.of(context).textTheme.titleLarge?.apply(
                            color: Colors.grey.shade200,
                            fontSizeFactor: .7,
                          ),
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 10,
                      ),
                      backgroundColor: Colors.red.shade700,
                      foregroundColor: Colors.grey.shade200,
                    ),
                    child: Text(
                      'Delete',
                      style: Theme.of(context).textTheme.titleLarge?.apply(
                            color: Colors.grey.shade200,
                            fontSizeFactor: .7,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 10,
                    color: Colors.grey.shade300,
                  )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Car at service',
                      style: Theme.of(context).textTheme.titleLarge?.apply(
                            fontSizeFactor: .8,
                            color: Colors.grey.shade800,
                          ),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.blue,
                      ),
                      label: Text(
                        'Edit',
                        style: Theme.of(context).textTheme.titleMedium?.apply(
                              fontSizeFactor: .8,
                              color: Colors.blue,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: _mediaQuery.size.height * .5,
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 2,
                    children: const [
                      carCard(),
                      carCard(),
                      carCard(),
                      carCard(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
