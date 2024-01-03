import 'package:flutter/material.dart';
import 'package:flutter_task_6/Wishlist/Order/order_detail.dart';
import 'package:flutter_task_6/Wishlist/Rating/rate_page.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
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
          'Order',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              // Start Order //
              Container(
                width: double.infinity,
                height: 90.0,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly, // Gunakan MainAxisAlignment.spaceBetween
                  children: [
                    GestureDetector(
                      onTap: () {
                        //
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 40.0,
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.only(left: 16.0),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(250, 250, 250, 1),
                              border: Border.all(
                                color: const Color.fromRGBO(242, 242, 242, 1),
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Image.asset(
                              'assets/images/order_confirm.png',
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          const Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Confirm',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(130, 130, 130, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //proses
                    GestureDetector(
                      onTap: () {
                        //
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 40.0,
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.only(left: 16.0),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(250, 250, 250, 1),
                              border: Border.all(
                                color: const Color.fromRGBO(242, 242, 242, 1),
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Image.asset(
                              'assets/images/order_proses.png',
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          const Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Proses',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(130, 130, 130, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Deliver
                    GestureDetector(
                      onTap: () {
                        //
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 40.0,
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.only(left: 16.0),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(250, 250, 250, 1),
                              border: Border.all(
                                color: const Color.fromRGBO(242, 242, 242, 1),
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Image.asset(
                              'assets/images/order_deliver.png',
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          const Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Deliver',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(130, 130, 130, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Finish
                    GestureDetector(
                      onTap: () {
                        //
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 40.0,
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.only(left: 16.0),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(51, 51, 51, 1),
                              border: Border.all(
                                color: const Color.fromRGBO(79, 79, 79, 1),
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Image.asset(
                              'assets/images/order_finish.png',
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          const Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Finish',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(130, 130, 130, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 40.0),
                  Container(
                    width: double.infinity,
                    height: 110.0,
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(242, 242, 242, 1),
                      border: Border.all(
                        color: const Color.fromRGBO(242, 242, 242, 1),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width:20.0),
                        Container(
                          width: 65.0,
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(224, 224, 224, 1),
                            border: Border.all(
                              color: const Color.fromRGBO(224, 224, 224, 1),
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
                               SizedBox(height: 16.0),
                              Text(
                                "White Ginseng \nPurify Mask",
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                "\$120.00 (1x)",
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
                         Padding(
                            padding: const EdgeInsets.only(top: 20.0, right: 20.0),
                        child:MaterialButton(
                          onPressed: () {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (_) => const OrderDetailPage()));
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          color: Colors.black,
                          textColor: Colors.white,
                          
                          child: const Text(
                            'Buy Again',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                            ),
                            ),
                        ),
                      ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  //Rate
                  Container(
                    width: double.infinity,
                    height: 110.0,
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(242, 242, 242, 1),
                      border: Border.all(
                        color: const Color.fromRGBO(242, 242, 242, 1),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width:20.0),
                        Container(
                          width: 65.0,
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(224, 224, 224, 1),
                            border: Border.all(
                              color: const Color.fromRGBO(224, 224, 224, 1),
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
                               SizedBox(height: 16.0),
                              Text(
                                "White Ginseng \nPurify Mask",
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                "\$120.00 (1x)",
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
                         Padding(
                            padding: const EdgeInsets.only(top: 20.0, right: 20.0),
                        child:MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (_) => const RatePage()));
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          color: Colors.black,
                          textColor: Colors.white,
                          
                          child: const Text(
                            'Rate',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                            ),
                            ),
                        ),
                      ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
