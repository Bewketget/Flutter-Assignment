// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_assignment/data/Drowerlist.dart';

void main() => runApp(drowe());

// ignore: camel_case_types
class drowe extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  drowe({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              // ignore: sized_box_for_whitespace
              child: Container(
                width: double.infinity,
                height: 40,
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.arrow_back),
                          ),
                          const Text(
                            "Menu",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 25,
                      ),
                      // focusColor: Colors.amber,
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 15,
              child: SingleChildScrollView(
                child: Column(children: [
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('Assets/images/tikur.jpeg'),
                    ),
                    title: Text("Tikur sew"),
                    subtitle: Text("View Your profile"),
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 5,
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.85,
                    // color: Colors.yellow,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.white,
                          margin: const EdgeInsets.only(bottom: 5),
                          child: TextButton(
                            onPressed: () {
                              // ignore: avoid_print
                              print("it has been cliked");
                            },
                            child: ListTile(
                              leading: items[index]["pre"],
                              title: items[index]["title"],
                              trailing: items[index]["post"],
                            ),
                          ),
                        );
                      },
                      itemCount: items.length,
                    ),
                  ),
                ]),
              ),
            ),
            // list
          ],
        ),
      ),
    );
  }
}
