// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../data/common/contents.dart';
// import '../data/maincontent/heading.dart';

void main() => runApp(const Video());

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: size.height * 0.07,
            width: size.width,
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
                  "Videos",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person,
                        size: 25,
                      ),
                      splashRadius: 20,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.download,
                        size: 25,
                      ),
                      splashRadius: 20,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        size: 25,
                      ),
                      splashRadius: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 10,
          child: Container(
            width: size.width,
            height: MediaQuery.of(context).size.height * 0.7759,
            // color: Colors.red,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.05,
                        // color: Colors.green,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 15),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const Icon(Icons.live_tv),
                                      const Text("For You"),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 15),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const Icon(Icons.video_camera_back),
                                      const Text("Live"),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 15),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const Icon(Icons.check_box),
                                      const Text("Following"),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 15),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const Icon(Icons.bookmark),
                                      const Text("Saved"),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 15),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: const [
                                      Icon(Icons.gamepad),
                                      Text("Gamming"),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      InkWell(
                        onTap: () {},
                        highlightColor: Colors.grey,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.1,
                          // color: Colors.pink,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text("Video Notifications"),
                                  // ignore: prefer_adjacent_string_concatenation, prefer_interpolation_to_compose_strings
                                  Text("See All" + "(" + "15" + ")"),
                                ],
                              ),
                              Container(
                                color: Colors.grey[350],
                                height: 25,
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.forward,
                                      color: Colors.blue,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("7 firends shared Videos"),
                                  ],
                                ),
                              ),
                              Container(
                                color: Colors.grey[350],
                                height: 25,
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.video_camera_back,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("7 firends shared Videos"),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return const content();
                          },
                        ),
                      ),
                    ],
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
