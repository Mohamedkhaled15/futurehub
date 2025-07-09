class UploadService {
  static const mutation = r'''
    mutation Upload($file: Upload!) {
      upload(file: $file)
    }
  ''';

  // Future<String> upload({required File file}) async {
  //   final toUpload = await MultipartFile.fromPath('file', file.path);
  //
  //   final result = await Client.current.mutate(
  //     MutationOptions(
  //       document: gql(mutation),
  //       variables: {'file': toUpload},
  //     ),
  //   );
  //
  //   if (result.hasException) {
  //     print("Exception: ${result.exception.toString()}");
  //     throw FetchException.fromOperation(result.exception!);
  //   }
  //
  //   final data = result.data!['upload'] as String;
  //
  //   debugPrint(data);
  //
  //   return data;
  // }
}
