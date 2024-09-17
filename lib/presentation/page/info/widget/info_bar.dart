// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfoAppBar extends StatelessWidget {
  const InfoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {},
          color: Colors.white,
          icon: const Icon(Icons.favorite_border),
        )
      ],
    );
  }
}
