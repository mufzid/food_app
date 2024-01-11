import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 30),
      child: Column(
        children: [
          Container(
              height: 150,
              width: 250,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/bgimage.jpg'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 255, 255, 255)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 21,
                        width: 120,
                        decoration: const BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: const Center(
                          child: Text(
                            "Free Item(Spend \$10)",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 11),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_outline_sharp,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ],
                  )
                ],
              )),
          const SizedBox(
            height: 18,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'McDonald’s(Best Offer)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text('\$4.99 Delivery Fee . 15-30 min',
                      style: TextStyle(
                        fontSize: 12,
                      )),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 227, 222, 222),
                child: Text('4.5'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
