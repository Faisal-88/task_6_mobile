import 'package:flutter/material.dart';
import 'package:flutter_task_6/Cart/Checkout/checkout_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  
  List<bool> isCheckedList = [false, false, false, false, false];

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
          'Cart',
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
              const SizedBox(height: 14.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 20.0),
                  Checkbox(
                    value: isCheckedList.every((isChecked) => isChecked),
                    activeColor: Colors.black,
                    onChanged: (value) {
                      setState(() {
                        isCheckedList =
                            List<bool>.filled(isCheckedList.length, value!);
                      });
                    },
                  ),
                  const Text(
                    "Select All",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              // looping cart content
              for (int i = 0; i < 5; i++)
                buildCartItem(
                  isChecked: isCheckedList[i],
                  index: i,
                ),
              const SizedBox(height: 8.0),
              Container(
                width: double.infinity,
                height: 90.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  ),
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),  
                  topRight: Radius.circular(20.0), 
                ),
                ),
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16.0),
                    const Row(
                      children: [
                        SizedBox(width: 20.0),
                        Expanded(
                          child: Text(
                            "Select Items (5)",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                        SizedBox(width: 80.0),
                        Expanded(
                          child: Text(
                            "Total : \$120.00",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    Center(
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const CheckoutPage()));
                        },
                        color: const Color.fromRGBO(51, 51, 51, 1),
                        textColor: Colors.white,
                        minWidth: 300,
                        height: 45,
                        child: const Text(
                          "Checkout",
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
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
    );
  }



  Widget buildCartItem({required bool isChecked, required int index}) {
    return Column(
      children: [
        const SizedBox(height: 8.0),
        Container(
          width: double.infinity,
          height: 90.0,
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 10.0),
              Checkbox(
                value: isChecked,
                activeColor: Colors.black,
                onChanged: (value) {
                  setState(() {
                    isCheckedList[index] = value!;
                  });
                },
              ),
              Container(
                width: 70,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(242, 242, 242, 1),
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
                    Text(
                      "White Ginseng Purify Mask",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      "\$120.00",
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
              InkWell(
                onTap: () {
                  // 
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: const Icon(
                    Icons.remove_circle,
                    color: Color.fromRGBO(224, 224, 224, 100),
                  ),
                ),
              ),
              const Text(
                "01",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto',
                ),
              ),
              InkWell(
                onTap: () {
                  // 
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: const Icon(
                    Icons.add_circle,
                    color: Color.fromRGBO(51, 51, 51, 100),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
