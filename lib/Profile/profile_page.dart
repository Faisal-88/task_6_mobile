import 'package:flutter/material.dart';
import 'package:flutter_task_6/Profile/change_profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
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
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // User Profile
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChangeProfilePage(),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(
                          width: 70.0,
                          height: 70.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/user.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: [
                          Text(
                            "M. Faisal",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        "Silver members",
                        style: TextStyle(
                          color: Color.fromRGBO(189, 189, 189, 1),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 60.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20.0),
                InkWell(
                  onTap: () {
                    //
                  },
                  child: const Icon(
                    Icons.playlist_add_check,
                    size: 30.0,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 16.0),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "My orders",
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
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(context,
                      // MaterialPageRoute(
                      //   builder: (_) => const (),
                      // ));
                    },
                    child: const Icon(
                      Icons.chevron_right,
                      color: Color.fromRGBO(189, 189, 189, 1),
                      size: 24.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Divider(
              thickness: 1.0,
            ),
            //Shipping address
            const SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20.0),
                InkWell(
                  onTap: () {
                    //
                  },
                  child: const Icon(
                    Icons.location_pin,
                    size: 30.0,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 16.0),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Shipping addresses",
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
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(context,
                      // MaterialPageRoute(
                      //   builder: (_) => const (),
                      // ));
                    },
                    child: const Icon(
                      Icons.chevron_right,
                      color: Color.fromRGBO(189, 189, 189, 1),
                      size: 24.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Divider(
              thickness: 1.0,
            ),
            //Payment method
            const SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20.0),
                InkWell(
                  onTap: () {
                    //
                  },
                  child: const Icon(
                    Icons.credit_card,
                    size: 30.0,
                  ),
                ),
                const SizedBox(width: 16.0),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Payment methodes",
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
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(context,
                      // MaterialPageRoute(
                      //   builder: (_) => const (),
                      // ));
                    },
                    child: const Icon(
                      Icons.chevron_right,
                      color: Color.fromRGBO(189, 189, 189, 1),
                      size: 24.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Divider(
              thickness: 1.0,
            ),
            //My voucher
            const SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20.0),
                InkWell(
                  onTap: () {
                    //
                  },
                  child: const Icon(
                    Icons.discount,
                    size: 30.0,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 16.0),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "My Voucher",
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
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(context,
                      // MaterialPageRoute(
                      //   builder: (_) => const (),
                      // ));
                    },
                    child: const Icon(
                      Icons.chevron_right,
                      color: Color.fromRGBO(189, 189, 189, 1),
                      size: 24.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Divider(
              thickness: 1.0,
            ),
            //Setting
            const SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20.0),
                InkWell(
                  onTap: () {
                    //
                  },
                  child: const Icon(
                    Icons.settings,
                    size: 30.0,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 16.0),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Settings",
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
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(context,
                      // MaterialPageRoute(
                      //   builder: (_) => const (),
                      // ));
                    },
                    child: const Icon(
                      Icons.chevron_right,
                      color: Color.fromRGBO(189, 189, 189, 1),
                      size: 24.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Divider(
              thickness: 1.0,
            ),
            //Logout
            const SizedBox(
              height: 8.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Logout",
                      style: TextStyle(
                        color: Color.fromRGBO(235, 87, 87, 1),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Divider(
              thickness: 1.0,
            ),
            //Version
            const SizedBox(
              height: 8.0,
            ),
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(189, 189, 189, 1),
                    blurRadius: 20.0,
                    spreadRadius: 2.0,
                    offset: Offset(0, 50),
                  ),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Version 0.1",
                        style: TextStyle(
                          color: Color.fromRGBO(189, 189, 189, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
