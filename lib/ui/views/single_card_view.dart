import 'package:flutter/material.dart';

class SingleCardView extends StatelessWidget {
  final String text;

  const SingleCardView({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
