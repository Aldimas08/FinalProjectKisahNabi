import 'package:flutter/material.dart';
import 'package:foodaapp/model/list.dart';
import 'package:foodaapp/screen/homepage.dart';
import 'package:foodaapp/widget/corousel.dart';

class DetailPage extends StatefulWidget {
  final Kisah article;
  DetailPage({required this.article});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image.network(
                      widget.article.image,
                      height: 260,
                      fit: BoxFit.cover,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Corousel(article: kisahNabi),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_back)),
                    SizedBox(
                      height: 300,
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ), //untuk bagian ujungnya melengkung
                            color: Colors.white),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 24,
                              ),
                              Text(
                                widget.article.title,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                width: 355,
                                height: 3,
                                color: Colors.black,
                                margin: EdgeInsets.only(top: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          widget.article.description,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            letterSpacing: 2,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
