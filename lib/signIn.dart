import 'package:flutter/material.dart';

class Verify extends StatelessWidget {
  const  Verify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon:const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
      ),
      )
    );
  }
}