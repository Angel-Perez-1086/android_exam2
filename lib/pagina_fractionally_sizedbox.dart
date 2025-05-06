import 'package:flutter/material.dart';

class MyFractionallySizedBox extends StatelessWidget {
  const MyFractionallySizedBox({Key? key}) : super(key: key);

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
              width: 300,
              height: 100,
              color: Colors.red.withOpacity(0.4),
              alignment: Alignment.topRight,
              child: FractionallySizedBox(
                widthFactor: 0.5, // 50% width
                heightFactor: 0.8, // 80% height
                child: Container(
                  height: 80, // will be ignored
                  width: 200, // will be ignored
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      '70%',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
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
