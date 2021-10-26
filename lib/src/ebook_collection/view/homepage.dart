import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(context),
        body: const Text("Hello world"),
      ),
    );
  }
}

AppBar _appBar(BuildContext context) {
  return AppBar(
    title: Text(
      "Bibliophile",
      style: Theme.of(context).textTheme.headline6,
    ),
    actions: [
      IconButton(
        onPressed: () {
          debugPrint("Search Clicked");
        },
        icon: const Icon(
          Icons.search_rounded,
        ),
      ),
    ],
  );
}
