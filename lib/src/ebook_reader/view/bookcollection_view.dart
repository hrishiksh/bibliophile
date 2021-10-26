import 'package:epub_viewer/epub_viewer.dart';
import 'package:flutter/material.dart';

class BookCollectionView extends StatelessWidget {
  const BookCollectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
              onPressed: () async {
                EpubViewer.setConfig(
                  themeColor: Theme.of(context).primaryColor,
                  identifier: "iosBook",
                  scrollDirection: EpubScrollDirection.ALLDIRECTIONS,
                  allowSharing: true,
                  enableTts: true,
                );
                await EpubViewer.openAsset(
                    "assets/The-Psychology-of-Money.epub");
              },
              child: const Text("OpenBook")),
        ),
      ),
    );
  }
}



// import 'dart:developer';
// import 'dart:io';
// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:epubx/epubx.dart';
// import 'package:flutter/services.dart';

// class BookCollectionView extends StatelessWidget {
//   const BookCollectionView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     late EpubBook epubBook;
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: Column(
//             children: [
//               ElevatedButton(
//                 onPressed: () async {
//                   ByteData epubFile = await DefaultAssetBundle.of(context)
//                       .load("assets/The-Psychology-of-Money.epub");
//                   Uint8List epubFileByte = epubFile.buffer.asUint8List(
//                       epubFile.offsetInBytes, epubFile.lengthInBytes);
//                   epubBook = await EpubReader.readBook(epubFileByte);
//                 },
//                 child: const Text("Load Ebook"),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   epubBook.Content
//                   debugPrint(epubBook.Title);
//                   debugPrint(epubBook.Author);
//                 },
//                 child: const Text("E book name"),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
