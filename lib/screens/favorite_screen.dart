import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Map<String, dynamic>> productFavList = [
    {
      'name': 'Nike air zoom vimero',
      'imageUrl': 'assets/images/img_4.png',
      'price': 50,
      'mrp': 120,
      'rating': 4.5,
    },
    {
      'name': 'Nike Flex',
      'imageUrl': 'assets/images/img_6.png',
      'price': 120,
      'mrp': 180,
      'rating': 4.5,
    },
    {
      'name': 'Nike Run all day',
      'imageUrl': 'assets/images/img_7.png',
      'price': 78,
      'mrp': 90,
      'rating': 4.5,
    },
    {
      'name': 'Nike Air max',
      'imageUrl': 'assets/images/img_12.png',
      'price': 60,
      'mrp': 85,
      'rating': 4.5,
    },
  ];
  FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade50,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Favorite'),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Stack(
                children: [
                  const Icon(
                    Icons.shopping_cart,
                    color: Colors.blue,
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      width: 18 / 2,
                      height: 18 / 2,
                    ),
                  )
                ],
              ),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.filter_alt_rounded,
              color: Colors.blue,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: productFavList.length,
        itemBuilder: (context, index) {
          final item = productFavList[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    // Product Image
                    Card(
                      elevation: 0,
                      child: Image.asset(
                        item['imageUrl'],
                        width: 100,
                        height: 100,
                      ),
                    ),
                    const SizedBox(width: 10),
                    // Product details (price, MRP, name)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '\$${item['price']}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                'MRP \$${item['mrp']}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(
                            item['name'],
                            style: const TextStyle(fontSize: 14),
                          ),
                          const SizedBox(height: 10),
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: Colors.blueAccent,
                                width: 2,
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 10,
                              ),
                            ),
                            child: const Text(
                              'Add to cart',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Rating and favorite icons
                    SizedBox(
                      width: 50,
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                item['rating'].toString(),
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 17,
                              ),
                            ],
                          ),
                          const SizedBox(height: 27),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
