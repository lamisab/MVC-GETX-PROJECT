import 'package:flutter/material.dart';
import 'package:flutter_asro_shop/routes/routs.dart';
import 'package:flutter_asro_shop/utils/theme.dart';
import 'package:get/get.dart';

import '../widgets/text_utils.dart';

class WellcomScreen extends StatelessWidget {
  const WellcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
            width: double.infinity,
            height: double.infinity,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 100,
              ),
              Container(
                height: 60,
                width: 190,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: TextUtils(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    text: "Wellcme",
                    color: Colors.white,
                    underline: TextDecoration.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 230,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextUtils(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      text: "Asroo",
                      color: mainColor,
                      underline: TextDecoration.none,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    TextUtils(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      text: "Shop",
                      color: Colors.white,
                      underline: TextDecoration.none,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 250,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: mainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ),
                onPressed: () {
                  Get.offNamed(Routes.LoginScreen);
                },
                child: TextUtils(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  text: "Get Started",
                  color: Colors.white,
                  underline: TextDecoration.none,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextUtils(
                    fontSize: 18,
                    text: "Don't have an account",
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    underline: TextDecoration.none,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.offNamed(Routes.SignUpScreen);
                    },
                    child: TextUtils(
                      text: "Sign Up",
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      underline: TextDecoration.underline,
                    ),
                  ),
                ],
              )
            ]),
          )
        ],
      )),
    );
  }
}
