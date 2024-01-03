import 'package:flutter/material.dart';
import 'package:flutter_task_6/Cart/Checkout/checkout_page.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  State<PaymentMethodPage> createState() => PaymentMethodPageState();
}

class PaymentMethodPageState extends State<PaymentMethodPage> {
  int selectedPayment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
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
          'Payment',
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
          const SizedBox(height: 14.0),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20.0),
              Text(
                "Payment available",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //Start Paypal//
                  Row(
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
                                color: Colors.black,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Radio<int>(
                        value: 0,
                        groupValue: selectedPayment,
                        activeColor: const Color.fromRGBO(79, 79, 79, 1),
                        onChanged: (value) {
                          setState(() {
                            selectedPayment = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  //End Paypal//
                  const SizedBox(height: 16.0),
                  //Start GooglePlay//
                  Row(
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
                          'assets/images/logo_googleplay.png',
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Google Play",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Radio<int>(
                        value: 1,
                        groupValue: selectedPayment,
                        activeColor: const Color.fromRGBO(79, 79, 79, 1),
                        onChanged: (value) {
                          setState(() {
                            selectedPayment = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  //End GooglePlay//
                  const SizedBox(height: 16.0),
                  //Start Dana//
                  Row(
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
                          'assets/images/logo_dana.png',
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Dana",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Radio<int>(
                        value: 2,
                        groupValue: selectedPayment,
                        activeColor: const Color.fromRGBO(79, 79, 79, 1),
                        onChanged: (value) {
                          setState(() {
                            selectedPayment = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  //End Dana//
                  const SizedBox(height: 16.0),
                  //Start Gopay//
                  Row(
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
                          'assets/images/logo_gopay.png',
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Gopay",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Radio<int>(
                        value: 3,
                        groupValue: selectedPayment,
                        activeColor: const Color.fromRGBO(79, 79, 79, 1),
                        onChanged: (value) {
                          setState(() {
                            selectedPayment = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  //End Gopay//
                ],
              ),
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
                  MaterialPageRoute(builder: (_) => const CheckoutPage())
                  );
              },
              color: const Color.fromRGBO(51, 51, 51, 1),
              textColor: Colors.white,
              minWidth: 300,
              height: 45,
              child: const Text(
                "Save",
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
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    );
  }
}
