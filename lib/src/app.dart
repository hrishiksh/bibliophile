import 'package:flutter/material.dart';
import './ebook_collection/ebok_collection.dart';
import './theme/theme.dart';

class Bibliophile extends StatelessWidget {
  const Bibliophile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(context),
      home: const BookCoverSynopsis(),
    );
  }
}
