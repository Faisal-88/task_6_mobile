import 'package:flutter/material.dart';
import 'package:flutter_task_6/Chat/chat_customer.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
        title: const Text(
          'Chat',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
          ),
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
                Icons.search,
                color: Color.fromRGBO(130, 130, 130, 1),
                size: 24.0,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40.0),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ChatCustomerPage())
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 20.0),
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/user.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                      Text(
                      "Nusantara Store",
                      style: TextStyle(
                        color:  Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                      ),
                    ),  
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Ok, Please order it brother",
                      style: TextStyle(
                        color: Color.fromRGBO(189, 189, 189, 1),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "2021-03-10",
                        style: TextStyle(
                          color: Color.fromRGBO(130, 130, 130, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
            const SizedBox(height: 8.0),
            const Divider(
              thickness: 1.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 20.0),
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/user.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                      Text(
                      "IBox Store",
                      style: TextStyle(
                        color:  Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                      ),
                    ),  
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Ok, Please order it brother",
                      style: TextStyle(
                        color: Color.fromRGBO(189, 189, 189, 1),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "2021-03-10",
                        style: TextStyle(
                          color: Color.fromRGBO(130, 130, 130, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            const Divider(
              thickness: 1.0,
            ),
          ],
        ),
      ),
    );
  }
}