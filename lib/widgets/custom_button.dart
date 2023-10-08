import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.bgColor,
    required this.color,
    this.onPress,
  });
  final String title;
  final Color color;
  final Color bgColor;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(),
      child: CupertinoButton(
        onPressed: onPress,
        color: bgColor,
        alignment: Alignment.center,
        borderRadius: BorderRadius.circular(20),
        child: Text(
          title,
          style: TextStyle(
            color: color,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
