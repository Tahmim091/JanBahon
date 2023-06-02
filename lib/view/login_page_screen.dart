import 'package:flutter/material.dart';
import './registration_page_screen.dart';
import './widgets/my_button.dart';
import './widgets/squire_tile.dart';
import './widgets/my_textfiled.dart';
import 'navigator.dart';

class LoginPageScreen extends StatelessWidget {
  static const routeName = '/loginPage';
  LoginPageScreen({super.key});
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 5),
                Image.asset(
                  'assets/images/janbahonWhite.png',
                  height: mediaQuery.size.height * .24,
                  width: mediaQuery.size.width * .42,
                ),

                //login
                const SizedBox(height: 25),
                MyTextFiled(
                  controller: userNameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                MyTextFiled(
                  controller: passwordController,
                  hintText: 'Pasword',
                  obscureText: true,
                ),
                //login end

                // password forget
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forget Password?',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),
                //end here

                const SizedBox(height: 25),
                MyButton(
                  onTap: () {
                    Navigator.pushNamed(context, MainNavigator.routeName);
                  },
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.shade400,
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or Continue With',
                        style: Theme.of(context).textTheme.titleMedium?.apply(
                            color: Colors.grey.shade700, fontSizeFactor: .7),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.shade400,
                    )),
                  ],
                ),
                const SizedBox(height: 30),
                const SquireTile(imgUrl: 'assets/images/google.png'),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have account?',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    const SizedBox(width: 4),

                    //signup
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          RegistrationPageScreen.routeName,
                        );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    //signup end
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
