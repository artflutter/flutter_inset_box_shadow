import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

void main() {
  runApp(const ExampleApp());
}

const primaryColor = Color(0xFFE0E0E0);

class ExampleApp extends StatelessWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFf5deb3),
        body: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            color: Colors.white,
            // color: Color(0xFF1A212A),
            height: 250,
            child: Container(
              margin: EdgeInsets.only(top: 100),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                color: Colors.white,
                // color: Color(0xFF1A212A),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 12),
                    blurRadius: 16,
                    color: Colors.black.withOpacity(0.08),
                    spreadRadius: -6,
                    inset: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
