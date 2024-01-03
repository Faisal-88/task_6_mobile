import 'package:flutter/material.dart';
import 'package:flutter_task_6/Cart/Checkout/checkout_page.dart';

class CourierPage extends StatefulWidget {
  const CourierPage({super.key});

  @override
  State<CourierPage> createState() => _CourierPageState();
}

class _CourierPageState extends State<CourierPage> {
 
  int selectedCourier = 0;

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
          'Courier',
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
                "Courier available",
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
                  //Start pos//
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
                          'assets/images/logo_pos.png',
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Pos Indonesia",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                              ),
                            ),
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
                      Radio<int>(
                        value: 0,
                        groupValue: selectedCourier,
                        activeColor: const Color.fromRGBO(79, 79, 79, 1),
                        onChanged: (value) {
                          setState(() {
                            selectedCourier = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  //End Pos Indonesia//
                  const SizedBox(height: 16.0),
                  //Start Jne//
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
                          'assets/images/logo_jne.png',
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "JNE Express",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Text(
                              "REG - \$50.00 (3 working days)",
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
                      Radio<int>(
                        value: 1,
                        groupValue: selectedCourier,
                        activeColor: const Color.fromRGBO(79, 79, 79, 1),
                        onChanged: (value) {
                          setState(() {
                            selectedCourier = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  //End Jne//
                  const SizedBox(height: 16.0),
                  //Start J&T//
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
                          'assets/images/logo_j&t.png',
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "JNT Express",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Text(
                              "REG - \$50.00 (5 working days)",
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
                      Radio<int>(
                        value: 2,
                        groupValue: selectedCourier,
                        activeColor: const Color.fromRGBO(79, 79, 79, 1),
                        onChanged: (value) {
                          setState(() {
                            selectedCourier = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  //End J&t//
                  const SizedBox(height: 16.0),
                  //Start Sicepat//
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
                          'assets/images/logo_sicepat.png',
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sicepat",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            Text(
                              "REG - \$50.00 (7 working days)",
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
                      Radio<int>(
                        value: 3,
                        groupValue: selectedCourier,
                        activeColor: const Color.fromRGBO(79, 79, 79, 1),
                        onChanged: (value) {
                          setState(() {
                            selectedCourier = value!;
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