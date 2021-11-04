import 'package:flutter/material.dart';
import '../ebok_collection.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(context),
        body: _homepagebody(context),
        floatingActionButton: _floatingActionBtn(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

/// This is the top part of the screen.
/// contains the logo of the app and with a settings button.
AppBar _appBar(BuildContext context) {
  return AppBar(
    title: Text(
      "Bibliophile",
      style: Theme.of(context).textTheme.headline6,
    ),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const WebViewPage(),
            ),
          );
        },
        icon: const Icon(
          Icons.search_rounded,
        ),
      ),
    ],
  );
}

/// This is the area where the grid of books presents.
/// When a user pick an ebook from their storage, new book
/// will appear here
Widget _homepagebody(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "Recent books",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Expanded(
          // We use gridview.count to layout our grid as 3 column grid.
          child: GridView.count(
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 0.7,
            crossAxisCount: 3,
            children: [
              Image.asset(
                "assets/images/book1.png",
                fit: BoxFit.cover,
              ),
              Image.asset(
                "assets/images/book2.jpeg",
                fit: BoxFit.cover,
              ),
              Image.asset(
                "assets/images/book3.jpg",
                fit: BoxFit.cover,
              ),
              Image.asset(
                "assets/images/book4.png",
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

/// This widget is docked at the bottom of the screen.
/// Work as a file picker launcher button
/// to add new books.
Widget _floatingActionBtn(BuildContext context) {
  return GestureDetector(
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Add new books",
            style: Theme.of(context).textTheme.button,
          ),
          const Icon(Icons.add),
        ],
      ),
    ),
    onTap: () {
      // TODO: add haptic feedback if not present
      debugPrint("Tapped");
    },
  );
}
