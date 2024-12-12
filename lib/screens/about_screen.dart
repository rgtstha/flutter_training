import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("About Screen"),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.red),
              foregroundColor: WidgetStatePropertyAll(Colors.white),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Go Back"),
          ),
        ],
      ),
    );
  }
}
