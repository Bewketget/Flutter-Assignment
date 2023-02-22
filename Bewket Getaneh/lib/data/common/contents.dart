import 'package:flutter/material.dart';

// ignore: camel_case_types
class content extends StatelessWidget {
  const content({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return Container(
      height: MediaQuery.of(context).size.height * 0.623,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          //   it is from here
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('Assets/images/tady.jpg'),
            ),
            title: Row(
              children: [
                const Text("Timket in Gondar "),
                const Icon(
                  Icons.circle_rounded,
                  size: 5,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Follow",
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            ),
            subtitle: Row(
              children: const [
                Text("it was an amazing  . 5d ."),
                Icon(
                  Icons.circle_rounded,
                  size: 15,
                )
              ],
            ),
            trailing: IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {},
            ),
          ),

          Container(
            height: size.height * 0.4,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('Assets/images/tim.jpg'))),
            //color: Colors.pink,
          ),
          const Text(" i had spend a lovely day there"),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Row(
                    children: const [
                      CircleAvatar(
                        radius: 9,
                        child: Icon(
                          Icons.thumb_up,
                          size: 10,
                        ),
                      ),
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.red,
                        // backgroundColor: Colors.red,
                        child: Icon(
                          Icons.heart_broken_sharp,
                          size: 10,
                        ),
                      ),
                      Text("257K"),
                    ],
                  ),
                ),
                const Text("18M Views"),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(Icons.thumb_up_outlined),
                    Text("115K"),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(Icons.messenger_outline),
                    Text("54K"),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(Icons.forward_rounded),
                    Text("80K"),
                  ],
                ),
              ),
            ],
          )
          // upto here
        ],
      ),
    );
  }
}
