import 'package:flutter/material.dart';
import 'package:food_app/widgets/food_container.dart';
import 'package:food_app/widgets/food_prodcut.dart';
import 'package:food_app/widgets/rounded_button.dart';
import 'package:food_app/widgets/stack_food.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home_outlined,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border_outlined,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person_2_outlined,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(251, 222, 63, 1),
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(
          Icons.shopping_bag_outlined,
          size: 27,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Color.fromARGB(255, 247, 245, 245),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deliver Now",
                        ),
                        Row(
                          children: [
                            Text(
                              'Madani Town',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Icon(Icons.expand_more),
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(225, 228, 228, 228),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.card_travel,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.directions_walk)
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SearchBar(
                  elevation: const MaterialStatePropertyAll(0),
                  backgroundColor: const MaterialStatePropertyAll(
                    Color.fromRGBO(229, 229, 229, 0.46),
                  ),
                  leading: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        size: 30,
                      )),
                  hintText: 'Search Super Foodoo',
                  trailing: [
                    const SizedBox(
                      height: 30,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.format_list_bulleted_sharp)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ProdutSnacks(
                        imagePath: 'assets/images/burger.png',
                        imageName: 'Burger',
                      ),
                      ProdutSnacks(
                        imagePath: 'assets/images/pizza.png',
                        imageName: 'Pizza',
                      ),
                      ProdutSnacks(
                          imagePath: 'assets/images/meat.png',
                          imageName: 'Meat'),
                      ProdutSnacks(
                          imagePath: 'assets/images/icecream.png',
                          imageName: 'Icecream')
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Featured on Super Foodoo",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    RoundedIconButton()
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 210,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [ProductContainer(), ProductContainer()],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hot spots",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    RoundedIconButton()
                  ],
                ),
                const SizedBox(
                  height: 45,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StackFood(
                        imagePick: 'assets/images/burgger.png',
                        imageName: 'Mc Double',
                      ),
                      StackFood(
                        imagePick: 'assets/images/pizzaa.png',
                        imageName: 'Supreme Pizza',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
