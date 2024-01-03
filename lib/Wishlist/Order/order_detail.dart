import 'package:flutter/material.dart';
import 'package:flutter_task_6/menu_tab_bar.dart';

class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({Key? key}) : super(key: key);

  @override
  State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
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
          'Detail Order',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 600.0,
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(242, 242, 242, 1),
              borderRadius: BorderRadius.circular(8.0),
              border: const Border(                             
                top: BorderSide(
                  color: Color.fromRGBO(250, 250, 250, 1),
                  width: 1.0,
                ),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        //Order Status
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Text(
                                "Order Status",
                                style: TextStyle(
                                  color: Color.fromRGBO(130, 130, 130, 1),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Text(
                                "Order ID",
                                style: TextStyle(
                                  color: Color.fromRGBO(130, 130, 130, 1),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Text(
                                "Order Date",
                                style: TextStyle(
                                  color: Color.fromRGBO(130, 130, 130, 1),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 16.0),
                            child: Text(
                              "Success",
                              style: TextStyle(
                                color: Color.fromRGBO(39, 174, 96, 1),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 16.0),
                            child: Text(
                              "#000000123456",
                              style: TextStyle(
                                color: Color.fromRGBO(130, 130, 130, 1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 16.0),
                            child: Text(
                              "2023-03-10",
                              style: TextStyle(
                                color: Color.fromRGBO(130, 130, 130, 1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
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
                  //Keleeb Store
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Keleeb Store",
                          style: TextStyle(
                            color: Color.fromRGBO(51, 51, 51, 1),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Container(
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
                          ),
                          const SizedBox(width: 16.0),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "White Ginseng Purify \nMask",
                                  style: TextStyle(
                                    color: Color.fromRGBO(51, 51, 51, 1),
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
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1.0,
                  ),
                  //Shipping address
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              "Shipping address",
                              style: TextStyle(
                                color: Color.fromRGBO(51, 51, 51, 1),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0, left: 16.0),
                            child: Text(
                              "Kaleb Rahmeen",
                              style: TextStyle(
                                color: Color.fromRGBO(79, 79, 79, 1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              "South Tangerang City, Banten 15414 \n0822-1376-1973",
                              style: TextStyle(
                                color: Color.fromRGBO(189, 189, 189, 1),
                                fontSize: 12.0,
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
                  //Shipping information
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              "Shipping information",
                              style: TextStyle(
                                color: Color.fromRGBO(51, 51, 51, 1),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0, left: 16.0),
                            child: Text(
                              "Pos Indonesia - PSIDN123456",
                              style: TextStyle(
                                color: Color.fromRGBO(79, 79, 79, 1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              "2021-03-09 17:00",
                              style: TextStyle(
                                color: Color.fromRGBO(189, 189, 189, 1),
                                fontSize: 12.0,
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
                  //Payment information
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Payment Information",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Text(
                                "Payment Method",
                                style: TextStyle(
                                  color: Color.fromRGBO(79, 79, 79, 1),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Text(
                                "Shopping fee",
                                style: TextStyle(
                                  color: Color.fromRGBO(189, 189, 189, 1),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Text(
                                "Sub total",
                                style: TextStyle(
                                  color: Color.fromRGBO(189, 189, 189, 1),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Text(
                                "Total",
                                style: TextStyle(
                                  color: Color.fromRGBO(51, 51, 51, 1),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 16.0),
                            child: Text(
                              "Paypal",
                              style: TextStyle(
                                color: Color.fromRGBO(79, 79, 79, 1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 16.0),
                            child: Text(
                              "\$30.00",
                              style: TextStyle(
                                color: Color.fromRGBO(189, 189, 189, 1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 16.0),
                            child: Text(
                              "\$120.00",
                              style: TextStyle(
                                color: Color.fromRGBO(189, 189, 189, 1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 16.0),
                            child: Text(
                              "\$520.00",
                              style: TextStyle(
                                color: Color.fromRGBO(51, 51, 51, 1),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Roboto',
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
          ),
          Center(
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Color.fromRGBO(51, 51, 51, 1)),
                borderRadius: BorderRadius.circular(50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const MenuTabBar()),
                );
              },
              color: const Color.fromRGBO(51, 51, 51, 1),
              minWidth: 330,
              height: 45,
              child: const Text(
                "Buy again",
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
    );
  }
}
