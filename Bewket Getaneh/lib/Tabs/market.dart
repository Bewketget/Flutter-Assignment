// ignore_for_file: sized_box_for_whitespace, prefer_adjacent_string_concatenation, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(const Market());

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              // color: Colors.red,
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Colors.white,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Marketplace",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        size: 25,
                      ),
                      splashRadius: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 10,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.78,
            width: MediaQuery.of(context).size.width,
            // color: Colors.red,
            child: ListView(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.green,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Inbox",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Sell",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Categories",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Search",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      // ignore: duplicate_ignore
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text("New for you"),
                          const Text(
                            "See all(" + "16" + ") ",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.12,
                        color: Colors.grey,
                        child: ListTile(
                          leading: const Image(
                            image: AssetImage('Assets/images/eth.jpeg'),
                          ),
                          title: const Text(
                              "search for known shoe and & \n cloth shops in your\n local place"),
                          subtitle: Text(
                            DateFormat('MMMd').format(DateTime.now()) +
                                " at" +
                                DateFormat('jm').format(DateTime.now()),
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Today's selection"),
                          Row(
                            children: [
                              const Icon(Icons.place),
                              const Text("Gondar . 'Maraki'")
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width,
                              // color: Colors.red,
                              child: Row(children: [
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        const Expanded(
                                          child: Image(
                                            image: AssetImage(
                                                'Assets/images/shop.jpg'),
                                          ),
                                        ),
                                        ListTile(
                                          title: Row(
                                            children: [
                                              const Icon(Icons.monetization_on),
                                              const Text("250")
                                            ],
                                          ),
                                          subtitle:
                                              const Text("Timberland Boots"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        const Expanded(
                                          child: Image(
                                            image: AssetImage(
                                                'Assets/images/shop.jpg'),
                                          ),
                                        ),
                                        ListTile(
                                          title: Row(
                                            children: [
                                              const Icon(Icons.monetization_on),
                                              const Text("250")
                                            ],
                                          ),
                                          subtitle:
                                              const Text("Timberland Boots"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
