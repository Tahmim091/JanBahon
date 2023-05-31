import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'widgets/menu_drawer.dart';
import 'widgets/profile_add_car_Service.dart';
import 'widgets/profile_car_card_widget.dart';
import 'widgets/profile_friend_card_widget.dart';

// ignore: camel_case_types
class profilePageScreen extends StatefulWidget {
  const profilePageScreen({super.key});

  @override
  State<profilePageScreen> createState() => _profilePageScreenState();
}

// ignore: camel_case_types
class _profilePageScreenState extends State<profilePageScreen> {
  GlobalKey<ScaffoldState> scaffolKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffolKey,
        backgroundColor: Colors.grey.shade200,
        endDrawer: menuDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {
                        scaffolKey.currentState?.openEndDrawer();
                      },
                      icon: Icon(Icons.menu_rounded),
                    ),
                  ),
                ],
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(800),
                  child: Image.asset(
                    'assets/images/Me.jpg',
                    width: 150,
                    height: 150,
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
                      'Friends',
                      style: Theme.of(context).textTheme.titleLarge?.apply(
                            fontSizeFactor: .8,
                            color: Colors.grey.shade800,
                          ),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.list,
                        color: Colors.blue,
                      ),
                      label: Text(
                        'See in list',
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
                  height: 150,
                  child: GridView.count(
                    scrollDirection: Axis.horizontal,
                    crossAxisCount: 1,
                    children: [
                      friendCard(),
                      friendCard(),
                      friendCard(),
                      friendCard(),
                    ],
                  ),
                ),
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
                  height: 600,
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 2,
                    children: const [
                      carCard(),
                      carCard(),
                      carCard(),
                      carCard(),
                      addCarCard(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 10,
                    color: Colors.grey.shade400,
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
