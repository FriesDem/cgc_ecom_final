import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {

  final String title;
  const SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
          title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black87,
            ),
          ),
          const Text(
            "View more",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
