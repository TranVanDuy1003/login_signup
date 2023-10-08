import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_and_signup/Pages/log_in/widgets/login_bg_bottom.dart';
import 'package:login_and_signup/Pages/sign_up/sign_up_page.dart';
import 'package:login_and_signup/widgets/background_top.dart';
import 'package:login_and_signup/widgets/custom_button.dart';
import 'package:login_and_signup/widgets/text_title.dart';

import '../../constants.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/desc_and_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
              backgroundTop(),
              LoginBgBottom(),
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextTitle(title: "LOGIN"),
                    SizedBox(height: 20),
                    SvgPicture.asset(
                      'assets/icons/login.svg',
                      fit: BoxFit.fill,
                      width: 300,
                      height: 300,
                    ),
                    SizedBox(height: 20),
                    //email
                    CustomTextField(
                      icon: Icons.person,
                      hintText: "Enter your emai...",
                      obsText: false,
                    ),
                    SizedBox(height: 10),
                    //password
                    CustomTextField(
                      icon: Icons.lock,
                      hintText: "Enter your password...",
                      obsText: true,
                    ),
                    SizedBox(height: 10),
                    //login button
                    CustomButton(
                      title: "LOGIN",
                      bgColor: kPrimaryColor,
                      color: kWhiteColor,
                      onPress: () {},
                    ),
                    SizedBox(height: 10),
                    DescAndPage(
                      namePage: "SignUp",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
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
