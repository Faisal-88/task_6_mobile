import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_task_6/Wishlist/Riviwers/riviwers_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final List<String> pathsGambar = [
    'assets/images/produk_1.png',
    'assets/images/produk_2.png',
    'assets/images/produk_3.png',
  ];
  // ignore: unused_field
  int _currentImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            padding: const EdgeInsets.all(8.0),
            width: 40.0,
            height: 40.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            child: const Icon(
              Icons.chevron_left,
              color: Color.fromRGBO(130, 130, 130, 1),
              size: 24.0,
            ),
          ),
        ),
        title: const Text(
          'Cleaners',
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
              // Navigator.push(context,
              // MaterialPageRoute(
              //   builder: (_) => const SearchList()));
            },
            icon: Container(
              padding: const EdgeInsets.all(8.0),
              width: 60.0,
              height: 60.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: const Icon(
                Icons.shopping_bag_outlined,
                color: Color.fromRGBO(130, 130, 130, 1),
                size: 24.0,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 250.0,
                enableInfiniteScroll: true,
                autoPlay: false,
                aspectRatio: 1.0,
                viewportFraction: 0.75,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentImageIndex = index;
                  });
                },
              ),
              items: pathsGambar.map((pathGambar) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(242, 242, 242, 1),
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage(pathGambar),
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            DotsIndicator(
              dotsCount: pathsGambar.length,
              position: _currentImageIndex,
              decorator: const DotsDecorator(
                color: Colors.grey,
                activeColor: Color.fromRGBO(51, 51, 51, 1),
                size: Size(5.0, 5.0),
                activeSize: Size(6.0, 6.0),
              ),
            ),
            const SizedBox(height: 16.0),
            // Detail Produk
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                    ),
                ),
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),  
                  topRight: Radius.circular(30.0), 
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '\$29.00',
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(242, 242, 242, 1),
                        ),
                        padding: const EdgeInsets.all(5.0),
                        child: IconButton(
                          onPressed: () {
                            //
                          },
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'White Ginseng Mas',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(79, 79, 79, 1),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16.0),
                      Icon(Icons.star, color: Colors.amber, size: 16.0),
                      Icon(Icons.star, color: Colors.amber, size: 16.0),
                      Icon(Icons.star, color: Colors.amber, size: 16.0),
                      Icon(Icons.star, color: Colors.grey, size: 16.0),
                      SizedBox(width: 8.0),
                      Text(
                        '4.0',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Masks for facial pore care Masks that help'
                    '\nclean clogged dirt in the pores, and control oil '
                    '\nlevels on the face. Helps clear pores clogging...',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(51, 51, 51, 1),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Read More',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(51, 51, 51, 1),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Size',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(51, 51, 51, 1),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          children: [
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Color.fromRGBO(130, 130, 130, 1),
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              onPressed: () {
                                // ukuran 1
                              },
                              child: const Text(
                                '100 ml',
                                style: TextStyle(
                                  color: Color.fromRGBO(79, 79, 79, 1),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              color: const Color.fromRGBO(242, 242, 242, 1),
                              onPressed: () {
                                // ukuran 2
                              },
                              child: const Text(
                                '150 ml',
                                style: TextStyle(
                                  color: Color.fromRGBO(189, 189, 189, 1),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              color: const Color.fromRGBO(242, 242, 242, 1),
                              onPressed: () {
                                // ukuran 3
                              },
                              child: const Text(
                                '200 ml',
                                style: TextStyle(
                                  color: Color.fromRGBO(189, 189, 189, 1),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                  const SizedBox(height: 20.0),
                  // Coment user
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/user.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 16.0),
                            const Text(
                              'M. Faisal',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                                fontSize: 16.0,
                                color: Color.fromRGBO(51, 51, 51, 1),
                              ),
                            ),
                            const SizedBox(width: 95.0),
                            TextButton(
                              onPressed: () {
                                //
                              },
                              child: const Text(
                                'SEE ALL',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.0,
                                  color: Color.fromRGBO(79, 79, 79, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8.0),
                        const Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 20.0),
                            Icon(Icons.star, color: Colors.yellow, size: 20.0),
                            Icon(Icons.star, color: Colors.yellow, size: 20.0),
                            Icon(Icons.star, color: Colors.yellow, size: 20.0),
                            Icon(Icons.star, color: Colors.yellow, size: 20.0),
                          ],
                        ),
                        const SizedBox(height: 8.0),
                        const Text(
                          'the product is very good, fits on my skin and also the delivery is very fast, the admin is ...',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                            color: Color.fromRGBO(130, 130, 130, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const RiviwersPage()));
                    },
                    color: const Color.fromRGBO(51, 51, 51, 1),
                    textColor: Colors.white,
                    minWidth: 350,
                    height: 45,
                    child: const Text(
                      "Add Cart",
                      style: TextStyle(
                        color: Color.fromRGBO(242, 242, 242, 1),
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
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