import 'package:flutter/material.dart';
import 'package:foodaapp/model/list.dart';
import 'package:foodaapp/screen/detailpage.dart';
import 'package:foodaapp/widget/appbar.dart';

// ignore: must_be_immutable
class Corousel extends StatelessWidget {
  Corousel({
    Key? key,
    required this.article,
  }) : super(key: key);

  final List<Kisah> article;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: setAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            child: GridView.builder(
              itemCount: article.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 25,
                mainAxisSpacing: 25,
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailPage(article: article[index]);
                      }),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        fit: BoxFit.cover, //guna memenuhi Container
                        image: NetworkImage(
                          article[index].image,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
