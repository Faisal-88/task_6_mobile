import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_6/Wishlist/Order/order_page.dart';

class RatePage extends StatefulWidget {
  const RatePage({Key? key}) : super(key: key);

  @override
  State<RatePage> createState() => _RatePageState();
}

class _RatePageState extends State<RatePage> {
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
          'Rate',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    "Extraordinary",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  const Text(
                    "You rate Product 5 Stars",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0,
                      color: Color.fromRGBO(189, 189, 189, 1),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star,
                          color: Color.fromRGBO(250, 186, 0, 1), size: 40.0),
                      Icon(Icons.star,
                          color: Color.fromRGBO(250, 186, 0, 1), size: 40.0),
                      Icon(Icons.star,
                          color: Color.fromRGBO(250, 186, 0, 1), size: 40.0),
                      Icon(Icons.star,
                          color: Color.fromRGBO(250, 186, 0, 1), size: 40.0),
                      Icon(Icons.star,
                          color: Color.fromRGBO(250, 186, 0, 1), size: 40.0),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: InkWell(
                          onTap: () {
                            //
                          },
                          child: DottedBorder(
                            color: const Color.fromRGBO(130, 130, 130, 1),
                            strokeWidth: 2,
                            dashPattern: const [5, 5],
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(10),
                            child: Container(
                              padding: const EdgeInsets.all(16.0),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_photo_alternate_sharp,
                                  ),
                                  SizedBox(width: 10),
                                  Text("Add Image"),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Column(
                    children: [
                      Container(
                        width: 330,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(242, 242, 242, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'My review about this products...',
                          ),
                          maxLines: 5,
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                     MaterialPageRoute(builder: (_) => const OrderPage()));
                },
                color: const Color.fromRGBO(51, 51, 51, 1),
                textColor: Colors.white,
                minWidth: 300,
                height: 45,
                child: const Text(
                  "Save",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
