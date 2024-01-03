import 'package:flutter/material.dart';

class RiviwersPage extends StatefulWidget {
  const RiviwersPage({Key? key}) : super(key: key);

  @override
  State<RiviwersPage> createState() => _RiviwersPageState();
}

class _RiviwersPageState extends State<RiviwersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(250, 250, 250, 100),
        elevation: 0.0,
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
              color: Color.fromRGBO(242, 242, 242, 100),
            ),
            child: const Icon(
              Icons.chevron_left,
              color: Color.fromRGBO(130, 130, 130, 100),
              size: 24.0,
            ),
          ),
        ),
        title: const Text(
          'Riviwers',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Rate
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        "5.0",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 36.0,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Icon(Icons.star,
                              color: Color.fromRGBO(250, 186, 0, 1),
                              size: 18.0),
                          Icon(Icons.star,
                              color: Color.fromRGBO(250, 186, 0, 1),
                              size: 18.0),
                          Icon(Icons.star,
                              color: Color.fromRGBO(250, 186, 0, 1),
                              size: 18.0),
                          Icon(Icons.star,
                              color: Color.fromRGBO(250, 186, 0, 1),
                              size: 18.0),
                          Icon(Icons.star,
                              color: Color.fromRGBO(250, 186, 0, 1),
                              size: 18.0),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        "1000 reviews",
                        style: TextStyle(
                          color: Color.fromRGBO(189, 189, 189, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              thickness: 1.0,
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color.fromRGBO(130, 130, 130, 1),
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    onPressed: () {
                      //
                    },
                    child: const Text(
                      'All Reviewer',
                      style: TextStyle(
                        color: Color.fromRGBO(79, 79, 79, 1),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    width: 70,
                    color: const Color.fromRGBO(242, 242, 242, 1),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.star,
                            color: Color.fromRGBO(189, 189, 189, 1),
                            size: 18.0,
                          ),
                          onPressed: () {
                            //
                          },
                        ),
                        const Text("5",
                            style: TextStyle(
                              color: Color.fromRGBO(189, 189, 189, 1),
                              fontSize: 16.0,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    width: 70,
                    color: const Color.fromRGBO(242, 242, 242, 1),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.star,
                            color: Color.fromRGBO(189, 189, 189, 1),
                            size: 18.0,
                          ),
                          onPressed: () {
                            //
                          },
                        ),
                        const Text("4",
                            style: TextStyle(
                              color: Color.fromRGBO(189, 189, 189, 1),
                              fontSize: 16.0,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    width: 70,
                    color: const Color.fromRGBO(242, 242, 242, 1),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.star,
                            color: Color.fromRGBO(189, 189, 189, 1),
                            size: 18.0,
                          ),
                          onPressed: () {
                            //
                          },
                        ),
                        const Text("3",
                            style: TextStyle(
                              color: Color.fromRGBO(189, 189, 189, 1),
                              fontSize: 16.0,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
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
                      const SizedBox(width: 50.0),
                      TextButton(
                        onPressed: () {
                          //
                        },
                        child: const Text(
                          '2023 March, 20',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                            color: Color.fromRGBO(189, 189, 189, 1),
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
          ],
        ),
      ),
    );
  }
}
