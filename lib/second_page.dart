
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {

  const SecondPage({super.key});

  @override
  BlogScreenState createState() => BlogScreenState();
}

class BlogScreenState extends State<SecondPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context, false);
          },
        ),
        title: const Text(
          "Second Page",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(bottom: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Second Page Details",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ))),
    );
  }
}
