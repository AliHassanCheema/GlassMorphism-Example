import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GlassMorphic Testing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GlassmorphicTesting(),
    );
  }
}

class GlassmorphicTesting extends StatelessWidget {
  const GlassmorphicTesting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/profileImg.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            scale: 1,
          ),
          Center(
            child: GlassmorphicContainer(
                width: MediaQuery.of(context).size.width / 1.2,
                height: MediaQuery.of(context).size.height / 2.8,
                borderRadius: 20,
                blur: 4,
                border: 0.4,
                linearGradient: LinearGradient(
                  colors: [
                    const Color(0xFFffffff).withOpacity(0.1),
                    const Color(0xFFFFFFFF).withOpacity(0.05),
                  ],
                ),
                borderGradient: LinearGradient(
                  colors: [
                    const Color(0xFFffffff).withOpacity(0.5),
                    const Color((0xFFFFFFFF)).withOpacity(0.1),
                  ],
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Welcome to Glassmorphism',
                        style:
                            TextStyle(color: Color.fromARGB(255, 6, 151, 255)),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue))),
                      ),
                      TextButton(onPressed: () {}, child: const Text('Save'))
                    ],
                  ),
                ))),
          ),
        ],
      ),
    );
  }
}
