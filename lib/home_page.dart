import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> gambar2 = [
      "img_1.png",
      "img_2.png",
      "img_3.png",
      "img_4.png",
      "img_5.png",
      "img_6.png"
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          TextFormField(),
          Text("bebas"),
          Expanded(
            child: GridView.builder(
              itemCount: gambar2.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/${gambar2[i]}'),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
