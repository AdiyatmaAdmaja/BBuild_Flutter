import 'package:flutter/material.dart';
// import '../userprofile.dart';

class PusatLayanan extends StatelessWidget {
  const PusatLayanan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 229, 93),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
      ),
      body: const Center(child: Text('Pusat Layanan')),
    );
  }
}
