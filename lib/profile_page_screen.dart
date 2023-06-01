import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:janbahon_v2/add_vehicle.dart';
import 'package:janbahon_v2/edit_vehicle.dart';
import 'package:janbahon_v2/friend_list_page.dart';
import 'package:janbahon_v2/widgets/menu_drawer.dart';
import 'package:janbahon_v2/widgets/profile_add_car_Service.dart';
import 'package:janbahon_v2/widgets/profile_car_card_widget.dart';
import 'package:janbahon_v2/widgets/profile_friend_card_widget.dart';

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
    var _mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        key: scaffolKey,
        backgroundColor: Colors.grey.shade200,
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
                    width: _mediaQuery.size.width * .38,
                    height: _mediaQuery.size.width * .38,
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
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          FriendListScreen.routeName,
                        );
                      },
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
                  height: _mediaQuery.size.height * .18,
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
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          EditVehicleScreen.routeName,
                        );
                      },
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
                  height: _mediaQuery.size.width * 1.5,
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 2,
                    children: [
                      ProfileCarCard(),
                      ProfileCarCard(),
                      ProfileCarCard(),
                      ProfileCarCard(),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              AddVehicleScreen.routeName,
                            );
                          },
                          child: addCarCard()),
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
        endDrawer: menuDrawer(),
      ),
    );
  }
}
