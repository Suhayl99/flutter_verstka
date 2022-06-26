import 'package:flutter/material.dart';

import 'constans.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArtApp(),
    );
  }
}

class ArtApp extends StatefulWidget {
  const ArtApp({Key? key}) : super(key: key);

  @override
  State<ArtApp> createState() => _ArtAppState();
}

class _ArtAppState extends State<ArtApp> {
  final Color scaffoldColor = const Color(0xfff8f8f8);
  final Color textColor1 = const Color(0xff333333);
  final Gradient _gradient = const LinearGradient(
      colors: [Color(0xfff8f8f8), Color(0xff9F03FF)],
      transform: GradientRotation(45));
  String data =
      "Together with my design team, we designed this futuristic Cyberyacht concept artwork. We wanted to create something that has not been created yet, so we started to collect ideas of how we imagine the Cyberyacht could look like in the future.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: AppBar(
        backgroundColor: scaffoldColor,
        elevation: 0,
        title: Image.asset(
          'assets/app_logo.png',
          height: 37,
        ),
        centerTitle: false,
        actions: [
          Row(
            children: [
                IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: textColor1,
              size: 24,
            ),
          ),
            IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_outlined,
              color: textColor1,
              size: 24,
            ),
          ),
            ],
          )
        
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add wallet to pay',
                      style: kTextStyle(
                        color: textColor1,
                        size: 20,
                      ),
                    ),
                    Text(
                      'Easy to sell your Digital Art with 3 step',
                      style: kTextStyle(
                          color: Colors.black54,
                          size: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
            ),
          ),
          Container(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Container(
                    height: 100,
                    width: 343,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 4),
                    decoration: const BoxDecoration(
                      color: Colors.black54,

                    ),
                    child: Text(
                      '+',
                      style: kTextStyle(
                          size: 16,
                          color: textColor1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  label: Text(
                    "Bank wallet",
                    style: kTextStyle(
                        size: 24,
                        color: textColor1,
                        fontWeight: FontWeight.bold),
                  ),
                  style: buttonStyle(
                    color: Colors.white,
                    shadowColor: Colors.black12,
                    elevation: 10,
                    padding: const EdgeInsets.fromLTRB(5, 5, 15, 5),
                    borderRadius: 20,
                  ),
                ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 70, right: 70),
            child: Image.asset(
              "assets/app_logo.png",
            ),
          ),
          Row(
            children: [
              Text(
                "The",
                style: kTextStyle(
                    color: Colors.black45,
                    size: 30,
                    fontWeight: FontWeight.w200),
              ),
              Text(
                "New",
                style: kTextStyle(
                    color: Colors.black54,
                    size: 30,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                "Creative",
                style: kTextStyle(color: Colors.black87, size: 30),
              ),
              Text(
                "Economy",
                style: kTextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold, size: 30),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: _gradient,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Earn now',
              style: kTextStyle(size: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 60,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xff0000EA), width: 1),
            ),
            child: Text(
              'Discover more',
              style: kTextStyle(
                  size: 20, fontWeight: FontWeight.w600, color: textColor1),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
