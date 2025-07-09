import 'package:flutter/material.dart';

class PaginatorLoadingIndicator extends StatelessWidget {
  const PaginatorLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(child: CircularProgressIndicator.adaptive()),
        ),
      ),
    );
  }
}
