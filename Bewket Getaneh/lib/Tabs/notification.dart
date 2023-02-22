// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(const Notific());

class Notific extends StatefulWidget {
  const Notific({super.key});

  @override
  State<Notific> createState() => _NotificState();
}

class _NotificState extends State<Notific> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
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
                  "Notifications",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 25,
                  ),
                  splashRadius: 20,
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 11,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.778,
            width: MediaQuery.of(context).size.width,
            // color: Colors.red, ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.07,
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
                        child: const Text("Mark all as read"),
                      ),
                    ),
                  ),
                  const Text(
                    "Earlier",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.7,
                    // color: Colors.amber,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.7,
                          // color: Colors.red,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: const [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'Assets/images/aba.jpeg',
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 7,
                                        backgroundColor: Colors.blue,
                                        child: Icon(
                                          Icons.groups,
                                          color: Colors.white,
                                          size: 10,
                                        ),
                                      ),
                                    ]),
                                title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Abinet Girma posted in",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                          "'Ethiopian Science And Technology Advancement' group. "),
                                    ]),
                                subtitle: Text(
                                  // ignore: prefer_interpolation_to_compose_strings
                                  DateFormat('MMMd').format(DateTime.now()) +
                                      " at" +
                                      DateFormat('jm').format(DateTime.now()),
                                ),
                                trailing: IconButton(
                                  icon: const Icon(Icons.more_horiz),
                                  onPressed: () {},
                                ),
                              );
                            },
                            // physics: NeverScrollableScrollPhysics(),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
