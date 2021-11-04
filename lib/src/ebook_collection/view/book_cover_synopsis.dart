import 'dart:ui';

import 'package:flutter/material.dart';

class BookCoverSynopsis extends StatelessWidget {
  const BookCoverSynopsis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/book2.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
              ),
              Text('Not blurred'),
            ],
          ),
        ),
      ),
    );
  }
}
