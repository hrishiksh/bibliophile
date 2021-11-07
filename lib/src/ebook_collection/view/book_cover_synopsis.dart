import 'dart:ui';

import 'package:bibliophile/src/widgets/buttons/floating_action_btn.dart';
import 'package:flutter/material.dart';

class BookCoverSynopsis extends StatelessWidget {
  const BookCoverSynopsis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _bookCoverAndBackground(context),
              // * Title of the book
              // TODO: Pass the title as a parameter
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Text(
                  "The subtle art of not giving a fuck",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              // * Author Name
              // TODO: Pass the author name as a parameter
              Text(
                "Mark Manson",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              _synopsis(context)
            ],
          ),
        ),
        floatingActionButton: FloatingActionCustomBtn(
          title: "Start Reading",
          icondata: Icons.arrow_forward_rounded,
          ontap: () {
            debugPrint("Let's read the book pressed");
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

/// This widget render the book cover and the blurred background.
/// There is a back button to go to home page
Widget _bookCoverAndBackground(BuildContext context) {
  return SizedBox(
    height: 400,
    child: Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          height: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/book1.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
            blendMode: BlendMode.srcOver,
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/book1.png",
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 10,
          top: 10,
          child: IconButton(
            onPressed: () {
              debugPrint("Go back pressed");
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              size: 27,
            ),
            color: Colors.white,
          ),
        )
      ],
    ),
  );
}

/// This widget contain the synopsis of the book.
/// A short descroption of the book
Widget _synopsis(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Synopsis",
          style: Theme.of(context).textTheme.bodyText2,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 15),
        Text(
          "Designed to define out-of-the-box thinking for the youngest of us, this fun and unique illustrative journey reminds us all how simple and practical it can be to apply a new perspective to even the most daunting challenges.",
          style: Theme.of(context).textTheme.caption,
        )
      ],
    ),
  );
}
