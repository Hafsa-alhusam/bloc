import 'package:flutter/material.dart';

class BuildTextWidget extends StatelessWidget {
  final String message;
  const BuildTextWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message));
  }
}
