import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

Future<void> main() async {
  runApp(
    const EasyPayamak(),
  );
}

class EasyPayamak extends StatelessWidget {
  const EasyPayamak({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
