import 'package:flutter/material.dart';

void main() => runApp(const vert());

// ignore: camel_case_types
class vert extends StatelessWidget {
  const vert({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return TextButton(
          onPressed: () {
            // ignore: avoid_print
            print("I love you!!");
          },
          child: ListTile(
            leading: Stack(
              alignment: Alignment.bottomRight,
              children: const [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('Assets/images/bro.jpeg'),
                ),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.green,
                  child: Text(
                    "3h",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            title: const Text("Yonas Birhanu"),
            subtitle: const Text("How are you doing?"),
            trailing: const CircleAvatar(
              radius: 5,
              backgroundImage: AssetImage('Assets/images/bro.jpeg'),
            ),
          ),
        );
      },
    );
  }
}
