import 'package:flutter/material.dart';
import 'package:flutter_task_6/Home/Search/search_page.dart';
import 'package:flutter_task_6/Home/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: const Color.fromRGBO(250, 250, 250, 100),
      automaticallyImplyLeading: false,
      title: Image.asset('assets/images/logo_small.png'),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(context, 
              MaterialPageRoute(
              builder: (_) => const SearchPage()));
          },
          icon: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(242, 242, 242, 1),
            ),
            child: const Icon(
              Icons.search,
              color: Color.fromRGBO(130, 130, 130, 1),
              size: 24.0,
            ),
          ),
        ),
      ],
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(242, 242, 242, 1),
            border: Border.all(
              color: const Color.fromRGBO(242, 242, 242, 1),
              width: 16.0,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Herbal Clay Purifying Mask',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 20),
                    MaterialButton(
                      onPressed: () {
                        // Shop now
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Colors.black,
                      textColor: Colors.white,
                      child: const Text('Shop Now'),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Image.asset(
                'assets/images/produk1.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  // 
                },
                child: const Text(
                  'All',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  //
                },
                child: const Text(
                  'Cleaners',
                  style: TextStyle(
                    color: Color.fromRGBO(130, 130, 130, 1),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Toner
                },
                child: const Text(
                  'Toner',
                  style: TextStyle(
                    color: Color.fromRGBO(130, 130, 130, 1),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Essence
                },
                child: const Text(
                  'Essence',
                  style: TextStyle(
                    color: Color.fromRGBO(130, 130, 130, 1),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // moisturizer
                },
                child: const Text(
                  'moisturizer',
                  style: TextStyle(
                    color: Color.fromRGBO(130, 130, 130, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Card kiri 1
                  buildProductCard(
                    'assets/images/produk_1.png',
                    'White Ginseng Mas',
                    'Radiance Refining Mask',
                    '\$29.00',
                    true,
                    context,
                  ),
                  // Card kanan 1
                  buildProductCard(
                    'assets/images/produk_2.png',
                    'White Ginseng Mas',
                    'Radiance Refining Mask',
                    '\$29.00',
                    false,
                    context,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Card kiri 2
                  buildProductCard(
                    'assets/images/produk_3.png',
                    'White Ginseng Mas',
                    'Radiance Refining Mask',
                    '\$29.00',
                    true,
                    context,
                  ),
                  // Card kanan 2
                  buildProductCard(
                    'assets/images/produk_4.png',
                    'White Ginseng Mas',
                    'Radiance Refining Mask',
                    '\$29.00',
                    false,
                    context,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
    backgroundColor: const Color.fromRGBO(250, 250, 250, 100),
  );
}

//component
Widget buildProductCard(
  String imagePath,
  String title,
  String subtitle,
  String price,
  bool isFavorite,
  BuildContext context,
) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const DetailPage(),
        ),
      );
    }, 
  child: Container(
    width: 160,
    padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(242, 242, 242, 1),
      border: Border.all(
        color: const Color.fromRGBO(242, 242, 242, 1),
      ),
      borderRadius: BorderRadius.circular(16.0),
    ),
    child: Column(
      children: [
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: const TextStyle(fontSize: 8),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // icon fav
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite,
                      color: isFavorite
                          ? const Color.fromRGBO(235, 87, 87, 1)
                          : const Color.fromRGBO(242, 242, 242, 1),
                      size: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ),
  );
  }
}