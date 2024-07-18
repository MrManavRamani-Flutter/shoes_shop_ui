import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// List of Category Images......
final List<String> imgList = [
  'assets/images/img_7.png',
  'assets/images/img_9.png',
  'assets/images/img_3.png',
  'assets/images/img_4.png',
  'assets/images/img_5.png',
  'assets/images/img_6.png',
];

// Category List :
List<Map<String, dynamic>> categoryList = [
  {'cat': 'Mobile', 'icon': ''},
  {'cat': 'Pantry', 'icon': ''},
  {'cat': 'Fashion', 'icon': ''},
  {'cat': 'Electronics', 'icon': ''},
];

// List of map of Data About Products..
List<Map<String, dynamic>> productList = [
  {
    'imageUrl': imgList[0],
    'color': Colors.brown,
    'price': 99.99,
    'name': 'Product 1',
    'small desc': 'Description of Product 1',
    'mrp': 129.99,
    'rate': 4.5,
  },
  {
    'imageUrl': imgList[1],
    'color': Colors.lightBlue,
    'price': 79.99,
    'name': 'Product 2',
    'small desc': 'Description of Product 2',
    'mrp': 99.99,
    'rate': 4.2,
  },
  {
    'imageUrl': imgList[2],
    'color': Colors.pinkAccent,
    'price': 49.99,
    'name': 'Product 3',
    'small desc': 'Description of Product 3',
    'mrp': 59.99,
    'rate': 4.0,
  },
  {
    'imageUrl': imgList[3],
    'color': Colors.redAccent,
    'price': 149.99,
    'name': 'Product 4',
    'small desc': 'Description of Product 4',
    'mrp': 199.99,
    'rate': 4.8,
  },
  {
    'imageUrl': imgList[4],
    'color': Colors.blue,
    'price': 39.99,
    'name': 'Product 5',
    'small desc': 'Description of Product 5',
    'mrp': 49.99,
    'rate': 4.1,
  },
  {
    'imageUrl': imgList[5],
    'color': Colors.purpleAccent,
    'price': 89.99,
    'name': 'Product 6',
    'small desc': 'Description of Product 6',
    'mrp': 109.99,
    'rate': 4.3,
  },
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ),
        title: const Text("Shoes Shop"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search_outlined),
                hintText: "Search everything",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30),
                    right: Radius.circular(30),
                  ),
                ),
              ),
            ),
          ),
          // Slider Design
          SizedBox(
            height: 150,
            width: double.infinity,
            child: CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                aspectRatio: 0.2,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 2,
                autoPlay: true,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...categoryList.map(
                  (e) => const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Set values in Function Image and Colors pass in Function
final List<Widget> imageSliders = productList
    .map((item) => getSliderImage(item['imageUrl'], item['color']))
    .toList();

// Slider Design
Widget getSliderImage(String item, Color bgColor) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: const BorderRadius.all(
        Radius.circular(10.0),
      ),
      child: Container(
        color: bgColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                foregroundImage: AssetImage(item),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Get upto 60% offer",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Buy what you want to the product purchase to your own",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 110,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(30),
                          right: Radius.circular(30),
                        ),
                      ),
                      child: const Text(
                        "Buy now",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
