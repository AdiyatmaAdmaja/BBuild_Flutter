import 'package:flutter/material.dart';

class DealsWidget extends StatelessWidget {
  const DealsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 4; i++)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Image(
                image: AssetImage('images/dashboard/deal$i.jpg'),
                height: 200,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
        ],
      ),
    );
  }
}
