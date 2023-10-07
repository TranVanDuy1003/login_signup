import 'package:flutter/material.dart';

import '../constants.dart';

class DescAndPage extends StatelessWidget {
  const DescAndPage({
    super.key,
    required this.namePage,
    this.onPress,
  });
  final String namePage;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don\'t have an account?"),
        TextButton(
          onPressed: onPress,
          child: Text(
            namePage,
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
