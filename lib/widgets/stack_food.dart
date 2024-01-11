// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class StackFood extends StatelessWidget {
  String? imagePick;
  final String? imageName;
  StackFood({super.key, this.imagePick, this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 30),
      child: Stack(
        fit: StackFit.loose,
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: 149,
            height: 129,
            decoration: BoxDecoration(boxShadow: const [
              BoxShadow(
                offset: Offset(3, 3),
                blurRadius: 9,
                color: Color.fromRGBO(195, 193, 193, 0.157),
              )
            ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
          ),
          Positioned(
            top: -50,
            // left: 0,
            // right: 0,
            // width: 150,
            // height: 150,
            child: imagePick != null
                ? Image.asset(imagePick!)
                : Image.asset("assets/images/burger.png"),
          ),
          Positioned(
            bottom: 20,
            child: Column(
              children: [
                imageName != null
                    ? Text(
                        imageName!,
                        style: const TextStyle(fontSize: 18),
                      )
                    : const Text('No Data'),
                const Row(
                  children: [
                    Text(
                      '\$',
                      style: TextStyle(color: Color.fromARGB(255, 255, 174, 0)),
                    ),
                    Text('20.99'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
