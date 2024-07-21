import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoes_shop/views/favorite_screen.dart';
import 'package:shoes_shop/views/products_screen.dart';

// List of Category Images
final List<String> imgList = [
  'assets/images/img_7.png',
  'assets/images/img_9.png',
  'assets/images/img_3.png',
  'assets/images/img_4.png',
  'assets/images/img_5.png',
  'assets/images/img_6.png',
];

// Category List
List<Map<String, dynamic>> categoryList = [
  {'cat': 'Mobiles', 'icon': Icons.phone_android},
  {'cat': 'Pantry', 'icon': Icons.kitchen},
  {'cat': 'Fashion', 'icon': Icons.style},
  {'cat': 'Electronics', 'icon': Icons.electrical_services},
];

// List of Products
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

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  ListScreenState createState() => ListScreenState();
}

class ListScreenState extends State<ListScreen> {
  int _selectedIndex = 0; // Track the selected tab

  // List of widgets for each tab
  final List<Widget> _pages = [
    const HomeScreen(),
    const RewardScreen(),
    FavoriteScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Reward',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Reward Screen'),
    );
  }
}

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Favorites Screen'),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Track the selected tab

  // List of widgets for each tab
  final List<Widget> _pages = [
    const HomeScreen(),
    const RewardScreen(),
    const FavoritesScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.black),
          ),
        ),
        title: const Text(
          "hubjoy",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search_outlined),
                  hintText: "Search everything",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
            // Slider Design
            SizedBox(
              height: 180,
              width: double.infinity,
              child: CarouselSlider(
                items: imageSliders,
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                ),
              ),
            ),
            // Category List
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categoryList.map((e) {
                  return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.greenAccent,
                          child: Icon(
                            e['icon'],
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "${e['cat']}",
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            // Products list :
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Most Popular',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: productList.map((item) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProductListScreen(),
                                    ),
                                  );
                                },
                                child: Card(
                                  elevation: 2,
                                  child: SizedBox(
                                    width: 120,
                                    height: 120,
                                    child: Image.asset(
                                      item['imageUrl'],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              // const SizedBox(height: 10),
                              // Text(
                              //   item['name'],
                              //   style: const TextStyle(
                              //     fontSize: 18,
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              // ),
                              // Text(
                              //   '\$${item['price']}',
                              //   style: const TextStyle(
                              //     fontSize: 16,
                              //     color: Colors.grey,
                              //   ),
                              // ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  // const SizedBox(height: 30),
                  const Text(
                    'Collections',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: productList.reversed.map((item) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            right: 15,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProductListScreen(),
                                    ),
                                  );
                                },
                                child: Card(
                                  elevation: 2,
                                  child: SizedBox(
                                    width: 120,
                                    height: 120,
                                    child: Image.asset(
                                      item['imageUrl'],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              // const SizedBox(height: 10),
                              // Text(
                              //   item['name'],
                              //   style: const TextStyle(
                              //     fontSize: 18,
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              // ),
                              // Text(
                              //   '\$${item['price']}',
                              //   style: const TextStyle(
                              //     fontSize: 16,
                              //     color: Colors.grey,
                              //   ),
                              // ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
                radius: 40,
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
                      "Get up to 60% offer",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Buy what you want to the product purchase to your own",
                      style: TextStyle(
                        fontSize: 13.5,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 100,
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
                          fontSize: 14,
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
