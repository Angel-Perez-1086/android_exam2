import 'package:flutter/material.dart';

class MyPositioned extends StatelessWidget {
  const MyPositioned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Pantallas'),
        centerTitle: true,
        backgroundColor: Colors.purple[100],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 450,
              width: 300,
              color: Colors.transparent,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 200,
                      width: 200,
                      color: Colors.deepPurple[300],
                      child: const Text(
                        "What was I thinking.?",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    width: 200,
                    height: 300,
                    child: SizedBox(
                      height: 200,
                      child: Image.network(
                          'https://raw.githubusercontent.com/Angel-Perez-1086/ASD/refs/heads/main/iphone-x-valorant-background-cnnl08jzkbbpoiq7.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
          ),
        ],
      ),
    );
  }
}
