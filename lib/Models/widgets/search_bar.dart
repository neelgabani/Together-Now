import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: ' Search...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          prefixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }
}
