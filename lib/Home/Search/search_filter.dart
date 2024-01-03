import 'package:flutter/material.dart';
import 'package:flutter_task_6/Home/Search/search_list.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({super.key});

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
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
            width: 60.0,
            height: 60.0,
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
          'Filter',
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
              // Action on Reset button press
            },
            child: const Text(
              "Reset",
              style: TextStyle(
                color: Color.fromRGBO(235, 87, 87, 1),
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          // Start Category Filter //
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20.0),
                  Text(
                    "Category",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        //
                      },
                      // ignore: sort_child_properties_last
                      child: const Text(
                        "Most popular",
                        style: TextStyle(
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color.fromRGBO(130, 130, 130, 1),
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        //
                      },
                      color: const Color.fromRGBO(242, 242, 242, 1),
                      // ignore: sort_child_properties_last
                      child: const Text(
                        "The latest",
                        style: TextStyle(
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        //
                      },
                      color: const Color.fromRGBO(242, 242, 242, 1),
                      // ignore: sort_child_properties_last
                      child: const Text(
                        "Highest price",
                        style: TextStyle(
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        // Action on Category button press
                      },
                      color: const Color.fromRGBO(242, 242, 242, 1),
                      // ignore: sort_child_properties_last
                      child: const Text(
                        "Lowest price",
                        style: TextStyle(
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                ],
              ),
              const SizedBox(height: 30.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20.0),
                  Text(
                    "Price",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: TextFormField(
                      // Minimal Field
                      decoration: const InputDecoration(
                        labelText: "Minimal",
                        filled: true,
                        fillColor: Color.fromRGBO(242, 242, 242, 1),
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                        color: Color.fromRGBO(189, 189, 189, 1)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: TextFormField(
                      // Maximal Field
                      decoration: const InputDecoration(
                        labelText: "Maximum",
                        filled: true,
                        fillColor: Color.fromRGBO(242, 242, 242, 1),
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                        color: Color.fromRGBO(189, 189, 189, 1)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                ],
              ),
              // End Catagory Filter
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 350.0, right: 16.0, left: 16.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const SearchList()));
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
