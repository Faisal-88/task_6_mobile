import 'package:flutter/material.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  int selectedAddress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Shipping',
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
          //Start Address//
          child: Column(
            children: [
              const SizedBox(height: 14.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20.0),
                  Text(
                    "Address available",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
              //End Address//
              const SizedBox(height: 10.0),
              //Start Office//
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
                    Radio<int>(
                      value: 0,
                      groupValue: selectedAddress,
                      activeColor: const Color.fromRGBO(79, 79, 79, 1),
                      onChanged: (value) {
                        setState(() {
                          selectedAddress = value!;
                        });
                      },
                    ),
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
                            "South Tangerang City, Banten 15414 \n0822-1376-1973",
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
                    const Icon(
                      Icons.edit,
                      color: Color.fromRGBO(51, 51, 51, 100),
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              //End Office//
              const SizedBox(height: 16.0),
              //Start Home//
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
                    Radio<int>(
                      value: 1,
                      groupValue: selectedAddress,
                      activeColor: const Color.fromRGBO(79, 79, 79, 1),
                      onChanged: (value) {
                        setState(() {
                          selectedAddress = value!;
                        });
                      },
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 12.0),
                          Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(height: 1.0),
                          Text(
                            "South Tangerang City, Banten 15414 \n0822-1376-1973",
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
                    const Icon(
                      Icons.edit,
                      color: Color.fromRGBO(51, 51, 51, 100),
                      size: 24.0,
                    ),
                  ],
                ),
              ),
              //End Home//
            ],
          ),
        )
      )
    );
  }
}