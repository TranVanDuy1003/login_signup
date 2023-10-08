import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.icon,
    required this.hintText,
    required this.obsText,
  });
  final IconData icon;
  final String hintText;
  final bool obsText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        // controller: emailController,
        keyboardType: TextInputType.emailAddress,
        obscureText: obsText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          border: InputBorder.none,
          fillColor: kPrimaryLightColor,
          filled: true,
          prefixIcon: Icon(
            icon,
            color: kBlackColor,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: kGrey,
            fontSize: 15,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: kWhiteColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: kWhiteColor),
          ),
        ),
      ),
    );
  }
}
