import 'package:flutter/material.dart';

class GenericSuccessPage extends StatelessWidget {
  const GenericSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(
            Icons.check_circle_rounded,
            size: 100,
            color: Color(0xFF78E445),
          ),
          const SizedBox(height: 34),
          Text('data')
        ],
      ),
    );
  }
}
