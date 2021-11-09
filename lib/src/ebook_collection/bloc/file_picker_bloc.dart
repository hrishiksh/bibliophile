import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

class FilePickerBloc extends Cubit<String> {
  FilePickerBloc() : super('');

  void pickFile() async {
    // * invoking the filepicker which only pick .epub files
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowedExtensions: ['epub'],
      type: FileType.custom,
      withData: true,
    );

    // * Checking results if it is null
    if (result != null) {
      // * Getting the application document directory using path-provider package
      Directory documentDirectory = await getApplicationDocumentsDirectory();

      // * Now we have to save the picked file in the appilcation document directory
      // * So we join the path of applicationDocumentDirectory with picked file name
      File applicationDirectoryFile = File(
        p.join(
          documentDirectory.path,
          result.files.single.name,
        ),
      );

      // * Finally writing the byteData in the previouly defined file
      applicationDirectoryFile.writeAsBytes(
        result.files.single.bytes!.toList(),
      );
    } else {
      // TODO: Show some error to the user
    }
  }
}
