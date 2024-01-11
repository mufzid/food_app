import 'package:flutter/material.dart';

class ProdutSnacks extends StatelessWidget {
  final String? imagePath;
  final String? imageName;
  const ProdutSnacks({super.key, this.imagePath, this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 30),
      child: Column(
        children: [
          Container(
              height: 67,
              width: 90,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(5, 9),
                      blurRadius: 12,
                      color: Color.fromRGBO(120, 120, 120, 0.157),
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 255, 255, 255)),
              child: imagePath != null
                  ? Image.asset(imagePath!)
                  : Image.asset("assets/images/burger.png")),
          const SizedBox(
            height: 10,
          ),
          imageName != null
              ? Text(
                  imageName!,
                  style: const TextStyle(fontSize: 18),
                )
              : const Text('No Data')
        ],
      ),
    );
  }
}
