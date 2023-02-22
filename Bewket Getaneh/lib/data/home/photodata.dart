import 'package:flutter/material.dart';

void main() => runApp(const RecentPhotos());

class RecentPhotos extends StatefulWidget {
  const RecentPhotos({super.key});

  @override
  State<RecentPhotos> createState() => _RecentPhotosState();
}

class _RecentPhotosState extends State<RecentPhotos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.22,
      // width: 50,
      height: MediaQuery.of(context).size.height * 0.2,
      // height: 50,
      // color: Colors.blue,
      decoration: const BoxDecoration(
          // borderRadius: BorderRadius.circular(22),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          // color: Colors.red,
          image: DecorationImage(
            image: AssetImage('Assets/images/selam.jpeg'),
            fit: BoxFit.fill,
          )),

      margin: const EdgeInsets.symmetric(horizontal: 2),

      child: Stack(
        children: const [
          // ignore: unnecessary_const
          const Positioned.fill(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Selam",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          // ignore: unnecessary_const
          const Positioned(
            child: Align(
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('Assets/images/baby.jpg'),
                // child: Text(
                //   "2",
                //   style: TextStyle(color: Colors.white),
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
