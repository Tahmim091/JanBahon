import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import './widgets/signup_textfiled.dart';

class RegistrationPageScreen extends StatefulWidget {
  const RegistrationPageScreen({super.key});

  @override
  State<RegistrationPageScreen> createState() => _RegistrationPageScreenState();
}

class _RegistrationPageScreenState extends State<RegistrationPageScreen> {
  final firstName = TextEditingController();

  final emailAddress = TextEditingController();

  final accountPassword = TextEditingController();

  final phoneNumber = TextEditingController();

  final confirmPassword = TextEditingController();

  File? pickedImage;

  void registerNow(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('loginpage', arguments: {});
  }

  var _mediaQuery;
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
            height: _mediaQuery.size.height * .32,
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
                  SizedBox(
                    height: _mediaQuery.size.height * .05,
                    width: _mediaQuery.size.width * .02,
                    child: ElevatedButton.icon(
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
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: _mediaQuery.size.height * .05,
                    width: _mediaQuery.size.width * .02,
                    child: ElevatedButton.icon(
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
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: _mediaQuery.size.height * .05,
                    width: _mediaQuery.size.width * .02,
                    child: ElevatedButton.icon(
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
    _mediaQuery = MediaQuery.of(context);
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
                              width: _mediaQuery.size.height * .2,
                              height: _mediaQuery.size.height * .2,
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              'assets/images/man.png',
                              width: _mediaQuery.size.height * .2,
                              height: _mediaQuery.size.height * .2,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 5,
                    child: Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {
                          _imagePickerOption();
                        },
                        icon: const Icon(
                          Icons.camera_alt_outlined,
                          size: 20,
                          color: Colors.white,
                        ),
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
              child: SizedBox(
                height: _mediaQuery.size.height * .08,
                width: _mediaQuery.size.width * .02,
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
            ),
            const SizedBox(height: 35),
            SignUpTextFiled(
              controller: firstName,
              hintText: 'Name',
              obscureText: false,
            ),
            const SizedBox(height: 20),
            SignUpTextFiled(
              controller: emailAddress,
              hintText: 'Email',
              obscureText: false,
            ),
            const SizedBox(height: 20),
            SignUpTextFiled(
              controller: phoneNumber,
              hintText: 'Number',
              obscureText: false,
            ),
            const SizedBox(height: 20),
            SignUpTextFiled(
              controller: accountPassword,
              hintText: 'Password',
              obscureText: false,
            ),
            const SizedBox(height: 20),
            SignUpTextFiled(
              controller: confirmPassword,
              hintText: 'Confirm Password',
              obscureText: false,
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ElevatedButton(
                    onPressed: () {
                      print(firstName.text);
                      registerNow(context);
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
