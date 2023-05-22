import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class menuDrawer extends StatelessWidget {
  const menuDrawer({super.key});

  void editProfile(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('edit', arguments: {});
  }

  void logOut(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('loginpage', arguments: {});
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey.shade200,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(800),
                    child: Image.asset(
                      'assets/images/Me.jpg',
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Tahmim Jawad',
                    style: Theme.of(context).textTheme.titleLarge?.apply(
                          fontSizeFactor: .8,
                          color: Colors.white,
                        ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'tahamimjawad@gmail.com',
                    style: Theme.of(context).textTheme.titleMedium?.apply(
                          fontSizeFactor: .7,
                          color: Colors.grey.shade500,
                        ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      editProfile(context);
                    },
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                    label: Text(
                      'Edit Profile',
                      style: Theme.of(context).textTheme.titleLarge?.apply(
                            fontSizeFactor: .8,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.people_alt,
                      color: Colors.black,
                    ),
                    label: Text(
                      'Friends',
                      style: Theme.of(context).textTheme.titleLarge?.apply(
                            fontSizeFactor: .8,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/images/carSettings.png",
                      height: 25,
                    ),
                    label: Text(
                      'Edit Services',
                      style: Theme.of(context).textTheme.titleLarge?.apply(
                            fontSizeFactor: .8,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/images/aboutUs.png",
                      height: 25,
                    ),
                    label: Text(
                      'About Us',
                      style: Theme.of(context).textTheme.titleLarge?.apply(
                            fontSizeFactor: .8,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      logOut(context);
                    },
                    icon: Icon(
                      Icons.logout,
                      color: Colors.red.shade600,
                    ),
                    label: Text(
                      'LogOut',
                      style: Theme.of(context).textTheme.titleLarge?.apply(
                            fontSizeFactor: .8,
                            color: Colors.red.shade600,
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
