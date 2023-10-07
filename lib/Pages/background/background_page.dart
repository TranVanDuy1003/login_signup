import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_and_signup/Pages/background/widgets/background_bottom.dart';
import 'package:login_and_signup/Pages/log_in/log_in_page.dart';
import 'package:login_and_signup/widgets/background_top.dart';
import 'package:login_and_signup/widgets/custom_button.dart';
import 'package:login_and_signup/widgets/text_title.dart';

import '../../constants.dart';

class BackgroundPage extends StatelessWidget {
  const BackgroundPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              backgroundTop(),
              backgroundBottom(),
              Padding(
                padding: const EdgeInsets.only(top: 130.0),
                child: Column(
                  children: [
                    TextTitle(title: 'WELCOME TO EDU'),
                    SizedBox(height: 30),
                    Center(
                      child: SvgPicture.asset('assets/icons/chat.svg'),
                    ),
                    SizedBox(height: 20),
                    CustomButton(
                      title: "LOGIN",
                      color: kWhiteColor,
                      bgColor: kPrimaryColor,
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogIn(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    CustomButton(
                      title: "SIGNUP",
                      color: kBlackColor,
                      bgColor: kPrimaryLightColor,
                      onPress: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
