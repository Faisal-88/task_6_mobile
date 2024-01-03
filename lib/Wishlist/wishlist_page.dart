import 'package:flutter/material.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => WishlistPageState();
}

class WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(250, 250, 250, 100),
        leading: IconButton(
          onPressed: () {
            
          },
          icon: Container(
            padding: const EdgeInsets.all(8.0),
            width: 40.0, 
            height: 40.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(242, 242, 242, 1),
            ),
            child: const Icon(
              Icons.chevron_left,
              color: Color.fromRGBO(130, 130, 130, 1),
              size: 24.0, 
            ),
          ),
        ),
        title: const Text(
          'Wishlist',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              //
            },
            icon: Container(
              padding: const EdgeInsets.all(8.0),
              width: 60.0,
              height: 60.0,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 20.0),
        child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildProductRow([
              buildProductCard(
                'assets/images/produk_1.png',
                'White Ginseng Mas',
                'Radiance Refining Mask',
                '\$29.00',
                true,
              ),
              buildProductCard(
                'assets/images/produk_2.png',
                'White Ginseng Mas',
                'Radiance Refining Mask',
                '\$29.00',
                false,
              ),
            ]),
            const SizedBox(height: 20),
            buildProductRow([
              buildProductCard(
                'assets/images/produk_3.png',
                'White Ginseng Mas',
                'Radiance Refining Mask',
                '\$29.00',
                false,
              ),
              buildProductCard(
                'assets/images/produk_4.png',
                'White Ginseng Mas',
                'Radiance Refining Mask',
                '\$29.00',
                false,
              ),
            ]),
            const SizedBox(height: 20),
            buildProductRow([
              buildProductCard(
                'assets/images/produk_1.png',
                'White Ginseng Mas',
                'Radiance Refining Mask',
                '\$29.00',
                false,
              ),
              buildProductCard(
                'assets/images/produk_2.png',
                'White Ginseng Mas',
                'Radiance Refining Mask',
                '\$29.00',
                false,
              ),
            ]),
          ],
        ),
      ),
      ),
      backgroundColor: const Color.fromRGBO(250, 250, 250, 100),
    );
  }

  Widget buildProductRow(List<Widget> cards) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: cards,
    );
  }

  Widget buildProductCard(
    String imagePath,
    String title,
    String subtitle,
    String price,
    bool isFavorite,
  ) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(242, 242, 242, 1),
        border: Border.all(
          color: const Color.fromRGBO(242, 242, 242, 1),
        ),
        borderRadius: BorderRadius.circular(8.0),
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
    );
  }
}