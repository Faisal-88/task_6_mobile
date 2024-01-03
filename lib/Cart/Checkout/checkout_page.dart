import 'package:flutter/material.dart';
import 'package:flutter_task_6/Cart/Checkout/Address/address_page.dart';
import 'package:flutter_task_6/Cart/Checkout/Courier/courier_page.dart';
import 'package:flutter_task_6/Cart/Checkout/Payment/payment_success_page.dart';
import 'package:flutter_task_6/Cart/Checkout/Payment/paymentmethod_page.dart';
import 'package:flutter_task_6/Cart/Checkout/Voucher/voucher_page.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Checkout',
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
          //Start Shopping to//
          child: Column(
            children: [
              const SizedBox(height: 14.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20.0),
                  Text(
                    "Shipping to",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
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
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 16.0),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 12.0),
                          Text(
                            "Office",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(height: 1.0),
                          Text(
                            "South Tangerang City, Banten \n15414 0822-1376-1973",
                            style: TextStyle(
                              color: Color.fromRGBO(189, 189, 189, 1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (_) => const AddressPage(),
                        ));
                      },
                    child: const Icon(
                      Icons.chevron_right,
                      color: Color.fromRGBO(51, 51, 51, 100),
                      size: 24.0,
                    ),
                    ),
                  ],
                ),
              ),
              //End Shopping to//
              //Start Payment methods//
              const SizedBox(height: 20.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20.0),
                  Text(
                    "Payment method",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 16.0),
                    Container(
                      width: 75.0,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(250, 250, 250, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(242, 242, 242, 1),
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Image.asset(
                        'assets/images/logo_paypal.png',
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Paypal",
                            style: TextStyle(
                              color: Color.fromRGBO(79, 79, 79, 1),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (_) => const PaymentMethodPage(),
                        ));
                      },
                    child: const Icon(
                      Icons.chevron_right,
                      color: Color.fromRGBO(51, 51, 51, 100),
                      size: 24.0,
                    ),
                    ),
                  ],
                ),
              ),
              //End Payment methods//
              const SizedBox(height: 20.0),
              //Start Courier//
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20.0),
                  Text(
                    "Courier",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 16.0),
                    Container(
                      width: 75.0,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(250, 250, 250, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(242, 242, 242, 1),
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Image.asset(
                        'assets/images/logo_pos.png',
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 12.0),
                          Text(
                            "Pos Indonesia",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(height: 3.0),
                          Text(
                            "REG - \$50.00 (2 working days)",
                            style: TextStyle(
                              color: Color.fromRGBO(189, 189, 189, 1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                        MaterialPageRoute(
                          builder: (_) => const CourierPage(),
                        ));
                      },
                    child: const Icon(
                      Icons.chevron_right,
                      color: Color.fromRGBO(51, 51, 51, 100),
                      size: 24.0,
                    ),
                    ),
                  ],
                ),
              ),
              //End Courier//
              const SizedBox(height: 20.0),
              //Start Shopping list//
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20.0),
                  Text(
                    "Shopping list",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 16.0),
                    Container(
                      width: 60.0,
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
                              color: Color.fromRGBO(79, 79, 79, 1),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "\$120.00 (1x)",
                            style: TextStyle(
                              color: Color.fromRGBO(189, 189, 189, 1),
                              fontSize: 14.0,
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
              //End Shopping list//
              const SizedBox(height: 20.0),
              //Start Voucher//
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20.0),
                  Text(
                    "Voucher",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 16.0),
                    Container(
                      width: 75.0,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(250, 250, 250, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(242, 242, 242, 1),
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Image.asset(
                        'assets/images/logo_voucher.png',
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 12.0),
                          Text(
                            "You Saved \$ 10",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(height: 3.0),
                          Text(
                            "Promo has been used",
                            style: TextStyle(
                              color: Color.fromRGBO(189, 189, 189, 1),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                        MaterialPageRoute(
                          builder: (_) => const VoucherPage(),
                        ));
                      },
                    child: const Icon(
                      Icons.chevron_right,
                      color: Color.fromRGBO(51, 51, 51, 100),
                      size: 24.0,
                    ),
                    ),
                  ],
                ),
              ),
              //End Voucher//
              //Start Payment total//
              Container(
                width: double.infinity,
                height: 150.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                      color: Color.fromRGBO(242, 242, 242, 1),
                      width: 1.0,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child:SingleChildScrollView(
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 12.0, left: 16.0),
                                child: Text(
                                  "Shipping fee",
                                  style: TextStyle(
                                    color: Color.fromRGBO(189, 189, 189, 1),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 12.0, left: 16.0),
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
                                padding: EdgeInsets.only(top: 12.0, left: 16.0),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 12.0, right: 36.0),
                              child: Text(
                                "\$30.00",
                                style: TextStyle(
                                  color: Color.fromRGBO(79, 79, 79, 1),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 12.0),
                              child: Text(
                                "\$120.00",
                                style: TextStyle(
                                  color: Color.fromRGBO(79, 79, 79, 1),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 12.0),
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
                    const SizedBox(height: 8.0),
                    Center(
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => const PaymentSuccessPage()),
                            );
                          },
                          color: const Color.fromRGBO(51, 51, 51, 1),
                          textColor: Colors.white,
                          minWidth: 300,
                          height: 45,
                          child: const Text(
                            "Payment",
                            style: TextStyle(
                              color: Color.fromRGBO(242, 242, 242, 1),
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
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
      backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
    );
  }
}
