import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:vikncodes_machine_test/controller/login_screen_controller.dart';
import 'package:vikncodes_machine_test/view/constant/pallete.dart';
import 'package:vikncodes_machine_test/view/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final controller = Get.put(LoginScreenController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            height: height,
            width: width,
          ),
          Positioned(
            right: width * 0.5,
            bottom: height * 0.46,
            child: Container(
              height: height * 0.7,
              width: width,
              decoration: BoxDecoration(gradient: Palette.pink),
            ),
          ),
          Positioned(
            right: width * 0.5,
            top: height * 0.6,
            child: Container(
              height: height * 0.6,
              width: width,
              decoration: BoxDecoration(
                gradient: Palette.pink,
              ),
            ),
          ),
          Positioned(
            left: width * 0.3,
            top: height * 0.3,
            child: Container(
              height: height * 0.5,
              width: width,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: Palette.blue,
              ),
            ),
          ),
          Positioned(
            top: height * 0.1,
            left: width * 0.7,
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Image.asset('assets/language.png'),
                  const SizedBox(
                    width: 7,
                  ),
                  const Text('English')
                ],
              ),
            ),
          ),
          Positioned(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 22),
                ),
                const SizedBox(
                  height: 06,
                ),
                const Text(
                  'Login To Your vikn Account',
                  style: TextStyle(color: Palette.grey, fontSize: 14),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Palette.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    prefixIcon: Image.asset('assets/user.png'),
                                    hintText: 'Username',
                                    border: InputBorder.none),
                              ),
                            ),
                            const Divider(
                              thickness: 1.0,
                              color: Palette.grey,
                            ),
                            SizedBox(
                              height: 50,
                              child: Obx(
                                () => TextFormField(
                                  obscureText: controller.obscureText.value,
                                  decoration: InputDecoration(
                                      prefixIcon: Image.asset('assets/key.png'),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          controller.changeObscure();
                                        },
                                        icon: Image.asset('assets/eye.png'),
                                      ),
                                      hintText: 'Password',
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgotten Password?',
                    style: TextStyle(color: Palette.blue700, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 140,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Palette.blue700,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: width * 0.2,
            right: width * 0.2,
            top: height * .9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Don't Have An Account?",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
                const SizedBox(
                  height: 1,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up Now!?',
                    style: TextStyle(color: Palette.blue700, fontSize: 16),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
