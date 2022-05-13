import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final hintText;

  const MySearchBar({Key? key, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.grey[200],
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: const Icon(Icons.search),
          hintText: hintText,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
