import 'package:flutter/material.dart';

void main() => runApp(const mystory());

// ignore: camel_case_types
class mystory extends StatelessWidget {
  const mystory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      // width: 50,

      // height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[200],
      ),

      // height: 80,
      // color: Colors.yellow,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 70,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(5), bottom: Radius.zero),
                image: DecorationImage(
                  image: AssetImage('Assets/images/tikur.jpeg'),
                  fit: BoxFit.fill,
                )),
          ),
          // ignore: sized_box_for_whitespace
          Container(
            width: double.infinity,
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 1),
                  child: Icon(
                    Icons.add_circle,
                    size: 14,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  "create story",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                // Text(
                //   "Story",
                //   style: TextStyle(
                //     fontSize: 10,
                //   ),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
