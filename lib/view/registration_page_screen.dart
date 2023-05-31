import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import './widgets/signup_textfiled.dart';
import 'home_page_screen.dart';

class RegistrationPageScreen extends StatefulWidget {
  static const routeName = '/registrationPage';
  const RegistrationPageScreen({super.key});

  @override
  State<RegistrationPageScreen> createState() => _RegistrationPageScreenState();
}

class _RegistrationPageScreenState extends State<RegistrationPageScreen> {
  final firstName = TextEditingController();

  final lastName = TextEditingController();

  final emailAddress = TextEditingController();

  final accountPassword = TextEditingController();

  final phoneNumber = TextEditingController();

  final confirmPassword = TextEditingController();

  File? pickedImage;

  void registerNow(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('loginpage', arguments: {});
  }

  void _imagePickerOption() {
    Get.bottomSheet(
      SingleChildScrollView(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          child: Container(
            color: Colors.grey.shade200,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Pic Image From",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Quicksand',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.grey.shade200,
                    ),
                    onPressed: () {
                      _pickImage(ImageSource.camera);
                    },
                    icon: const Icon(Icons.camera),
                    label: const Text(
                      "CAMERA",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.grey.shade200,
                    ),
                    onPressed: () {
                      _pickImage(ImageSource.gallery);
                    },
                    icon: const Icon(Icons.image),
                    label: const Text(
                      "GALLERY",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 177, 22, 11),
                      foregroundColor: Colors.grey.shade100,
                    ),
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.close),
                    label: const Text(
                      "CANCEL",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _pickImage(ImageSource imageType) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });

      Get.back();
    } catch (error) {
      debugPrint(error.toString());
    }
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
          'Register',
          style: Theme.of(context).textTheme.titleLarge?.apply(
                color: Colors.black,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 5),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: ClipOval(
                      child: pickedImage != null
                          ? Image.file(
                              pickedImage!,
                              width: 170,
                              height: 170,
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              'assets/images/man.png',
                              width: 170,
                              height: 170,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 5,
                    child: IconButton(
                      onPressed: _imagePickerOption,
                      icon: const Icon(
                        Icons.add_a_photo_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.grey.shade200),
                onPressed: _imagePickerOption,
                icon: const Icon(Icons.add_a_photo_sharp),
                label: Text(
                  'UPLOAD IMAGE',
                  style: Theme.of(context).textTheme.titleLarge?.apply(
                        color: Colors.grey.shade200,
                        fontSizeFactor: .7,
                      ),
                ),
              ),
            ),
            const SizedBox(height: 35),
            signUpTextFiled(
              controller: firstName,
              hintText: 'Name',
              obscureText: false,
              context: context,
            ),
            const SizedBox(height: 20),
            signUpTextFiled(
              controller: emailAddress,
              hintText: 'Email',
              obscureText: false,
              context: context,
            ),
            const SizedBox(height: 20),
            signUpTextFiled(
              controller: phoneNumber,
              hintText: 'Number',
              obscureText: false,
              context: context,
            ),
            const SizedBox(height: 20),
            signUpTextFiled(
              controller: accountPassword,
              hintText: 'Password',
              obscureText: false,
              context: context,
            ),
            const SizedBox(height: 20),
            signUpTextFiled(
              controller: confirmPassword,
              hintText: 'Confirm Password',
              obscureText: false,
              context: context,
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ElevatedButton(
                    // onPressed: () => registerNow(context),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        HomePage.routeName,
                      );
                    },
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
                ),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
