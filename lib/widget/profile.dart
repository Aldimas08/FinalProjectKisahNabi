import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            child: Container(
              width: double.infinity,
              height: 150,
              child: Container(
                alignment: Alignment(0.0, 2.5),
                child: CircleAvatar(
                  // child: Container(
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(image: ImageBut)
                  //   ),
                  // ),
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS8wza5Ke-yq0JDnoYnSdLBuEH-0z4ldTCHA&usqp=CAU"),
                  radius: 70.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "DHYMZ__",
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "SoftwareEngineering | DailyFlutter",
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                letterSpacing: 2.0, //agar memberikan jarak setiap huruf
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Indonesia",
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black54,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Student at IDN BoardingSchool",
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.black54,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    ));
  }
}
