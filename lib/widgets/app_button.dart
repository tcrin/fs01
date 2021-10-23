import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Function()? onPressed;
  final String? lable;

  const AppButton({Key? key, this.onPressed, this.lable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          lable!,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            primary: Colors.blue,
            onPrimary: Colors.white),
      ),
    );
  }
}
