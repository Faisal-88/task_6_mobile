import 'package:flutter/material.dart';

class ChatCustomerPage extends StatefulWidget {
  const ChatCustomerPage({Key? key}) : super(key: key);

  @override
  State<ChatCustomerPage> createState() => _ChatCustomerPageState();
}

class _ChatCustomerPageState extends State<ChatCustomerPage> {
  List<String> messages = [
    "hello, is skincare still available?",
    "hello too, there are still Bro please \norder all the items are ready and they \nare still long expiring",
    "and there is also a discount too.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
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
        title: Row(
          children: [
            Container(
              width: 40.0,
              height: 40.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/user.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                        border: Border.all(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8.0),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nusantara Store",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                  ),
                ),
                Text(
                  "Online",
                  style: TextStyle(
                    color: Color.fromRGBO(189, 189, 189, 1),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              //
            },
            icon: Container(
              padding: const EdgeInsets.all(8.0),
              width: 40.0,
              height: 40.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(242, 242, 242, 1),
              ),
              child: const Icon(
                Icons.more_horiz,
                color: Color.fromRGBO(130, 130, 130, 1),
                size: 24.0,
              ),
            ),
          ),
        ],
      ),
      body: Column(

        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          margin: const EdgeInsets.symmetric(vertical: 8.0),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(242, 242, 242, 1),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                messages[index],
                                style: const TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              const Text(
                                "10:00",
                                style: TextStyle(
                                  color: Color.fromRGBO(189, 189, 189, 1),
                                  fontSize: 14.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(239, 239, 239, 1),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.attach_file),
                        border: InputBorder.none,
                        hintText: "Thank you very much...",
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  //
                },
                icon: Container(
                  padding: const EdgeInsets.all(8.0),
                  width: 60.0,
                  height: 60.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(51, 51, 51, 1),
                  ),
                  child: const Icon(
                    Icons.send,
                    size: 24.0,
                    color: Color.fromRGBO(255, 255, 255, 1)
                    ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
