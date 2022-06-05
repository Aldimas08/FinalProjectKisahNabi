
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



PreferredSize setAppBar() {
  return PreferredSize(
    preferredSize:const Size.fromHeight(100.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.amber
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Ahlan Wasahlan",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "DHYMZ__",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 20),
              child: Container(
                child: CircleAvatar(
                    backgroundImage:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS8wza5Ke-yq0JDnoYnSdLBuEH-0z4ldTCHA&usqp=CAU"),
                    radius: 30,
                ),
                width: 60,
                margin:const EdgeInsets.all(5),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}