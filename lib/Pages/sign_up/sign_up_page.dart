import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_and_signup/Pages/log_in/log_in_page.dart';
import 'package:login_and_signup/widgets/custom_button.dart';
import 'package:login_and_signup/widgets/custom_textfield.dart';
import 'package:login_and_signup/widgets/desc_and_page.dart';
import 'package:login_and_signup/widgets/text_title.dart';

import '../../constants.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/signup_top.png',
                  scale: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextTitle(title: 'SignUP'),
                    SizedBox(height: 20),
                    SvgPicture.asset(
                      'assets/icons/signup.svg',
                      fit: BoxFit.fill,
                      width: 300,
                      height: 300,
                    ),
                    SizedBox(height: 20),
                    CustomTextField(
                      icon: Icons.person,
                      hintText: "Enter your email",
                      obsText: false,
                    ),
                    SizedBox(height: 10),
                    CustomTextField(
                      icon: Icons.lock,
                      hintText: "Enter your password",
                      obsText: true,
                    ),
                    SizedBox(height: 10),
                    CustomButton(
                      title: "SignUp",
                      bgColor: kPrimaryColor,
                      color: kWhiteColor,
                      onPress: () {},
                    ),
                    SizedBox(height: 10),
                    DescAndPage(
                      namePage: "SignIn",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogIn(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
