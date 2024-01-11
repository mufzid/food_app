import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(30.0), // Adjust the value as needed
      child: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(
              255, 227, 222, 222), // Set your desired background color
        ),
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.black, // Set your desired icon color
        ),
      ),
    );
  }
}
