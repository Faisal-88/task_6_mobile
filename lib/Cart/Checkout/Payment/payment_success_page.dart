import 'package:flutter/material.dart';
import 'package:flutter_task_6/Cart/Checkout/Payment/payment_detail_page.dart';

class PaymentSuccessPage extends StatefulWidget {
  const PaymentSuccessPage({super.key});

  @override
  State<PaymentSuccessPage> createState() => _PaymentSuccessPageState();
}

class _PaymentSuccessPageState extends State<PaymentSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
            MaterialPageRoute(
              builder: (_) => const PaymentDetailPage(),
            ));
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
              Icons.close,
              color: Color.fromRGBO(130, 130, 130, 100),
              size: 24.0,
            ),
          ),
        ),
        title: const Text(
          'Payment Confirmation',
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/icon_success.png',
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Payment Successful',
              style: TextStyle(
                color: Color.fromRGBO(51, 51, 51, 1),
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto',
              ),
            ),
            const Text(
              'Your payment was successful, \nplease see the trail of your order',
              style: TextStyle(
                color: Color.fromRGBO(189, 189, 189, 1),
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
