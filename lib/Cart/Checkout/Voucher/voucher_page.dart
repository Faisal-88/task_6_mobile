import 'package:flutter/material.dart';
import 'package:flutter_task_6/Cart/Checkout/checkout_page.dart';

class VoucherPage extends StatefulWidget {
  const VoucherPage({super.key});

  @override
  State<VoucherPage> createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  int selectedDelivery = 0;
  TextEditingController voucher = TextEditingController();

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
          'Voucher',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
          ),
        ),
        actions: [
        TextButton(
          onPressed: () {
            //
          }, 
          child: const Text(
            "Reset",
            style: TextStyle(
              color: Color.fromRGBO(235, 87, 87, 1),
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Roboto',
            ),
          ),),
      ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 14.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             const SizedBox(width: 16.0),
              // ignore: sized_box_for_whitespace
              Container(
                width: 220,
                child: TextFormField(
                  controller: voucher,
                  validator: (val) {
                    return val!.isEmpty ? "tidak boleh kosong" : null;
                  },
                  decoration: InputDecoration(
                    hintText: "ABCDEF123456",
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    fillColor: const Color.fromRGBO(242, 242, 242, 1),
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(width: 20.0),
              MaterialButton(
                onPressed: () {
                  //
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                color: Colors.black,
                textColor: Colors.white,
                child: const Text(
                  'Apply'
                  ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
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
                  //Start Delivery//
                  Container(
                    width: double.infinity,
                    height: 90.0,
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromRGBO(242, 242, 242, 1),
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
                            'assets/images/logo_delivery.png',
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Free shipping",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              Text(
                                "Valid for 3 more days",
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
                          groupValue: selectedDelivery,
                          activeColor: const Color.fromRGBO(79, 79, 79, 1),
                          onChanged: (value) {
                            setState(() {
                              selectedDelivery = value!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  //End Delivery//
                  const SizedBox(height: 16.0),
                  //Start Delivery//
                  Container(
                    width: double.infinity,
                    height: 90.0,
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromRGBO(242, 242, 242, 1),
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
                            'assets/images/logo_delivery.png',
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Free shipping",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              Text(
                                "Valid for 7 more days",
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
                          groupValue: selectedDelivery,
                          activeColor: const Color.fromRGBO(79, 79, 79, 1),
                          onChanged: (value) {
                            setState(() {
                              selectedDelivery = value!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  //End Delivery//
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
