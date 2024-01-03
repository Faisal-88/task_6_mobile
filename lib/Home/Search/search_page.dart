import 'package:flutter/material.dart';
import 'package:flutter_task_6/Home/Search/search_list.dart';
import 'package:flutter_task_6/menu_tab_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const MenuTabBar(),
              ),
            );
          },
          icon: Container(
            padding: const EdgeInsets.all(8.0),
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
        title: TextFormField(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            fontFamily: 'Roboto',
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(8.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide:
                  const BorderSide(color: Color.fromRGBO(242, 242, 242, 1)),
            ),
            filled: true,
            fillColor: Colors.grey[200],
            prefixIcon: const Icon(
              Icons.search,
              color: Color.fromRGBO(130, 130, 130, 1),
              size: 24.0,
            ),
            hintText: 'find your favorite product ...',
            hintStyle: const TextStyle(
              color: Color.fromRGBO(130, 130, 130, 1),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          // Start Night Cream //
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150.0,
                margin: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, top: 15.0, right: 16.0),
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Night Cream",
                                  style: TextStyle(
                                    color: Color.fromRGBO(130, 130, 130, 1),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            //
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(top: 15.0, right: 16.0),
                            child: Icon(
                              Icons.chevron_right,
                              color: Color.fromRGBO(51, 51, 51, 100),
                              size: 24.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Color.fromRGBO(242, 242, 242, 1),
                      thickness: 1.0,
                      height: 16.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, top: 3.0, right: 16.0),
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Night Cream",
                                  style: TextStyle(
                                    color: Color.fromRGBO(130, 130, 130, 1),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(top: 3.0, right: 16.0),
                            child: Icon(
                              Icons.chevron_right,
                              color: Color.fromRGBO(51, 51, 51, 100),
                              size: 24.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Color.fromRGBO(242, 242, 242, 1),
                      thickness: 1.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                            MaterialPageRoute (builder: (_) => const SearchList()));
                          },
                          child: const Text(
                            "See All",
                            style: TextStyle(
                              color: Color.fromRGBO(189, 189, 189, 1),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // End Night Cream //
              const SizedBox(height: 16.0),
              // Start Popular Search //
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20.0),
                  Text(
                    "Popular search",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Container(
                width: double.infinity,
                height: 90.0,
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 70.0,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(250, 250, 250, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(242, 242, 242, 1),
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Image.asset(
                        'assets/images/cart-1.png',
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 12.0),
                          Text(
                            "White Ginseng Purify Mask",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "1000 searches",
                            style: TextStyle(
                              color: Color.fromRGBO(130, 130, 130, 1),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                width: double.infinity,
                height: 90.0,
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 70.0,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(250, 250, 250, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(242, 242, 242, 1),
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Image.asset(
                        'assets/images/cart-2.png',
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 12.0),
                          Text(
                            "White Ginseng Purify Mask",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "500 searches",
                            style: TextStyle(
                              color: Color.fromRGBO(130, 130, 130, 1),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // End Shopping List //
              const SizedBox(height: 16.0),
              // Start Popular Search //
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20.0),
                  Text(
                    "Popular search",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Container(
                width: double.infinity,
                height: 90.0,
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 70.0,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(250, 250, 250, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(242, 242, 242, 1),
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Image.asset(
                        'assets/images/cart-1.png',
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Cleansear",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                width: double.infinity,
                height: 90.0,
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 70.0,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(250, 250, 250, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(242, 242, 242, 1),
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Image.asset(
                        'assets/images/cart-2.png',
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Toner",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //End Popular Search
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    );
  }
}
