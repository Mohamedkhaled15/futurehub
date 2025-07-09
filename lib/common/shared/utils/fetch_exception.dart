class FetchException implements Exception {
  final String message;
  final bool isValidation;
  final Map<String, String> validation;

  const FetchException(
    this.message, {
    this.isValidation = false,
    this.validation = const {},
  });

  @override
  String toString() {
    return message;
  }

  // factory FetchException.fromOperation(Exception exception) {
  //   final error = exception.graphqlErrors.first;
  //
  //   final isValidation = error.extensions?.containsKey('validation');
  //   if (isValidation == true) {
  //     final Map<String, String> validation = {};
  //     error.extensions!['validation'].forEach((key, value) {
  //       validation[key] = value.first;
  //     });
  //
  //     return FetchException(
  //       error.message,
  //       isValidation: true,
  //       validation: validation,
  //     );
  //   }
  //
  //   return FetchException(error.message);
  // }
}
