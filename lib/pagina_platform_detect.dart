import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform; // Importar 'dart:io' solo si no es web

class MyPlatformDetect extends StatelessWidget {
  const MyPlatformDetect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bodyContent;

    if (kIsWeb) {
      bodyContent = const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'HOLA DESDE LA WEEEEEB.\nLa detección específica del sistema operativo no es directa.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      );
    } else {
      bool isIOS = Platform.isIOS;
      bool isAndroid = Platform.isAndroid;
      bool isMacOS = Platform.isMacOS;
      bool isWindows = Platform.isWindows;
      bool isLinux = Platform.isLinux;

      bodyContent = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child:
                  Text('isIOS: $isIOS', style: const TextStyle(fontSize: 20))),
          const SizedBox(height: 20.0),
          Center(
              child: Text('isAndroid: $isAndroid',
                  style: const TextStyle(fontSize: 20))),
          const SizedBox(height: 20.0),
          Center(
              child: Text('isMacOS: $isMacOS',
                  style: const TextStyle(fontSize: 20))),
          const SizedBox(height: 20.0),
          Center(
              child: Text('isWindows: $isWindows',
                  style: const TextStyle(fontSize: 20))),
          const SizedBox(height: 20.0),
          Center(
              child: Text('isLinux: $isLinux',
                  style: const TextStyle(fontSize: 20))),
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
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Pantallas'),
        centerTitle: true,
        backgroundColor: Colors.purple[100],
      ),
      body: bodyContent,
    );
  }
}
