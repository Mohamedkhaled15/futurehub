// import 'dart:async';
// import 'package:flutter/widgets.dart' as widgets;
// import 'package:gql/ast.dart';
// import 'package:graphql/client.dart' as graphql;
// import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
//
// class VariablesMutationScanProductPointsCode {
//   factory VariablesMutationScanProductPointsCode(
//           {required String referenceNumber}) =>
//       VariablesMutationScanProductPointsCode._({
//         r'referenceNumber': referenceNumber,
//       });
//
//   VariablesMutationScanProductPointsCode._(this._$data);
//
//   factory VariablesMutationScanProductPointsCode.fromJson(
//       Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$referenceNumber = data['referenceNumber'];
//     result$data['referenceNumber'] = (l$referenceNumber as String);
//     return VariablesMutationScanProductPointsCode._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   String get referenceNumber => (_$data['referenceNumber'] as String);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$referenceNumber = referenceNumber;
//     result$data['referenceNumber'] = l$referenceNumber;
//     return result$data;
//   }
//
//   CopyWithVariablesMutationScanProductPointsCode<
//           VariablesMutationScanProductPointsCode>
//       get copyWith => CopyWithVariablesMutationScanProductPointsCode(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationScanProductPointsCode) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$referenceNumber = referenceNumber;
//     final lOther$referenceNumber = other.referenceNumber;
//     if (l$referenceNumber != lOther$referenceNumber) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$referenceNumber = referenceNumber;
//     return Object.hashAll([l$referenceNumber]);
//   }
// }
//
// abstract class CopyWithVariablesMutationScanProductPointsCode<TRes> {
//   factory CopyWithVariablesMutationScanProductPointsCode(
//     VariablesMutationScanProductPointsCode instance,
//     TRes Function(VariablesMutationScanProductPointsCode) then,
//   ) = _CopyWithImplVariablesMutationScanProductPointsCode;
//
//   factory CopyWithVariablesMutationScanProductPointsCode.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationScanProductPointsCode;
//
//   TRes call({String? referenceNumber});
// }
//
// class _CopyWithImplVariablesMutationScanProductPointsCode<TRes>
//     implements CopyWithVariablesMutationScanProductPointsCode<TRes> {
//   _CopyWithImplVariablesMutationScanProductPointsCode(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationScanProductPointsCode _instance;
//
//   final TRes Function(VariablesMutationScanProductPointsCode) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? referenceNumber = _undefined}) =>
//       _then(VariablesMutationScanProductPointsCode._({
//         ..._instance._$data,
//         if (referenceNumber != _undefined && referenceNumber != null)
//           'referenceNumber': (referenceNumber as String),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationScanProductPointsCode<TRes>
//     implements CopyWithVariablesMutationScanProductPointsCode<TRes> {
//   _CopyWithStubImplVariablesMutationScanProductPointsCode(this._res);
//
//   TRes _res;
//
//   call({String? referenceNumber}) => _res;
// }
//
// class MutationScanProductPointsCode {
//   MutationScanProductPointsCode({
//     required this.scanQrCodeProduct,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationScanProductPointsCode.fromJson(Map<String, dynamic> json) {
//     final l$scanQrCodeProduct = json['scanQrCodeProduct'];
//     final l$$__typename = json['__typename'];
//     return MutationScanProductPointsCode(
//       scanQrCodeProduct:
//           MutationScanProductPointsCodescanQrCodeProduct.fromJson(
//               (l$scanQrCodeProduct as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationScanProductPointsCodescanQrCodeProduct scanQrCodeProduct;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$scanQrCodeProduct = scanQrCodeProduct;
//     _resultData['scanQrCodeProduct'] = l$scanQrCodeProduct.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$scanQrCodeProduct = scanQrCodeProduct;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$scanQrCodeProduct,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationScanProductPointsCode) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$scanQrCodeProduct = scanQrCodeProduct;
//     final lOther$scanQrCodeProduct = other.scanQrCodeProduct;
//     if (l$scanQrCodeProduct != lOther$scanQrCodeProduct) {
//       return false;
//     }
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionMutationScanProductPointsCode
//     on MutationScanProductPointsCode {
//   CopyWithMutationScanProductPointsCode<MutationScanProductPointsCode>
//       get copyWith => CopyWithMutationScanProductPointsCode(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationScanProductPointsCode<TRes> {
//   factory CopyWithMutationScanProductPointsCode(
//     MutationScanProductPointsCode instance,
//     TRes Function(MutationScanProductPointsCode) then,
//   ) = _CopyWithImplMutationScanProductPointsCode;
//
//   factory CopyWithMutationScanProductPointsCode.stub(TRes res) =
//       _CopyWithStubImplMutationScanProductPointsCode;
//
//   TRes call({
//     MutationScanProductPointsCodescanQrCodeProduct? scanQrCodeProduct,
//     String? $__typename,
//   });
//   CopyWithMutationScanProductPointsCodescanQrCodeProduct<TRes>
//       get scanQrCodeProduct;
// }
//
// class _CopyWithImplMutationScanProductPointsCode<TRes>
//     implements CopyWithMutationScanProductPointsCode<TRes> {
//   _CopyWithImplMutationScanProductPointsCode(
//     this._instance,
//     this._then,
//   );
//
//   final MutationScanProductPointsCode _instance;
//
//   final TRes Function(MutationScanProductPointsCode) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? scanQrCodeProduct = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationScanProductPointsCode(
//         scanQrCodeProduct:
//             scanQrCodeProduct == _undefined || scanQrCodeProduct == null
//                 ? _instance.scanQrCodeProduct
//                 : (scanQrCodeProduct
//                     as MutationScanProductPointsCodescanQrCodeProduct),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationScanProductPointsCodescanQrCodeProduct<TRes>
//       get scanQrCodeProduct {
//     final local$scanQrCodeProduct = _instance.scanQrCodeProduct;
//     return CopyWithMutationScanProductPointsCodescanQrCodeProduct(
//         local$scanQrCodeProduct, (e) => call(scanQrCodeProduct: e));
//   }
// }
//
// class _CopyWithStubImplMutationScanProductPointsCode<TRes>
//     implements CopyWithMutationScanProductPointsCode<TRes> {
//   _CopyWithStubImplMutationScanProductPointsCode(this._res);
//
//   TRes _res;
//
//   call({
//     MutationScanProductPointsCodescanQrCodeProduct? scanQrCodeProduct,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationScanProductPointsCodescanQrCodeProduct<TRes>
//       get scanQrCodeProduct =>
//           CopyWithMutationScanProductPointsCodescanQrCodeProduct.stub(_res);
// }
//
// const documentNodeMutationScanProductPointsCode = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'ScanProductPointsCode'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'referenceNumber')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       )
//     ],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'scanQrCodeProduct'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'reference_number'),
//                 value: VariableNode(name: NameNode(value: 'referenceNumber')),
//               )
//             ]),
//           )
//         ],
//         directives: [],
//         selectionSet: SelectionSetNode(selections: [
//           FieldNode(
//             name: NameNode(value: 'status'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'message'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'error'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'data'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: SelectionSetNode(selections: [
//               FieldNode(
//                 name: NameNode(value: 'points'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: '__typename'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//             ]),
//           ),
//           FieldNode(
//             name: NameNode(value: '__typename'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//         ]),
//       ),
//       FieldNode(
//         name: NameNode(value: '__typename'),
//         alias: null,
//         arguments: [],
//         directives: [],
//         selectionSet: null,
//       ),
//     ]),
//   ),
// ]);
// MutationScanProductPointsCode _parserFnMutationScanProductPointsCode(
//         Map<String, dynamic> data) =>
//     MutationScanProductPointsCode.fromJson(data);
// typedef OnMutationCompletedMutationScanProductPointsCode = FutureOr<void>
//     Function(
//   Map<String, dynamic>?,
//   MutationScanProductPointsCode?,
// );
//
// class OptionsMutationScanProductPointsCode
//     extends graphql.MutationOptions<MutationScanProductPointsCode> {
//   OptionsMutationScanProductPointsCode({
//     String? operationName,
//     required VariablesMutationScanProductPointsCode variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationScanProductPointsCode? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationScanProductPointsCode? onCompleted,
//     graphql.OnMutationUpdate<MutationScanProductPointsCode>? update,
//     graphql.OnError? onError,
//   })  : onCompletedWithParsed = onCompleted,
//         super(
//           variables: variables.toJson(),
//           operationName: operationName,
//           fetchPolicy: fetchPolicy,
//           errorPolicy: errorPolicy,
//           cacheRereadPolicy: cacheRereadPolicy,
//           optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//           context: context,
//           onCompleted: onCompleted == null
//               ? null
//               : (data) => onCompleted(
//                     data,
//                     data == null
//                         ? null
//                         : _parserFnMutationScanProductPointsCode(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationScanProductPointsCode,
//           parserFn: _parserFnMutationScanProductPointsCode,
//         );
//
//   final OnMutationCompletedMutationScanProductPointsCode? onCompletedWithParsed;
//
//   @override
//   List<Object?> get properties => [
//         ...super.onCompleted == null
//             ? super.properties
//             : super.properties.where((property) => property != onCompleted),
//         onCompletedWithParsed,
//       ];
// }
//
// class WatchOptionsMutationScanProductPointsCode
//     extends graphql.WatchQueryOptions<MutationScanProductPointsCode> {
//   WatchOptionsMutationScanProductPointsCode({
//     String? operationName,
//     required VariablesMutationScanProductPointsCode variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationScanProductPointsCode? typedOptimisticResult,
//     graphql.Context? context,
//     Duration? pollInterval,
//     bool? eagerlyFetchResults,
//     bool carryForwardDataOnException = true,
//     bool fetchResults = false,
//   }) : super(
//           variables: variables.toJson(),
//           operationName: operationName,
//           fetchPolicy: fetchPolicy,
//           errorPolicy: errorPolicy,
//           cacheRereadPolicy: cacheRereadPolicy,
//           optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//           context: context,
//           document: documentNodeMutationScanProductPointsCode,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationScanProductPointsCode,
//         );
// }
//
// extension ClientExtensionMutationScanProductPointsCode
//     on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationScanProductPointsCode>>
//       mutateScanProductPointsCode(
//               OptionsMutationScanProductPointsCode options) async =>
//           await this.mutate(options);
//   graphql.ObservableQuery<MutationScanProductPointsCode>
//       watchMutationScanProductPointsCode(
//               WatchOptionsMutationScanProductPointsCode options) =>
//           this.watchMutation(options);
// }
//
// class MutationScanProductPointsCodeHookResult {
//   MutationScanProductPointsCodeHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationScanProductPointsCode runMutation;
//
//   final graphql.QueryResult<MutationScanProductPointsCode> result;
// }
//
// MutationScanProductPointsCodeHookResult useMutationScanProductPointsCode(
//     [WidgetOptionsMutationScanProductPointsCode? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationScanProductPointsCode());
//   return MutationScanProductPointsCodeHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationScanProductPointsCode>
//     useWatchMutationScanProductPointsCode(
//             WatchOptionsMutationScanProductPointsCode options) =>
//         graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationScanProductPointsCode
//     extends graphql.MutationOptions<MutationScanProductPointsCode> {
//   WidgetOptionsMutationScanProductPointsCode({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationScanProductPointsCode? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationScanProductPointsCode? onCompleted,
//     graphql.OnMutationUpdate<MutationScanProductPointsCode>? update,
//     graphql.OnError? onError,
//   })  : onCompletedWithParsed = onCompleted,
//         super(
//           operationName: operationName,
//           fetchPolicy: fetchPolicy,
//           errorPolicy: errorPolicy,
//           cacheRereadPolicy: cacheRereadPolicy,
//           optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//           context: context,
//           onCompleted: onCompleted == null
//               ? null
//               : (data) => onCompleted(
//                     data,
//                     data == null
//                         ? null
//                         : _parserFnMutationScanProductPointsCode(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationScanProductPointsCode,
//           parserFn: _parserFnMutationScanProductPointsCode,
//         );
//
//   final OnMutationCompletedMutationScanProductPointsCode? onCompletedWithParsed;
//
//   @override
//   List<Object?> get properties => [
//         ...super.onCompleted == null
//             ? super.properties
//             : super.properties.where((property) => property != onCompleted),
//         onCompletedWithParsed,
//       ];
// }
//
// typedef RunMutationMutationScanProductPointsCode
//     = graphql.MultiSourceResult<MutationScanProductPointsCode> Function(
//   VariablesMutationScanProductPointsCode, {
//   Object? optimisticResult,
//   MutationScanProductPointsCode? typedOptimisticResult,
// });
// typedef BuilderMutationScanProductPointsCode = widgets.Widget Function(
//   RunMutationMutationScanProductPointsCode,
//   graphql.QueryResult<MutationScanProductPointsCode>?,
// );
//
// class MutationScanProductPointsCodeWidget
//     extends graphql_flutter.Mutation<MutationScanProductPointsCode> {
//   MutationScanProductPointsCodeWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationScanProductPointsCode? options,
//     required BuilderMutationScanProductPointsCode builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationScanProductPointsCode(),
//           builder: (
//             run,
//             result,
//           ) =>
//               builder(
//             (
//               variables, {
//               optimisticResult,
//               typedOptimisticResult,
//             }) =>
//                 run(
//               variables.toJson(),
//               optimisticResult:
//                   optimisticResult ?? typedOptimisticResult?.toJson(),
//             ),
//             result,
//           ),
//         );
// }
//
// class MutationScanProductPointsCodescanQrCodeProduct {
//   MutationScanProductPointsCodescanQrCodeProduct({
//     required this.status,
//     this.message,
//     required this.error,
//     this.data,
//     this.$__typename = 'PointResult',
//   });
//
//   factory MutationScanProductPointsCodescanQrCodeProduct.fromJson(
//       Map<String, dynamic> json) {
//     final l$status = json['status'];
//     final l$message = json['message'];
//     final l$error = json['error'];
//     final l$data = json['data'];
//     final l$$__typename = json['__typename'];
//     return MutationScanProductPointsCodescanQrCodeProduct(
//       status: (l$status as String),
//       message: (l$message as String?),
//       error: (l$error as int),
//       data: l$data == null
//           ? null
//           : MutationScanProductPointsCodescanQrCodeProductdata.fromJson(
//               (l$data as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String status;
//
//   final String? message;
//
//   final int error;
//
//   final MutationScanProductPointsCodescanQrCodeProductdata? data;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$status = status;
//     _resultData['status'] = l$status;
//     final l$message = message;
//     _resultData['message'] = l$message;
//     final l$error = error;
//     _resultData['error'] = l$error;
//     final l$data = data;
//     _resultData['data'] = l$data?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$status = status;
//     final l$message = message;
//     final l$error = error;
//     final l$data = data;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$status,
//       l$message,
//       l$error,
//       l$data,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationScanProductPointsCodescanQrCodeProduct) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$status = status;
//     final lOther$status = other.status;
//     if (l$status != lOther$status) {
//       return false;
//     }
//     final l$message = message;
//     final lOther$message = other.message;
//     if (l$message != lOther$message) {
//       return false;
//     }
//     final l$error = error;
//     final lOther$error = other.error;
//     if (l$error != lOther$error) {
//       return false;
//     }
//     final l$data = data;
//     final lOther$data = other.data;
//     if (l$data != lOther$data) {
//       return false;
//     }
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionMutationScanProductPointsCodescanQrCodeProduct
//     on MutationScanProductPointsCodescanQrCodeProduct {
//   CopyWithMutationScanProductPointsCodescanQrCodeProduct<
//           MutationScanProductPointsCodescanQrCodeProduct>
//       get copyWith => CopyWithMutationScanProductPointsCodescanQrCodeProduct(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationScanProductPointsCodescanQrCodeProduct<TRes> {
//   factory CopyWithMutationScanProductPointsCodescanQrCodeProduct(
//     MutationScanProductPointsCodescanQrCodeProduct instance,
//     TRes Function(MutationScanProductPointsCodescanQrCodeProduct) then,
//   ) = _CopyWithImplMutationScanProductPointsCodescanQrCodeProduct;
//
//   factory CopyWithMutationScanProductPointsCodescanQrCodeProduct.stub(
//           TRes res) =
//       _CopyWithStubImplMutationScanProductPointsCodescanQrCodeProduct;
//
//   TRes call({
//     String? status,
//     String? message,
//     int? error,
//     MutationScanProductPointsCodescanQrCodeProductdata? data,
//     String? $__typename,
//   });
//   CopyWithMutationScanProductPointsCodescanQrCodeProductdata<TRes> get data;
// }
//
// class _CopyWithImplMutationScanProductPointsCodescanQrCodeProduct<TRes>
//     implements CopyWithMutationScanProductPointsCodescanQrCodeProduct<TRes> {
//   _CopyWithImplMutationScanProductPointsCodescanQrCodeProduct(
//     this._instance,
//     this._then,
//   );
//
//   final MutationScanProductPointsCodescanQrCodeProduct _instance;
//
//   final TRes Function(MutationScanProductPointsCodescanQrCodeProduct) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? status = _undefined,
//     Object? message = _undefined,
//     Object? error = _undefined,
//     Object? data = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationScanProductPointsCodescanQrCodeProduct(
//         status: status == _undefined || status == null
//             ? _instance.status
//             : (status as String),
//         message:
//             message == _undefined ? _instance.message : (message as String?),
//         error: error == _undefined || error == null
//             ? _instance.error
//             : (error as int),
//         data: data == _undefined
//             ? _instance.data
//             : (data as MutationScanProductPointsCodescanQrCodeProductdata?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationScanProductPointsCodescanQrCodeProductdata<TRes> get data {
//     final local$data = _instance.data;
//     return local$data == null
//         ? CopyWithMutationScanProductPointsCodescanQrCodeProductdata.stub(
//             _then(_instance))
//         : CopyWithMutationScanProductPointsCodescanQrCodeProductdata(
//             local$data, (e) => call(data: e));
//   }
// }
//
// class _CopyWithStubImplMutationScanProductPointsCodescanQrCodeProduct<TRes>
//     implements CopyWithMutationScanProductPointsCodescanQrCodeProduct<TRes> {
//   _CopyWithStubImplMutationScanProductPointsCodescanQrCodeProduct(this._res);
//
//   TRes _res;
//
//   call({
//     String? status,
//     String? message,
//     int? error,
//     MutationScanProductPointsCodescanQrCodeProductdata? data,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationScanProductPointsCodescanQrCodeProductdata<TRes> get data =>
//       CopyWithMutationScanProductPointsCodescanQrCodeProductdata.stub(_res);
// }
//
// class MutationScanProductPointsCodescanQrCodeProductdata {
//   MutationScanProductPointsCodescanQrCodeProductdata({
//     this.points,
//     this.$__typename = 'Point',
//   });
//
//   factory MutationScanProductPointsCodescanQrCodeProductdata.fromJson(
//       Map<String, dynamic> json) {
//     final l$points = json['points'];
//     final l$$__typename = json['__typename'];
//     return MutationScanProductPointsCodescanQrCodeProductdata(
//       points: (l$points as int?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final int? points;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$points = points;
//     _resultData['points'] = l$points;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$points = points;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$points,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationScanProductPointsCodescanQrCodeProductdata) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$points = points;
//     final lOther$points = other.points;
//     if (l$points != lOther$points) {
//       return false;
//     }
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionMutationScanProductPointsCodescanQrCodeProductdata
//     on MutationScanProductPointsCodescanQrCodeProductdata {
//   CopyWithMutationScanProductPointsCodescanQrCodeProductdata<
//           MutationScanProductPointsCodescanQrCodeProductdata>
//       get copyWith =>
//           CopyWithMutationScanProductPointsCodescanQrCodeProductdata(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationScanProductPointsCodescanQrCodeProductdata<
//     TRes> {
//   factory CopyWithMutationScanProductPointsCodescanQrCodeProductdata(
//     MutationScanProductPointsCodescanQrCodeProductdata instance,
//     TRes Function(MutationScanProductPointsCodescanQrCodeProductdata) then,
//   ) = _CopyWithImplMutationScanProductPointsCodescanQrCodeProductdata;
//
//   factory CopyWithMutationScanProductPointsCodescanQrCodeProductdata.stub(
//           TRes res) =
//       _CopyWithStubImplMutationScanProductPointsCodescanQrCodeProductdata;
//
//   TRes call({
//     int? points,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationScanProductPointsCodescanQrCodeProductdata<TRes>
//     implements
//         CopyWithMutationScanProductPointsCodescanQrCodeProductdata<TRes> {
//   _CopyWithImplMutationScanProductPointsCodescanQrCodeProductdata(
//     this._instance,
//     this._then,
//   );
//
//   final MutationScanProductPointsCodescanQrCodeProductdata _instance;
//
//   final TRes Function(MutationScanProductPointsCodescanQrCodeProductdata) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? points = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationScanProductPointsCodescanQrCodeProductdata(
//         points: points == _undefined ? _instance.points : (points as int?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplMutationScanProductPointsCodescanQrCodeProductdata<TRes>
//     implements
//         CopyWithMutationScanProductPointsCodescanQrCodeProductdata<TRes> {
//   _CopyWithStubImplMutationScanProductPointsCodescanQrCodeProductdata(
//       this._res);
//
//   TRes _res;
//
//   call({
//     int? points,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesMutationCreateUserCoupon {
//   factory VariablesMutationCreateUserCoupon({required int points}) =>
//       VariablesMutationCreateUserCoupon._({
//         r'points': points,
//       });
//
//   VariablesMutationCreateUserCoupon._(this._$data);
//
//   factory VariablesMutationCreateUserCoupon.fromJson(
//       Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$points = data['points'];
//     result$data['points'] = (l$points as int);
//     return VariablesMutationCreateUserCoupon._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   int get points => (_$data['points'] as int);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$points = points;
//     result$data['points'] = l$points;
//     return result$data;
//   }
//
//   CopyWithVariablesMutationCreateUserCoupon<VariablesMutationCreateUserCoupon>
//       get copyWith => CopyWithVariablesMutationCreateUserCoupon(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationCreateUserCoupon) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$points = points;
//     final lOther$points = other.points;
//     if (l$points != lOther$points) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$points = points;
//     return Object.hashAll([l$points]);
//   }
// }
//
// abstract class CopyWithVariablesMutationCreateUserCoupon<TRes> {
//   factory CopyWithVariablesMutationCreateUserCoupon(
//     VariablesMutationCreateUserCoupon instance,
//     TRes Function(VariablesMutationCreateUserCoupon) then,
//   ) = _CopyWithImplVariablesMutationCreateUserCoupon;
//
//   factory CopyWithVariablesMutationCreateUserCoupon.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationCreateUserCoupon;
//
//   TRes call({int? points});
// }
//
// class _CopyWithImplVariablesMutationCreateUserCoupon<TRes>
//     implements CopyWithVariablesMutationCreateUserCoupon<TRes> {
//   _CopyWithImplVariablesMutationCreateUserCoupon(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationCreateUserCoupon _instance;
//
//   final TRes Function(VariablesMutationCreateUserCoupon) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? points = _undefined}) =>
//       _then(VariablesMutationCreateUserCoupon._({
//         ..._instance._$data,
//         if (points != _undefined && points != null) 'points': (points as int),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationCreateUserCoupon<TRes>
//     implements CopyWithVariablesMutationCreateUserCoupon<TRes> {
//   _CopyWithStubImplVariablesMutationCreateUserCoupon(this._res);
//
//   TRes _res;
//
//   call({int? points}) => _res;
// }
//
// class MutationCreateUserCoupon {
//   MutationCreateUserCoupon({
//     this.createUserCoupon,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationCreateUserCoupon.fromJson(Map<String, dynamic> json) {
//     final l$createUserCoupon = json['createUserCoupon'];
//     final l$$__typename = json['__typename'];
//     return MutationCreateUserCoupon(
//       createUserCoupon: l$createUserCoupon == null
//           ? null
//           : MutationCreateUserCouponcreateUserCoupon.fromJson(
//               (l$createUserCoupon as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationCreateUserCouponcreateUserCoupon? createUserCoupon;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$createUserCoupon = createUserCoupon;
//     _resultData['createUserCoupon'] = l$createUserCoupon?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$createUserCoupon = createUserCoupon;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$createUserCoupon,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationCreateUserCoupon) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$createUserCoupon = createUserCoupon;
//     final lOther$createUserCoupon = other.createUserCoupon;
//     if (l$createUserCoupon != lOther$createUserCoupon) {
//       return false;
//     }
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionMutationCreateUserCoupon on MutationCreateUserCoupon {
//   CopyWithMutationCreateUserCoupon<MutationCreateUserCoupon> get copyWith =>
//       CopyWithMutationCreateUserCoupon(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationCreateUserCoupon<TRes> {
//   factory CopyWithMutationCreateUserCoupon(
//     MutationCreateUserCoupon instance,
//     TRes Function(MutationCreateUserCoupon) then,
//   ) = _CopyWithImplMutationCreateUserCoupon;
//
//   factory CopyWithMutationCreateUserCoupon.stub(TRes res) =
//       _CopyWithStubImplMutationCreateUserCoupon;
//
//   TRes call({
//     MutationCreateUserCouponcreateUserCoupon? createUserCoupon,
//     String? $__typename,
//   });
//   CopyWithMutationCreateUserCouponcreateUserCoupon<TRes> get createUserCoupon;
// }
//
// class _CopyWithImplMutationCreateUserCoupon<TRes>
//     implements CopyWithMutationCreateUserCoupon<TRes> {
//   _CopyWithImplMutationCreateUserCoupon(
//     this._instance,
//     this._then,
//   );
//
//   final MutationCreateUserCoupon _instance;
//
//   final TRes Function(MutationCreateUserCoupon) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? createUserCoupon = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationCreateUserCoupon(
//         createUserCoupon: createUserCoupon == _undefined
//             ? _instance.createUserCoupon
//             : (createUserCoupon as MutationCreateUserCouponcreateUserCoupon?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationCreateUserCouponcreateUserCoupon<TRes> get createUserCoupon {
//     final local$createUserCoupon = _instance.createUserCoupon;
//     return local$createUserCoupon == null
//         ? CopyWithMutationCreateUserCouponcreateUserCoupon.stub(
//             _then(_instance))
//         : CopyWithMutationCreateUserCouponcreateUserCoupon(
//             local$createUserCoupon, (e) => call(createUserCoupon: e));
//   }
// }
//
// class _CopyWithStubImplMutationCreateUserCoupon<TRes>
//     implements CopyWithMutationCreateUserCoupon<TRes> {
//   _CopyWithStubImplMutationCreateUserCoupon(this._res);
//
//   TRes _res;
//
//   call({
//     MutationCreateUserCouponcreateUserCoupon? createUserCoupon,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationCreateUserCouponcreateUserCoupon<TRes> get createUserCoupon =>
//       CopyWithMutationCreateUserCouponcreateUserCoupon.stub(_res);
// }
//
// const documentNodeMutationCreateUserCoupon = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'CreateUserCoupon'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'points')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'Int'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       )
//     ],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'createUserCoupon'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'points'),
//                 value: VariableNode(name: NameNode(value: 'points')),
//               )
//             ]),
//           )
//         ],
//         directives: [],
//         selectionSet: SelectionSetNode(selections: [
//           FieldNode(
//             name: NameNode(value: 'status'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'message'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'data'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: SelectionSetNode(selections: [
//               FieldNode(
//                 name: NameNode(value: 'id'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'yougotagift_id'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'yougotagift_status'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'reference_number'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'barcode'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'gift_voucher_label'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'gift_voucher_value'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'expiry_date'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'redemption_instructions'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'egift_card_gift_verification_pin'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'amount'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'points'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: '__typename'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//             ]),
//           ),
//           FieldNode(
//             name: NameNode(value: '__typename'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//         ]),
//       ),
//       FieldNode(
//         name: NameNode(value: '__typename'),
//         alias: null,
//         arguments: [],
//         directives: [],
//         selectionSet: null,
//       ),
//     ]),
//   ),
// ]);
// MutationCreateUserCoupon _parserFnMutationCreateUserCoupon(
//         Map<String, dynamic> data) =>
//     MutationCreateUserCoupon.fromJson(data);
// typedef OnMutationCompletedMutationCreateUserCoupon = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationCreateUserCoupon?,
// );
//
// class OptionsMutationCreateUserCoupon
//     extends graphql.MutationOptions<MutationCreateUserCoupon> {
//   OptionsMutationCreateUserCoupon({
//     String? operationName,
//     required VariablesMutationCreateUserCoupon variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationCreateUserCoupon? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationCreateUserCoupon? onCompleted,
//     graphql.OnMutationUpdate<MutationCreateUserCoupon>? update,
//     graphql.OnError? onError,
//   })  : onCompletedWithParsed = onCompleted,
//         super(
//           variables: variables.toJson(),
//           operationName: operationName,
//           fetchPolicy: fetchPolicy,
//           errorPolicy: errorPolicy,
//           cacheRereadPolicy: cacheRereadPolicy,
//           optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//           context: context,
//           onCompleted: onCompleted == null
//               ? null
//               : (data) => onCompleted(
//                     data,
//                     data == null
//                         ? null
//                         : _parserFnMutationCreateUserCoupon(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationCreateUserCoupon,
//           parserFn: _parserFnMutationCreateUserCoupon,
//         );
//
//   final OnMutationCompletedMutationCreateUserCoupon? onCompletedWithParsed;
//
//   @override
//   List<Object?> get properties => [
//         ...super.onCompleted == null
//             ? super.properties
//             : super.properties.where((property) => property != onCompleted),
//         onCompletedWithParsed,
//       ];
// }
//
// class WatchOptionsMutationCreateUserCoupon
//     extends graphql.WatchQueryOptions<MutationCreateUserCoupon> {
//   WatchOptionsMutationCreateUserCoupon({
//     String? operationName,
//     required VariablesMutationCreateUserCoupon variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationCreateUserCoupon? typedOptimisticResult,
//     graphql.Context? context,
//     Duration? pollInterval,
//     bool? eagerlyFetchResults,
//     bool carryForwardDataOnException = true,
//     bool fetchResults = false,
//   }) : super(
//           variables: variables.toJson(),
//           operationName: operationName,
//           fetchPolicy: fetchPolicy,
//           errorPolicy: errorPolicy,
//           cacheRereadPolicy: cacheRereadPolicy,
//           optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//           context: context,
//           document: documentNodeMutationCreateUserCoupon,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationCreateUserCoupon,
//         );
// }
//
// extension ClientExtensionMutationCreateUserCoupon on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationCreateUserCoupon>> mutateCreateUserCoupon(
//           OptionsMutationCreateUserCoupon options) async =>
//       await this.mutate(options);
//   graphql.ObservableQuery<MutationCreateUserCoupon>
//       watchMutationCreateUserCoupon(
//               WatchOptionsMutationCreateUserCoupon options) =>
//           this.watchMutation(options);
// }
//
// class MutationCreateUserCouponHookResult {
//   MutationCreateUserCouponHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationCreateUserCoupon runMutation;
//
//   final graphql.QueryResult<MutationCreateUserCoupon> result;
// }
//
// MutationCreateUserCouponHookResult useMutationCreateUserCoupon(
//     [WidgetOptionsMutationCreateUserCoupon? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationCreateUserCoupon());
//   return MutationCreateUserCouponHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationCreateUserCoupon>
//     useWatchMutationCreateUserCoupon(
//             WatchOptionsMutationCreateUserCoupon options) =>
//         graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationCreateUserCoupon
//     extends graphql.MutationOptions<MutationCreateUserCoupon> {
//   WidgetOptionsMutationCreateUserCoupon({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationCreateUserCoupon? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationCreateUserCoupon? onCompleted,
//     graphql.OnMutationUpdate<MutationCreateUserCoupon>? update,
//     graphql.OnError? onError,
//   })  : onCompletedWithParsed = onCompleted,
//         super(
//           operationName: operationName,
//           fetchPolicy: fetchPolicy,
//           errorPolicy: errorPolicy,
//           cacheRereadPolicy: cacheRereadPolicy,
//           optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//           context: context,
//           onCompleted: onCompleted == null
//               ? null
//               : (data) => onCompleted(
//                     data,
//                     data == null
//                         ? null
//                         : _parserFnMutationCreateUserCoupon(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationCreateUserCoupon,
//           parserFn: _parserFnMutationCreateUserCoupon,
//         );
//
//   final OnMutationCompletedMutationCreateUserCoupon? onCompletedWithParsed;
//
//   @override
//   List<Object?> get properties => [
//         ...super.onCompleted == null
//             ? super.properties
//             : super.properties.where((property) => property != onCompleted),
//         onCompletedWithParsed,
//       ];
// }
//
// typedef RunMutationMutationCreateUserCoupon
//     = graphql.MultiSourceResult<MutationCreateUserCoupon> Function(
//   VariablesMutationCreateUserCoupon, {
//   Object? optimisticResult,
//   MutationCreateUserCoupon? typedOptimisticResult,
// });
// typedef BuilderMutationCreateUserCoupon = widgets.Widget Function(
//   RunMutationMutationCreateUserCoupon,
//   graphql.QueryResult<MutationCreateUserCoupon>?,
// );
//
// class MutationCreateUserCouponWidget
//     extends graphql_flutter.Mutation<MutationCreateUserCoupon> {
//   MutationCreateUserCouponWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationCreateUserCoupon? options,
//     required BuilderMutationCreateUserCoupon builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationCreateUserCoupon(),
//           builder: (
//             run,
//             result,
//           ) =>
//               builder(
//             (
//               variables, {
//               optimisticResult,
//               typedOptimisticResult,
//             }) =>
//                 run(
//               variables.toJson(),
//               optimisticResult:
//                   optimisticResult ?? typedOptimisticResult?.toJson(),
//             ),
//             result,
//           ),
//         );
// }
//
// class MutationCreateUserCouponcreateUserCoupon {
//   MutationCreateUserCouponcreateUserCoupon({
//     required this.status,
//     this.message,
//     this.data,
//     this.$__typename = 'UserGiftResult',
//   });
//
//   factory MutationCreateUserCouponcreateUserCoupon.fromJson(
//       Map<String, dynamic> json) {
//     final l$status = json['status'];
//     final l$message = json['message'];
//     final l$data = json['data'];
//     final l$$__typename = json['__typename'];
//     return MutationCreateUserCouponcreateUserCoupon(
//       status: (l$status as String),
//       message: (l$message as String?),
//       data: l$data == null
//           ? null
//           : MutationCreateUserCouponcreateUserCoupondata.fromJson(
//               (l$data as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String status;
//
//   final String? message;
//
//   final MutationCreateUserCouponcreateUserCoupondata? data;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$status = status;
//     _resultData['status'] = l$status;
//     final l$message = message;
//     _resultData['message'] = l$message;
//     final l$data = data;
//     _resultData['data'] = l$data?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$status = status;
//     final l$message = message;
//     final l$data = data;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$status,
//       l$message,
//       l$data,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationCreateUserCouponcreateUserCoupon) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$status = status;
//     final lOther$status = other.status;
//     if (l$status != lOther$status) {
//       return false;
//     }
//     final l$message = message;
//     final lOther$message = other.message;
//     if (l$message != lOther$message) {
//       return false;
//     }
//     final l$data = data;
//     final lOther$data = other.data;
//     if (l$data != lOther$data) {
//       return false;
//     }
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionMutationCreateUserCouponcreateUserCoupon
//     on MutationCreateUserCouponcreateUserCoupon {
//   CopyWithMutationCreateUserCouponcreateUserCoupon<
//           MutationCreateUserCouponcreateUserCoupon>
//       get copyWith => CopyWithMutationCreateUserCouponcreateUserCoupon(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationCreateUserCouponcreateUserCoupon<TRes> {
//   factory CopyWithMutationCreateUserCouponcreateUserCoupon(
//     MutationCreateUserCouponcreateUserCoupon instance,
//     TRes Function(MutationCreateUserCouponcreateUserCoupon) then,
//   ) = _CopyWithImplMutationCreateUserCouponcreateUserCoupon;
//
//   factory CopyWithMutationCreateUserCouponcreateUserCoupon.stub(TRes res) =
//       _CopyWithStubImplMutationCreateUserCouponcreateUserCoupon;
//
//   TRes call({
//     String? status,
//     String? message,
//     MutationCreateUserCouponcreateUserCoupondata? data,
//     String? $__typename,
//   });
//   CopyWithMutationCreateUserCouponcreateUserCoupondata<TRes> get data;
// }
//
// class _CopyWithImplMutationCreateUserCouponcreateUserCoupon<TRes>
//     implements CopyWithMutationCreateUserCouponcreateUserCoupon<TRes> {
//   _CopyWithImplMutationCreateUserCouponcreateUserCoupon(
//     this._instance,
//     this._then,
//   );
//
//   final MutationCreateUserCouponcreateUserCoupon _instance;
//
//   final TRes Function(MutationCreateUserCouponcreateUserCoupon) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? status = _undefined,
//     Object? message = _undefined,
//     Object? data = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationCreateUserCouponcreateUserCoupon(
//         status: status == _undefined || status == null
//             ? _instance.status
//             : (status as String),
//         message:
//             message == _undefined ? _instance.message : (message as String?),
//         data: data == _undefined
//             ? _instance.data
//             : (data as MutationCreateUserCouponcreateUserCoupondata?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationCreateUserCouponcreateUserCoupondata<TRes> get data {
//     final local$data = _instance.data;
//     return local$data == null
//         ? CopyWithMutationCreateUserCouponcreateUserCoupondata.stub(
//             _then(_instance))
//         : CopyWithMutationCreateUserCouponcreateUserCoupondata(
//             local$data, (e) => call(data: e));
//   }
// }
//
// class _CopyWithStubImplMutationCreateUserCouponcreateUserCoupon<TRes>
//     implements CopyWithMutationCreateUserCouponcreateUserCoupon<TRes> {
//   _CopyWithStubImplMutationCreateUserCouponcreateUserCoupon(this._res);
//
//   TRes _res;
//
//   call({
//     String? status,
//     String? message,
//     MutationCreateUserCouponcreateUserCoupondata? data,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationCreateUserCouponcreateUserCoupondata<TRes> get data =>
//       CopyWithMutationCreateUserCouponcreateUserCoupondata.stub(_res);
// }
//
// class MutationCreateUserCouponcreateUserCoupondata {
//   MutationCreateUserCouponcreateUserCoupondata({
//     this.id,
//     this.yougotagift_id,
//     this.yougotagift_status,
//     this.reference_number,
//     this.barcode,
//     this.gift_voucher_label,
//     this.gift_voucher_value,
//     this.expiry_date,
//     this.redemption_instructions,
//     this.egift_card_gift_verification_pin,
//     this.amount,
//     this.points,
//     this.$__typename = 'UserGift',
//   });
//
//   factory MutationCreateUserCouponcreateUserCoupondata.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$yougotagift_id = json['yougotagift_id'];
//     final l$yougotagift_status = json['yougotagift_status'];
//     final l$reference_number = json['reference_number'];
//     final l$barcode = json['barcode'];
//     final l$gift_voucher_label = json['gift_voucher_label'];
//     final l$gift_voucher_value = json['gift_voucher_value'];
//     final l$expiry_date = json['expiry_date'];
//     final l$redemption_instructions = json['redemption_instructions'];
//     final l$egift_card_gift_verification_pin =
//         json['egift_card_gift_verification_pin'];
//     final l$amount = json['amount'];
//     final l$points = json['points'];
//     final l$$__typename = json['__typename'];
//     return MutationCreateUserCouponcreateUserCoupondata(
//       id: (l$id as String?),
//       yougotagift_id: (l$yougotagift_id as int?),
//       yougotagift_status: (l$yougotagift_status as int?),
//       reference_number: (l$reference_number as String?),
//       barcode: (l$barcode as String?),
//       gift_voucher_label: (l$gift_voucher_label as String?),
//       gift_voucher_value: (l$gift_voucher_value as String?),
//       expiry_date: (l$expiry_date as String?),
//       redemption_instructions: (l$redemption_instructions as String?),
//       egift_card_gift_verification_pin:
//           (l$egift_card_gift_verification_pin as String?),
//       amount: (l$amount as num?)?.toDouble(),
//       points: (l$points as int?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String? id;
//
//   final int? yougotagift_id;
//
//   final int? yougotagift_status;
//
//   final String? reference_number;
//
//   final String? barcode;
//
//   final String? gift_voucher_label;
//
//   final String? gift_voucher_value;
//
//   final String? expiry_date;
//
//   final String? redemption_instructions;
//
//   final String? egift_card_gift_verification_pin;
//
//   final double? amount;
//
//   final int? points;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$yougotagift_id = yougotagift_id;
//     _resultData['yougotagift_id'] = l$yougotagift_id;
//     final l$yougotagift_status = yougotagift_status;
//     _resultData['yougotagift_status'] = l$yougotagift_status;
//     final l$reference_number = reference_number;
//     _resultData['reference_number'] = l$reference_number;
//     final l$barcode = barcode;
//     _resultData['barcode'] = l$barcode;
//     final l$gift_voucher_label = gift_voucher_label;
//     _resultData['gift_voucher_label'] = l$gift_voucher_label;
//     final l$gift_voucher_value = gift_voucher_value;
//     _resultData['gift_voucher_value'] = l$gift_voucher_value;
//     final l$expiry_date = expiry_date;
//     _resultData['expiry_date'] = l$expiry_date;
//     final l$redemption_instructions = redemption_instructions;
//     _resultData['redemption_instructions'] = l$redemption_instructions;
//     final l$egift_card_gift_verification_pin = egift_card_gift_verification_pin;
//     _resultData['egift_card_gift_verification_pin'] =
//         l$egift_card_gift_verification_pin;
//     final l$amount = amount;
//     _resultData['amount'] = l$amount;
//     final l$points = points;
//     _resultData['points'] = l$points;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$yougotagift_id = yougotagift_id;
//     final l$yougotagift_status = yougotagift_status;
//     final l$reference_number = reference_number;
//     final l$barcode = barcode;
//     final l$gift_voucher_label = gift_voucher_label;
//     final l$gift_voucher_value = gift_voucher_value;
//     final l$expiry_date = expiry_date;
//     final l$redemption_instructions = redemption_instructions;
//     final l$egift_card_gift_verification_pin = egift_card_gift_verification_pin;
//     final l$amount = amount;
//     final l$points = points;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$yougotagift_id,
//       l$yougotagift_status,
//       l$reference_number,
//       l$barcode,
//       l$gift_voucher_label,
//       l$gift_voucher_value,
//       l$expiry_date,
//       l$redemption_instructions,
//       l$egift_card_gift_verification_pin,
//       l$amount,
//       l$points,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationCreateUserCouponcreateUserCoupondata) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     final l$yougotagift_id = yougotagift_id;
//     final lOther$yougotagift_id = other.yougotagift_id;
//     if (l$yougotagift_id != lOther$yougotagift_id) {
//       return false;
//     }
//     final l$yougotagift_status = yougotagift_status;
//     final lOther$yougotagift_status = other.yougotagift_status;
//     if (l$yougotagift_status != lOther$yougotagift_status) {
//       return false;
//     }
//     final l$reference_number = reference_number;
//     final lOther$reference_number = other.reference_number;
//     if (l$reference_number != lOther$reference_number) {
//       return false;
//     }
//     final l$barcode = barcode;
//     final lOther$barcode = other.barcode;
//     if (l$barcode != lOther$barcode) {
//       return false;
//     }
//     final l$gift_voucher_label = gift_voucher_label;
//     final lOther$gift_voucher_label = other.gift_voucher_label;
//     if (l$gift_voucher_label != lOther$gift_voucher_label) {
//       return false;
//     }
//     final l$gift_voucher_value = gift_voucher_value;
//     final lOther$gift_voucher_value = other.gift_voucher_value;
//     if (l$gift_voucher_value != lOther$gift_voucher_value) {
//       return false;
//     }
//     final l$expiry_date = expiry_date;
//     final lOther$expiry_date = other.expiry_date;
//     if (l$expiry_date != lOther$expiry_date) {
//       return false;
//     }
//     final l$redemption_instructions = redemption_instructions;
//     final lOther$redemption_instructions = other.redemption_instructions;
//     if (l$redemption_instructions != lOther$redemption_instructions) {
//       return false;
//     }
//     final l$egift_card_gift_verification_pin = egift_card_gift_verification_pin;
//     final lOther$egift_card_gift_verification_pin =
//         other.egift_card_gift_verification_pin;
//     if (l$egift_card_gift_verification_pin !=
//         lOther$egift_card_gift_verification_pin) {
//       return false;
//     }
//     final l$amount = amount;
//     final lOther$amount = other.amount;
//     if (l$amount != lOther$amount) {
//       return false;
//     }
//     final l$points = points;
//     final lOther$points = other.points;
//     if (l$points != lOther$points) {
//       return false;
//     }
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionMutationCreateUserCouponcreateUserCoupondata
//     on MutationCreateUserCouponcreateUserCoupondata {
//   CopyWithMutationCreateUserCouponcreateUserCoupondata<
//           MutationCreateUserCouponcreateUserCoupondata>
//       get copyWith => CopyWithMutationCreateUserCouponcreateUserCoupondata(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationCreateUserCouponcreateUserCoupondata<TRes> {
//   factory CopyWithMutationCreateUserCouponcreateUserCoupondata(
//     MutationCreateUserCouponcreateUserCoupondata instance,
//     TRes Function(MutationCreateUserCouponcreateUserCoupondata) then,
//   ) = _CopyWithImplMutationCreateUserCouponcreateUserCoupondata;
//
//   factory CopyWithMutationCreateUserCouponcreateUserCoupondata.stub(TRes res) =
//       _CopyWithStubImplMutationCreateUserCouponcreateUserCoupondata;
//
//   TRes call({
//     String? id,
//     int? yougotagift_id,
//     int? yougotagift_status,
//     String? reference_number,
//     String? barcode,
//     String? gift_voucher_label,
//     String? gift_voucher_value,
//     String? expiry_date,
//     String? redemption_instructions,
//     String? egift_card_gift_verification_pin,
//     double? amount,
//     int? points,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationCreateUserCouponcreateUserCoupondata<TRes>
//     implements CopyWithMutationCreateUserCouponcreateUserCoupondata<TRes> {
//   _CopyWithImplMutationCreateUserCouponcreateUserCoupondata(
//     this._instance,
//     this._then,
//   );
//
//   final MutationCreateUserCouponcreateUserCoupondata _instance;
//
//   final TRes Function(MutationCreateUserCouponcreateUserCoupondata) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? yougotagift_id = _undefined,
//     Object? yougotagift_status = _undefined,
//     Object? reference_number = _undefined,
//     Object? barcode = _undefined,
//     Object? gift_voucher_label = _undefined,
//     Object? gift_voucher_value = _undefined,
//     Object? expiry_date = _undefined,
//     Object? redemption_instructions = _undefined,
//     Object? egift_card_gift_verification_pin = _undefined,
//     Object? amount = _undefined,
//     Object? points = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationCreateUserCouponcreateUserCoupondata(
//         id: id == _undefined ? _instance.id : (id as String?),
//         yougotagift_id: yougotagift_id == _undefined
//             ? _instance.yougotagift_id
//             : (yougotagift_id as int?),
//         yougotagift_status: yougotagift_status == _undefined
//             ? _instance.yougotagift_status
//             : (yougotagift_status as int?),
//         reference_number: reference_number == _undefined
//             ? _instance.reference_number
//             : (reference_number as String?),
//         barcode:
//             barcode == _undefined ? _instance.barcode : (barcode as String?),
//         gift_voucher_label: gift_voucher_label == _undefined
//             ? _instance.gift_voucher_label
//             : (gift_voucher_label as String?),
//         gift_voucher_value: gift_voucher_value == _undefined
//             ? _instance.gift_voucher_value
//             : (gift_voucher_value as String?),
//         expiry_date: expiry_date == _undefined
//             ? _instance.expiry_date
//             : (expiry_date as String?),
//         redemption_instructions: redemption_instructions == _undefined
//             ? _instance.redemption_instructions
//             : (redemption_instructions as String?),
//         egift_card_gift_verification_pin:
//             egift_card_gift_verification_pin == _undefined
//                 ? _instance.egift_card_gift_verification_pin
//                 : (egift_card_gift_verification_pin as String?),
//         amount: amount == _undefined ? _instance.amount : (amount as double?),
//         points: points == _undefined ? _instance.points : (points as int?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplMutationCreateUserCouponcreateUserCoupondata<TRes>
//     implements CopyWithMutationCreateUserCouponcreateUserCoupondata<TRes> {
//   _CopyWithStubImplMutationCreateUserCouponcreateUserCoupondata(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     int? yougotagift_id,
//     int? yougotagift_status,
//     String? reference_number,
//     String? barcode,
//     String? gift_voucher_label,
//     String? gift_voucher_value,
//     String? expiry_date,
//     String? redemption_instructions,
//     String? egift_card_gift_verification_pin,
//     double? amount,
//     int? points,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesQueryGiftBrand {
//   factory VariablesQueryGiftBrand({required int page}) =>
//       VariablesQueryGiftBrand._({
//         r'page': page,
//       });
//
//   VariablesQueryGiftBrand._(this._$data);
//
//   factory VariablesQueryGiftBrand.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$page = data['page'];
//     result$data['page'] = (l$page as int);
//     return VariablesQueryGiftBrand._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   int get page => (_$data['page'] as int);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$page = page;
//     result$data['page'] = l$page;
//     return result$data;
//   }
//
//   CopyWithVariablesQueryGiftBrand<VariablesQueryGiftBrand> get copyWith =>
//       CopyWithVariablesQueryGiftBrand(
//         this,
//         (i) => i,
//       );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesQueryGiftBrand) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$page = page;
//     final lOther$page = other.page;
//     if (l$page != lOther$page) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$page = page;
//     return Object.hashAll([l$page]);
//   }
// }
//
// abstract class CopyWithVariablesQueryGiftBrand<TRes> {
//   factory CopyWithVariablesQueryGiftBrand(
//     VariablesQueryGiftBrand instance,
//     TRes Function(VariablesQueryGiftBrand) then,
//   ) = _CopyWithImplVariablesQueryGiftBrand;
//
//   factory CopyWithVariablesQueryGiftBrand.stub(TRes res) =
//       _CopyWithStubImplVariablesQueryGiftBrand;
//
//   TRes call({int? page});
// }
//
// class _CopyWithImplVariablesQueryGiftBrand<TRes>
//     implements CopyWithVariablesQueryGiftBrand<TRes> {
//   _CopyWithImplVariablesQueryGiftBrand(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesQueryGiftBrand _instance;
//
//   final TRes Function(VariablesQueryGiftBrand) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? page = _undefined}) => _then(VariablesQueryGiftBrand._({
//         ..._instance._$data,
//         if (page != _undefined && page != null) 'page': (page as int),
//       }));
// }
//
// class _CopyWithStubImplVariablesQueryGiftBrand<TRes>
//     implements CopyWithVariablesQueryGiftBrand<TRes> {
//   _CopyWithStubImplVariablesQueryGiftBrand(this._res);
//
//   TRes _res;
//
//   call({int? page}) => _res;
// }
//
// class QueryGiftBrand {
//   QueryGiftBrand({
//     this.giftBrands,
//     this.$__typename = 'Query',
//   });
//
//   factory QueryGiftBrand.fromJson(Map<String, dynamic> json) {
//     final l$giftBrands = json['giftBrands'];
//     final l$$__typename = json['__typename'];
//     return QueryGiftBrand(
//       giftBrands: l$giftBrands == null
//           ? null
//           : QueryGiftBrandgiftBrands.fromJson(
//               (l$giftBrands as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryGiftBrandgiftBrands? giftBrands;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$giftBrands = giftBrands;
//     _resultData['giftBrands'] = l$giftBrands?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$giftBrands = giftBrands;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$giftBrands,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryGiftBrand) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$giftBrands = giftBrands;
//     final lOther$giftBrands = other.giftBrands;
//     if (l$giftBrands != lOther$giftBrands) {
//       return false;
//     }
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionQueryGiftBrand on QueryGiftBrand {
//   CopyWithQueryGiftBrand<QueryGiftBrand> get copyWith => CopyWithQueryGiftBrand(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryGiftBrand<TRes> {
//   factory CopyWithQueryGiftBrand(
//     QueryGiftBrand instance,
//     TRes Function(QueryGiftBrand) then,
//   ) = _CopyWithImplQueryGiftBrand;
//
//   factory CopyWithQueryGiftBrand.stub(TRes res) =
//       _CopyWithStubImplQueryGiftBrand;
//
//   TRes call({
//     QueryGiftBrandgiftBrands? giftBrands,
//     String? $__typename,
//   });
//   CopyWithQueryGiftBrandgiftBrands<TRes> get giftBrands;
// }
//
// class _CopyWithImplQueryGiftBrand<TRes>
//     implements CopyWithQueryGiftBrand<TRes> {
//   _CopyWithImplQueryGiftBrand(
//     this._instance,
//     this._then,
//   );
//
//   final QueryGiftBrand _instance;
//
//   final TRes Function(QueryGiftBrand) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? giftBrands = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryGiftBrand(
//         giftBrands: giftBrands == _undefined
//             ? _instance.giftBrands
//             : (giftBrands as QueryGiftBrandgiftBrands?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryGiftBrandgiftBrands<TRes> get giftBrands {
//     final local$giftBrands = _instance.giftBrands;
//     return local$giftBrands == null
//         ? CopyWithQueryGiftBrandgiftBrands.stub(_then(_instance))
//         : CopyWithQueryGiftBrandgiftBrands(
//             local$giftBrands, (e) => call(giftBrands: e));
//   }
// }
//
// class _CopyWithStubImplQueryGiftBrand<TRes>
//     implements CopyWithQueryGiftBrand<TRes> {
//   _CopyWithStubImplQueryGiftBrand(this._res);
//
//   TRes _res;
//
//   call({
//     QueryGiftBrandgiftBrands? giftBrands,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryGiftBrandgiftBrands<TRes> get giftBrands =>
//       CopyWithQueryGiftBrandgiftBrands.stub(_res);
// }
//
// const documentNodeQueryGiftBrand = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.query,
//     name: NameNode(value: 'GiftBrand'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'page')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'Int'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       )
//     ],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'giftBrands'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'page'),
//             value: VariableNode(name: NameNode(value: 'page')),
//           )
//         ],
//         directives: [],
//         selectionSet: SelectionSetNode(selections: [
//           FieldNode(
//             name: NameNode(value: 'data'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: SelectionSetNode(selections: [
//               FieldNode(
//                 name: NameNode(value: 'id'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'logo'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'name'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'brand_code'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'description'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'product_image'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'denominations'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: SelectionSetNode(selections: [
//                   FieldNode(
//                     name: NameNode(value: 'SAR'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: SelectionSetNode(selections: [
//                       FieldNode(
//                         name: NameNode(value: 'amount'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'is_active'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: '__typename'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                     ]),
//                   ),
//                   FieldNode(
//                     name: NameNode(value: '__typename'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                 ]),
//               ),
//               FieldNode(
//                 name: NameNode(value: '__typename'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//             ]),
//           ),
//           FieldNode(
//             name: NameNode(value: 'paginatorInfo'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: SelectionSetNode(selections: [
//               FieldNode(
//                 name: NameNode(value: 'count'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'currentPage'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'total'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'hasMorePages'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: '__typename'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//             ]),
//           ),
//           FieldNode(
//             name: NameNode(value: '__typename'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//         ]),
//       ),
//       FieldNode(
//         name: NameNode(value: '__typename'),
//         alias: null,
//         arguments: [],
//         directives: [],
//         selectionSet: null,
//       ),
//     ]),
//   ),
// ]);
// QueryGiftBrand _parserFnQueryGiftBrand(Map<String, dynamic> data) =>
//     QueryGiftBrand.fromJson(data);
// typedef OnQueryCompleteQueryGiftBrand = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   QueryGiftBrand?,
// );
//
// class OptionsQueryGiftBrand extends graphql.QueryOptions<QueryGiftBrand> {
//   OptionsQueryGiftBrand({
//     String? operationName,
//     required VariablesQueryGiftBrand variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryGiftBrand? typedOptimisticResult,
//     Duration? pollInterval,
//     graphql.Context? context,
//     OnQueryCompleteQueryGiftBrand? onComplete,
//     graphql.OnQueryError? onError,
//   })  : onCompleteWithParsed = onComplete,
//         super(
//           variables: variables.toJson(),
//           operationName: operationName,
//           fetchPolicy: fetchPolicy,
//           errorPolicy: errorPolicy,
//           cacheRereadPolicy: cacheRereadPolicy,
//           optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//           pollInterval: pollInterval,
//           context: context,
//           onComplete: onComplete == null
//               ? null
//               : (data) => onComplete(
//                     data,
//                     data == null ? null : _parserFnQueryGiftBrand(data),
//                   ),
//           onError: onError,
//           document: documentNodeQueryGiftBrand,
//           parserFn: _parserFnQueryGiftBrand,
//         );
//
//   final OnQueryCompleteQueryGiftBrand? onCompleteWithParsed;
//
//   @override
//   List<Object?> get properties => [
//         ...super.onComplete == null
//             ? super.properties
//             : super.properties.where((property) => property != onComplete),
//         onCompleteWithParsed,
//       ];
// }
//
// class WatchOptionsQueryGiftBrand
//     extends graphql.WatchQueryOptions<QueryGiftBrand> {
//   WatchOptionsQueryGiftBrand({
//     String? operationName,
//     required VariablesQueryGiftBrand variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryGiftBrand? typedOptimisticResult,
//     graphql.Context? context,
//     Duration? pollInterval,
//     bool? eagerlyFetchResults,
//     bool carryForwardDataOnException = true,
//     bool fetchResults = false,
//   }) : super(
//           variables: variables.toJson(),
//           operationName: operationName,
//           fetchPolicy: fetchPolicy,
//           errorPolicy: errorPolicy,
//           cacheRereadPolicy: cacheRereadPolicy,
//           optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//           context: context,
//           document: documentNodeQueryGiftBrand,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnQueryGiftBrand,
//         );
// }
//
// class FetchMoreOptionsQueryGiftBrand extends graphql.FetchMoreOptions {
//   FetchMoreOptionsQueryGiftBrand({
//     required graphql.UpdateQuery updateQuery,
//     required VariablesQueryGiftBrand variables,
//   }) : super(
//           updateQuery: updateQuery,
//           variables: variables.toJson(),
//           document: documentNodeQueryGiftBrand,
//         );
// }
//
// extension ClientExtensionQueryGiftBrand on graphql.GraphQLClient {
//   Future<graphql.QueryResult<QueryGiftBrand>> queryGiftBrand(
//           OptionsQueryGiftBrand options) async =>
//       await this.query(options);
//   graphql.ObservableQuery<QueryGiftBrand> watchQueryGiftBrand(
//           WatchOptionsQueryGiftBrand options) =>
//       this.watchQuery(options);
//   void writeQueryGiftBrand({
//     required QueryGiftBrand data,
//     required VariablesQueryGiftBrand variables,
//     bool broadcast = true,
//   }) =>
//       this.writeQuery(
//         graphql.Request(
//           operation: graphql.Operation(document: documentNodeQueryGiftBrand),
//           variables: variables.toJson(),
//         ),
//         data: data.toJson(),
//         broadcast: broadcast,
//       );
//   QueryGiftBrand? readQueryGiftBrand({
//     required VariablesQueryGiftBrand variables,
//     bool optimistic = true,
//   }) {
//     final result = this.readQuery(
//       graphql.Request(
//         operation: graphql.Operation(document: documentNodeQueryGiftBrand),
//         variables: variables.toJson(),
//       ),
//       optimistic: optimistic,
//     );
//     return result == null ? null : QueryGiftBrand.fromJson(result);
//   }
// }
//
// graphql_flutter.QueryHookResult<QueryGiftBrand> useQueryGiftBrand(
//         OptionsQueryGiftBrand options) =>
//     graphql_flutter.useQuery(options);
// graphql.ObservableQuery<QueryGiftBrand> useWatchQueryGiftBrand(
//         WatchOptionsQueryGiftBrand options) =>
//     graphql_flutter.useWatchQuery(options);
//
// class QueryGiftBrandWidget extends graphql_flutter.Query<QueryGiftBrand> {
//   QueryGiftBrandWidget({
//     widgets.Key? key,
//     required OptionsQueryGiftBrand options,
//     required graphql_flutter.QueryBuilder<QueryGiftBrand> builder,
//   }) : super(
//           key: key,
//           options: options,
//           builder: builder,
//         );
// }
//
// class QueryGiftBrandgiftBrands {
//   QueryGiftBrandgiftBrands({
//     this.data,
//     this.paginatorInfo,
//     this.$__typename = 'GiftBrand',
//   });
//
//   factory QueryGiftBrandgiftBrands.fromJson(Map<String, dynamic> json) {
//     final l$data = json['data'];
//     final l$paginatorInfo = json['paginatorInfo'];
//     final l$$__typename = json['__typename'];
//     return QueryGiftBrandgiftBrands(
//       data: (l$data as List<dynamic>?)
//           ?.map((e) => e == null
//               ? null
//               : QueryGiftBrandgiftBrandsdata.fromJson(
//                   (e as Map<String, dynamic>)))
//           .toList(),
//       paginatorInfo: l$paginatorInfo == null
//           ? null
//           : QueryGiftBrandgiftBrandspaginatorInfo.fromJson(
//               (l$paginatorInfo as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final List<QueryGiftBrandgiftBrandsdata?>? data;
//
//   final QueryGiftBrandgiftBrandspaginatorInfo? paginatorInfo;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$data = data;
//     _resultData['data'] = l$data?.map((e) => e?.toJson()).toList();
//     final l$paginatorInfo = paginatorInfo;
//     _resultData['paginatorInfo'] = l$paginatorInfo?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$data = data;
//     final l$paginatorInfo = paginatorInfo;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$data == null ? null : Object.hashAll(l$data.map((v) => v)),
//       l$paginatorInfo,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryGiftBrandgiftBrands) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$data = data;
//     final lOther$data = other.data;
//     if (l$data != null && lOther$data != null) {
//       if (l$data.length != lOther$data.length) {
//         return false;
//       }
//       for (int i = 0; i < l$data.length; i++) {
//         final l$data$entry = l$data[i];
//         final lOther$data$entry = lOther$data[i];
//         if (l$data$entry != lOther$data$entry) {
//           return false;
//         }
//       }
//     } else if (l$data != lOther$data) {
//       return false;
//     }
//     final l$paginatorInfo = paginatorInfo;
//     final lOther$paginatorInfo = other.paginatorInfo;
//     if (l$paginatorInfo != lOther$paginatorInfo) {
//       return false;
//     }
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionQueryGiftBrandgiftBrands on QueryGiftBrandgiftBrands {
//   CopyWithQueryGiftBrandgiftBrands<QueryGiftBrandgiftBrands> get copyWith =>
//       CopyWithQueryGiftBrandgiftBrands(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryGiftBrandgiftBrands<TRes> {
//   factory CopyWithQueryGiftBrandgiftBrands(
//     QueryGiftBrandgiftBrands instance,
//     TRes Function(QueryGiftBrandgiftBrands) then,
//   ) = _CopyWithImplQueryGiftBrandgiftBrands;
//
//   factory CopyWithQueryGiftBrandgiftBrands.stub(TRes res) =
//       _CopyWithStubImplQueryGiftBrandgiftBrands;
//
//   TRes call({
//     List<QueryGiftBrandgiftBrandsdata?>? data,
//     QueryGiftBrandgiftBrandspaginatorInfo? paginatorInfo,
//     String? $__typename,
//   });
//   TRes data(
//       Iterable<QueryGiftBrandgiftBrandsdata?>? Function(
//               Iterable<
//                   CopyWithQueryGiftBrandgiftBrandsdata<
//                       QueryGiftBrandgiftBrandsdata>?>?)
//           _fn);
//   CopyWithQueryGiftBrandgiftBrandspaginatorInfo<TRes> get paginatorInfo;
// }
//
// class _CopyWithImplQueryGiftBrandgiftBrands<TRes>
//     implements CopyWithQueryGiftBrandgiftBrands<TRes> {
//   _CopyWithImplQueryGiftBrandgiftBrands(
//     this._instance,
//     this._then,
//   );
//
//   final QueryGiftBrandgiftBrands _instance;
//
//   final TRes Function(QueryGiftBrandgiftBrands) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? data = _undefined,
//     Object? paginatorInfo = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryGiftBrandgiftBrands(
//         data: data == _undefined
//             ? _instance.data
//             : (data as List<QueryGiftBrandgiftBrandsdata?>?),
//         paginatorInfo: paginatorInfo == _undefined
//             ? _instance.paginatorInfo
//             : (paginatorInfo as QueryGiftBrandgiftBrandspaginatorInfo?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   TRes data(
//           Iterable<QueryGiftBrandgiftBrandsdata?>? Function(
//                   Iterable<
//                       CopyWithQueryGiftBrandgiftBrandsdata<
//                           QueryGiftBrandgiftBrandsdata>?>?)
//               _fn) =>
//       call(
//           data: _fn(_instance.data?.map((e) => e == null
//               ? null
//               : CopyWithQueryGiftBrandgiftBrandsdata(
//                   e,
//                   (i) => i,
//                 )))?.toList());
//
//   CopyWithQueryGiftBrandgiftBrandspaginatorInfo<TRes> get paginatorInfo {
//     final local$paginatorInfo = _instance.paginatorInfo;
//     return local$paginatorInfo == null
//         ? CopyWithQueryGiftBrandgiftBrandspaginatorInfo.stub(_then(_instance))
//         : CopyWithQueryGiftBrandgiftBrandspaginatorInfo(
//             local$paginatorInfo, (e) => call(paginatorInfo: e));
//   }
// }
//
// class _CopyWithStubImplQueryGiftBrandgiftBrands<TRes>
//     implements CopyWithQueryGiftBrandgiftBrands<TRes> {
//   _CopyWithStubImplQueryGiftBrandgiftBrands(this._res);
//
//   TRes _res;
//
//   call({
//     List<QueryGiftBrandgiftBrandsdata?>? data,
//     QueryGiftBrandgiftBrandspaginatorInfo? paginatorInfo,
//     String? $__typename,
//   }) =>
//       _res;
//
//   data(_fn) => _res;
//
//   CopyWithQueryGiftBrandgiftBrandspaginatorInfo<TRes> get paginatorInfo =>
//       CopyWithQueryGiftBrandgiftBrandspaginatorInfo.stub(_res);
// }
//
// class QueryGiftBrandgiftBrandsdata {
//   QueryGiftBrandgiftBrandsdata({
//     this.id,
//     this.logo,
//     this.name,
//     this.brand_code,
//     this.description,
//     this.product_image,
//     this.denominations,
//     this.$__typename = 'GiftBrandData',
//   });
//
//   factory QueryGiftBrandgiftBrandsdata.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$logo = json['logo'];
//     final l$name = json['name'];
//     final l$brand_code = json['brand_code'];
//     final l$description = json['description'];
//     final l$product_image = json['product_image'];
//     final l$denominations = json['denominations'];
//     final l$$__typename = json['__typename'];
//     return QueryGiftBrandgiftBrandsdata(
//       id: (l$id as int?),
//       logo: (l$logo as String?),
//       name: (l$name as String?),
//       brand_code: (l$brand_code as String?),
//       description: (l$description as String?),
//       product_image: (l$product_image as String?),
//       denominations: l$denominations == null
//           ? null
//           : QueryGiftBrandgiftBrandsdatadenominations.fromJson(
//               (l$denominations as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final int? id;
//
//   final String? logo;
//
//   final String? name;
//
//   final String? brand_code;
//
//   final String? description;
//
//   final String? product_image;
//
//   final QueryGiftBrandgiftBrandsdatadenominations? denominations;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$logo = logo;
//     _resultData['logo'] = l$logo;
//     final l$name = name;
//     _resultData['name'] = l$name;
//     final l$brand_code = brand_code;
//     _resultData['brand_code'] = l$brand_code;
//     final l$description = description;
//     _resultData['description'] = l$description;
//     final l$product_image = product_image;
//     _resultData['product_image'] = l$product_image;
//     final l$denominations = denominations;
//     _resultData['denominations'] = l$denominations?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$logo = logo;
//     final l$name = name;
//     final l$brand_code = brand_code;
//     final l$description = description;
//     final l$product_image = product_image;
//     final l$denominations = denominations;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$logo,
//       l$name,
//       l$brand_code,
//       l$description,
//       l$product_image,
//       l$denominations,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryGiftBrandgiftBrandsdata) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     final l$logo = logo;
//     final lOther$logo = other.logo;
//     if (l$logo != lOther$logo) {
//       return false;
//     }
//     final l$name = name;
//     final lOther$name = other.name;
//     if (l$name != lOther$name) {
//       return false;
//     }
//     final l$brand_code = brand_code;
//     final lOther$brand_code = other.brand_code;
//     if (l$brand_code != lOther$brand_code) {
//       return false;
//     }
//     final l$description = description;
//     final lOther$description = other.description;
//     if (l$description != lOther$description) {
//       return false;
//     }
//     final l$product_image = product_image;
//     final lOther$product_image = other.product_image;
//     if (l$product_image != lOther$product_image) {
//       return false;
//     }
//     final l$denominations = denominations;
//     final lOther$denominations = other.denominations;
//     if (l$denominations != lOther$denominations) {
//       return false;
//     }
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionQueryGiftBrandgiftBrandsdata
//     on QueryGiftBrandgiftBrandsdata {
//   CopyWithQueryGiftBrandgiftBrandsdata<QueryGiftBrandgiftBrandsdata>
//       get copyWith => CopyWithQueryGiftBrandgiftBrandsdata(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryGiftBrandgiftBrandsdata<TRes> {
//   factory CopyWithQueryGiftBrandgiftBrandsdata(
//     QueryGiftBrandgiftBrandsdata instance,
//     TRes Function(QueryGiftBrandgiftBrandsdata) then,
//   ) = _CopyWithImplQueryGiftBrandgiftBrandsdata;
//
//   factory CopyWithQueryGiftBrandgiftBrandsdata.stub(TRes res) =
//       _CopyWithStubImplQueryGiftBrandgiftBrandsdata;
//
//   TRes call({
//     int? id,
//     String? logo,
//     String? name,
//     String? brand_code,
//     String? description,
//     String? product_image,
//     QueryGiftBrandgiftBrandsdatadenominations? denominations,
//     String? $__typename,
//   });
//   CopyWithQueryGiftBrandgiftBrandsdatadenominations<TRes> get denominations;
// }
//
// class _CopyWithImplQueryGiftBrandgiftBrandsdata<TRes>
//     implements CopyWithQueryGiftBrandgiftBrandsdata<TRes> {
//   _CopyWithImplQueryGiftBrandgiftBrandsdata(
//     this._instance,
//     this._then,
//   );
//
//   final QueryGiftBrandgiftBrandsdata _instance;
//
//   final TRes Function(QueryGiftBrandgiftBrandsdata) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? logo = _undefined,
//     Object? name = _undefined,
//     Object? brand_code = _undefined,
//     Object? description = _undefined,
//     Object? product_image = _undefined,
//     Object? denominations = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryGiftBrandgiftBrandsdata(
//         id: id == _undefined ? _instance.id : (id as int?),
//         logo: logo == _undefined ? _instance.logo : (logo as String?),
//         name: name == _undefined ? _instance.name : (name as String?),
//         brand_code: brand_code == _undefined
//             ? _instance.brand_code
//             : (brand_code as String?),
//         description: description == _undefined
//             ? _instance.description
//             : (description as String?),
//         product_image: product_image == _undefined
//             ? _instance.product_image
//             : (product_image as String?),
//         denominations: denominations == _undefined
//             ? _instance.denominations
//             : (denominations as QueryGiftBrandgiftBrandsdatadenominations?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryGiftBrandgiftBrandsdatadenominations<TRes> get denominations {
//     final local$denominations = _instance.denominations;
//     return local$denominations == null
//         ? CopyWithQueryGiftBrandgiftBrandsdatadenominations.stub(
//             _then(_instance))
//         : CopyWithQueryGiftBrandgiftBrandsdatadenominations(
//             local$denominations, (e) => call(denominations: e));
//   }
// }
//
// class _CopyWithStubImplQueryGiftBrandgiftBrandsdata<TRes>
//     implements CopyWithQueryGiftBrandgiftBrandsdata<TRes> {
//   _CopyWithStubImplQueryGiftBrandgiftBrandsdata(this._res);
//
//   TRes _res;
//
//   call({
//     int? id,
//     String? logo,
//     String? name,
//     String? brand_code,
//     String? description,
//     String? product_image,
//     QueryGiftBrandgiftBrandsdatadenominations? denominations,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryGiftBrandgiftBrandsdatadenominations<TRes> get denominations =>
//       CopyWithQueryGiftBrandgiftBrandsdatadenominations.stub(_res);
// }
//
// class QueryGiftBrandgiftBrandsdatadenominations {
//   QueryGiftBrandgiftBrandsdatadenominations({
//     this.SAR,
//     this.$__typename = 'Price',
//   });
//
//   factory QueryGiftBrandgiftBrandsdatadenominations.fromJson(
//       Map<String, dynamic> json) {
//     final l$SAR = json['SAR'];
//     final l$$__typename = json['__typename'];
//     return QueryGiftBrandgiftBrandsdatadenominations(
//       SAR: (l$SAR as List<dynamic>?)
//           ?.map((e) => e == null
//               ? null
//               : QueryGiftBrandgiftBrandsdatadenominationsSAR.fromJson(
//                   (e as Map<String, dynamic>)))
//           .toList(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final List<QueryGiftBrandgiftBrandsdatadenominationsSAR?>? SAR;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$SAR = SAR;
//     _resultData['SAR'] = l$SAR?.map((e) => e?.toJson()).toList();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$SAR = SAR;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$SAR == null ? null : Object.hashAll(l$SAR.map((v) => v)),
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryGiftBrandgiftBrandsdatadenominations) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$SAR = SAR;
//     final lOther$SAR = other.SAR;
//     if (l$SAR != null && lOther$SAR != null) {
//       if (l$SAR.length != lOther$SAR.length) {
//         return false;
//       }
//       for (int i = 0; i < l$SAR.length; i++) {
//         final l$SAR$entry = l$SAR[i];
//         final lOther$SAR$entry = lOther$SAR[i];
//         if (l$SAR$entry != lOther$SAR$entry) {
//           return false;
//         }
//       }
//     } else if (l$SAR != lOther$SAR) {
//       return false;
//     }
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionQueryGiftBrandgiftBrandsdatadenominations
//     on QueryGiftBrandgiftBrandsdatadenominations {
//   CopyWithQueryGiftBrandgiftBrandsdatadenominations<
//           QueryGiftBrandgiftBrandsdatadenominations>
//       get copyWith => CopyWithQueryGiftBrandgiftBrandsdatadenominations(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryGiftBrandgiftBrandsdatadenominations<TRes> {
//   factory CopyWithQueryGiftBrandgiftBrandsdatadenominations(
//     QueryGiftBrandgiftBrandsdatadenominations instance,
//     TRes Function(QueryGiftBrandgiftBrandsdatadenominations) then,
//   ) = _CopyWithImplQueryGiftBrandgiftBrandsdatadenominations;
//
//   factory CopyWithQueryGiftBrandgiftBrandsdatadenominations.stub(TRes res) =
//       _CopyWithStubImplQueryGiftBrandgiftBrandsdatadenominations;
//
//   TRes call({
//     List<QueryGiftBrandgiftBrandsdatadenominationsSAR?>? SAR,
//     String? $__typename,
//   });
//   TRes SAR(
//       Iterable<QueryGiftBrandgiftBrandsdatadenominationsSAR?>? Function(
//               Iterable<
//                   CopyWithQueryGiftBrandgiftBrandsdatadenominationsSAR<
//                       QueryGiftBrandgiftBrandsdatadenominationsSAR>?>?)
//           _fn);
// }
//
// class _CopyWithImplQueryGiftBrandgiftBrandsdatadenominations<TRes>
//     implements CopyWithQueryGiftBrandgiftBrandsdatadenominations<TRes> {
//   _CopyWithImplQueryGiftBrandgiftBrandsdatadenominations(
//     this._instance,
//     this._then,
//   );
//
//   final QueryGiftBrandgiftBrandsdatadenominations _instance;
//
//   final TRes Function(QueryGiftBrandgiftBrandsdatadenominations) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? SAR = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryGiftBrandgiftBrandsdatadenominations(
//         SAR: SAR == _undefined
//             ? _instance.SAR
//             : (SAR as List<QueryGiftBrandgiftBrandsdatadenominationsSAR?>?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   TRes SAR(
//           Iterable<QueryGiftBrandgiftBrandsdatadenominationsSAR?>? Function(
//                   Iterable<
//                       CopyWithQueryGiftBrandgiftBrandsdatadenominationsSAR<
//                           QueryGiftBrandgiftBrandsdatadenominationsSAR>?>?)
//               _fn) =>
//       call(
//           SAR: _fn(_instance.SAR?.map((e) => e == null
//               ? null
//               : CopyWithQueryGiftBrandgiftBrandsdatadenominationsSAR(
//                   e,
//                   (i) => i,
//                 )))?.toList());
// }
//
// class _CopyWithStubImplQueryGiftBrandgiftBrandsdatadenominations<TRes>
//     implements CopyWithQueryGiftBrandgiftBrandsdatadenominations<TRes> {
//   _CopyWithStubImplQueryGiftBrandgiftBrandsdatadenominations(this._res);
//
//   TRes _res;
//
//   call({
//     List<QueryGiftBrandgiftBrandsdatadenominationsSAR?>? SAR,
//     String? $__typename,
//   }) =>
//       _res;
//
//   SAR(_fn) => _res;
// }
//
// class QueryGiftBrandgiftBrandsdatadenominationsSAR {
//   QueryGiftBrandgiftBrandsdatadenominationsSAR({
//     this.amount,
//     this.is_active,
//     this.$__typename = 'PriceCurrency',
//   });
//
//   factory QueryGiftBrandgiftBrandsdatadenominationsSAR.fromJson(
//       Map<String, dynamic> json) {
//     final l$amount = json['amount'];
//     final l$is_active = json['is_active'];
//     final l$$__typename = json['__typename'];
//     return QueryGiftBrandgiftBrandsdatadenominationsSAR(
//       amount: (l$amount as num?)?.toDouble(),
//       is_active: (l$is_active as bool?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final double? amount;
//
//   final bool? is_active;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$amount = amount;
//     _resultData['amount'] = l$amount;
//     final l$is_active = is_active;
//     _resultData['is_active'] = l$is_active;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$amount = amount;
//     final l$is_active = is_active;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$amount,
//       l$is_active,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryGiftBrandgiftBrandsdatadenominationsSAR) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$amount = amount;
//     final lOther$amount = other.amount;
//     if (l$amount != lOther$amount) {
//       return false;
//     }
//     final l$is_active = is_active;
//     final lOther$is_active = other.is_active;
//     if (l$is_active != lOther$is_active) {
//       return false;
//     }
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionQueryGiftBrandgiftBrandsdatadenominationsSAR
//     on QueryGiftBrandgiftBrandsdatadenominationsSAR {
//   CopyWithQueryGiftBrandgiftBrandsdatadenominationsSAR<
//           QueryGiftBrandgiftBrandsdatadenominationsSAR>
//       get copyWith => CopyWithQueryGiftBrandgiftBrandsdatadenominationsSAR(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryGiftBrandgiftBrandsdatadenominationsSAR<TRes> {
//   factory CopyWithQueryGiftBrandgiftBrandsdatadenominationsSAR(
//     QueryGiftBrandgiftBrandsdatadenominationsSAR instance,
//     TRes Function(QueryGiftBrandgiftBrandsdatadenominationsSAR) then,
//   ) = _CopyWithImplQueryGiftBrandgiftBrandsdatadenominationsSAR;
//
//   factory CopyWithQueryGiftBrandgiftBrandsdatadenominationsSAR.stub(TRes res) =
//       _CopyWithStubImplQueryGiftBrandgiftBrandsdatadenominationsSAR;
//
//   TRes call({
//     double? amount,
//     bool? is_active,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryGiftBrandgiftBrandsdatadenominationsSAR<TRes>
//     implements CopyWithQueryGiftBrandgiftBrandsdatadenominationsSAR<TRes> {
//   _CopyWithImplQueryGiftBrandgiftBrandsdatadenominationsSAR(
//     this._instance,
//     this._then,
//   );
//
//   final QueryGiftBrandgiftBrandsdatadenominationsSAR _instance;
//
//   final TRes Function(QueryGiftBrandgiftBrandsdatadenominationsSAR) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? amount = _undefined,
//     Object? is_active = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryGiftBrandgiftBrandsdatadenominationsSAR(
//         amount: amount == _undefined ? _instance.amount : (amount as double?),
//         is_active: is_active == _undefined
//             ? _instance.is_active
//             : (is_active as bool?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryGiftBrandgiftBrandsdatadenominationsSAR<TRes>
//     implements CopyWithQueryGiftBrandgiftBrandsdatadenominationsSAR<TRes> {
//   _CopyWithStubImplQueryGiftBrandgiftBrandsdatadenominationsSAR(this._res);
//
//   TRes _res;
//
//   call({
//     double? amount,
//     bool? is_active,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryGiftBrandgiftBrandspaginatorInfo {
//   QueryGiftBrandgiftBrandspaginatorInfo({
//     this.count,
//     this.currentPage,
//     this.total,
//     this.hasMorePages,
//     this.$__typename = 'GiftBrandPaginatorInfo',
//   });
//
//   factory QueryGiftBrandgiftBrandspaginatorInfo.fromJson(
//       Map<String, dynamic> json) {
//     final l$count = json['count'];
//     final l$currentPage = json['currentPage'];
//     final l$total = json['total'];
//     final l$hasMorePages = json['hasMorePages'];
//     final l$$__typename = json['__typename'];
//     return QueryGiftBrandgiftBrandspaginatorInfo(
//       count: (l$count as int?),
//       currentPage: (l$currentPage as int?),
//       total: (l$total as int?),
//       hasMorePages: (l$hasMorePages as bool?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final int? count;
//
//   final int? currentPage;
//
//   final int? total;
//
//   final bool? hasMorePages;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$count = count;
//     _resultData['count'] = l$count;
//     final l$currentPage = currentPage;
//     _resultData['currentPage'] = l$currentPage;
//     final l$total = total;
//     _resultData['total'] = l$total;
//     final l$hasMorePages = hasMorePages;
//     _resultData['hasMorePages'] = l$hasMorePages;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$count = count;
//     final l$currentPage = currentPage;
//     final l$total = total;
//     final l$hasMorePages = hasMorePages;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$count,
//       l$currentPage,
//       l$total,
//       l$hasMorePages,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryGiftBrandgiftBrandspaginatorInfo) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$count = count;
//     final lOther$count = other.count;
//     if (l$count != lOther$count) {
//       return false;
//     }
//     final l$currentPage = currentPage;
//     final lOther$currentPage = other.currentPage;
//     if (l$currentPage != lOther$currentPage) {
//       return false;
//     }
//     final l$total = total;
//     final lOther$total = other.total;
//     if (l$total != lOther$total) {
//       return false;
//     }
//     final l$hasMorePages = hasMorePages;
//     final lOther$hasMorePages = other.hasMorePages;
//     if (l$hasMorePages != lOther$hasMorePages) {
//       return false;
//     }
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionQueryGiftBrandgiftBrandspaginatorInfo
//     on QueryGiftBrandgiftBrandspaginatorInfo {
//   CopyWithQueryGiftBrandgiftBrandspaginatorInfo<
//           QueryGiftBrandgiftBrandspaginatorInfo>
//       get copyWith => CopyWithQueryGiftBrandgiftBrandspaginatorInfo(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryGiftBrandgiftBrandspaginatorInfo<TRes> {
//   factory CopyWithQueryGiftBrandgiftBrandspaginatorInfo(
//     QueryGiftBrandgiftBrandspaginatorInfo instance,
//     TRes Function(QueryGiftBrandgiftBrandspaginatorInfo) then,
//   ) = _CopyWithImplQueryGiftBrandgiftBrandspaginatorInfo;
//
//   factory CopyWithQueryGiftBrandgiftBrandspaginatorInfo.stub(TRes res) =
//       _CopyWithStubImplQueryGiftBrandgiftBrandspaginatorInfo;
//
//   TRes call({
//     int? count,
//     int? currentPage,
//     int? total,
//     bool? hasMorePages,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryGiftBrandgiftBrandspaginatorInfo<TRes>
//     implements CopyWithQueryGiftBrandgiftBrandspaginatorInfo<TRes> {
//   _CopyWithImplQueryGiftBrandgiftBrandspaginatorInfo(
//     this._instance,
//     this._then,
//   );
//
//   final QueryGiftBrandgiftBrandspaginatorInfo _instance;
//
//   final TRes Function(QueryGiftBrandgiftBrandspaginatorInfo) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? count = _undefined,
//     Object? currentPage = _undefined,
//     Object? total = _undefined,
//     Object? hasMorePages = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryGiftBrandgiftBrandspaginatorInfo(
//         count: count == _undefined ? _instance.count : (count as int?),
//         currentPage: currentPage == _undefined
//             ? _instance.currentPage
//             : (currentPage as int?),
//         total: total == _undefined ? _instance.total : (total as int?),
//         hasMorePages: hasMorePages == _undefined
//             ? _instance.hasMorePages
//             : (hasMorePages as bool?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryGiftBrandgiftBrandspaginatorInfo<TRes>
//     implements CopyWithQueryGiftBrandgiftBrandspaginatorInfo<TRes> {
//   _CopyWithStubImplQueryGiftBrandgiftBrandspaginatorInfo(this._res);
//
//   TRes _res;
//
//   call({
//     int? count,
//     int? currentPage,
//     int? total,
//     bool? hasMorePages,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesQueryPreviousGifts {
//   factory VariablesQueryPreviousGifts({required int page}) =>
//       VariablesQueryPreviousGifts._({
//         r'page': page,
//       });
//
//   VariablesQueryPreviousGifts._(this._$data);
//
//   factory VariablesQueryPreviousGifts.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$page = data['page'];
//     result$data['page'] = (l$page as int);
//     return VariablesQueryPreviousGifts._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   int get page => (_$data['page'] as int);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$page = page;
//     result$data['page'] = l$page;
//     return result$data;
//   }
//
//   CopyWithVariablesQueryPreviousGifts<VariablesQueryPreviousGifts>
//       get copyWith => CopyWithVariablesQueryPreviousGifts(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesQueryPreviousGifts) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$page = page;
//     final lOther$page = other.page;
//     if (l$page != lOther$page) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$page = page;
//     return Object.hashAll([l$page]);
//   }
// }
//
// abstract class CopyWithVariablesQueryPreviousGifts<TRes> {
//   factory CopyWithVariablesQueryPreviousGifts(
//     VariablesQueryPreviousGifts instance,
//     TRes Function(VariablesQueryPreviousGifts) then,
//   ) = _CopyWithImplVariablesQueryPreviousGifts;
//
//   factory CopyWithVariablesQueryPreviousGifts.stub(TRes res) =
//       _CopyWithStubImplVariablesQueryPreviousGifts;
//
//   TRes call({int? page});
// }
//
// class _CopyWithImplVariablesQueryPreviousGifts<TRes>
//     implements CopyWithVariablesQueryPreviousGifts<TRes> {
//   _CopyWithImplVariablesQueryPreviousGifts(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesQueryPreviousGifts _instance;
//
//   final TRes Function(VariablesQueryPreviousGifts) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? page = _undefined}) =>
//       _then(VariablesQueryPreviousGifts._({
//         ..._instance._$data,
//         if (page != _undefined && page != null) 'page': (page as int),
//       }));
// }
//
// class _CopyWithStubImplVariablesQueryPreviousGifts<TRes>
//     implements CopyWithVariablesQueryPreviousGifts<TRes> {
//   _CopyWithStubImplVariablesQueryPreviousGifts(this._res);
//
//   TRes _res;
//
//   call({int? page}) => _res;
// }
//
// class QueryPreviousGifts {
//   QueryPreviousGifts({
//     this.gifts,
//     this.$__typename = 'Query',
//   });
//
//   factory QueryPreviousGifts.fromJson(Map<String, dynamic> json) {
//     final l$gifts = json['gifts'];
//     final l$$__typename = json['__typename'];
//     return QueryPreviousGifts(
//       gifts: l$gifts == null
//           ? null
//           : QueryPreviousGiftsgifts.fromJson((l$gifts as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryPreviousGiftsgifts? gifts;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$gifts = gifts;
//     _resultData['gifts'] = l$gifts?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$gifts = gifts;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$gifts,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryPreviousGifts) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$gifts = gifts;
//     final lOther$gifts = other.gifts;
//     if (l$gifts != lOther$gifts) {
//       return false;
//     }
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionQueryPreviousGifts on QueryPreviousGifts {
//   CopyWithQueryPreviousGifts<QueryPreviousGifts> get copyWith =>
//       CopyWithQueryPreviousGifts(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryPreviousGifts<TRes> {
//   factory CopyWithQueryPreviousGifts(
//     QueryPreviousGifts instance,
//     TRes Function(QueryPreviousGifts) then,
//   ) = _CopyWithImplQueryPreviousGifts;
//
//   factory CopyWithQueryPreviousGifts.stub(TRes res) =
//       _CopyWithStubImplQueryPreviousGifts;
//
//   TRes call({
//     QueryPreviousGiftsgifts? gifts,
//     String? $__typename,
//   });
//   CopyWithQueryPreviousGiftsgifts<TRes> get gifts;
// }
//
// class _CopyWithImplQueryPreviousGifts<TRes>
//     implements CopyWithQueryPreviousGifts<TRes> {
//   _CopyWithImplQueryPreviousGifts(
//     this._instance,
//     this._then,
//   );
//
//   final QueryPreviousGifts _instance;
//
//   final TRes Function(QueryPreviousGifts) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? gifts = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryPreviousGifts(
//         gifts: gifts == _undefined
//             ? _instance.gifts
//             : (gifts as QueryPreviousGiftsgifts?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryPreviousGiftsgifts<TRes> get gifts {
//     final local$gifts = _instance.gifts;
//     return local$gifts == null
//         ? CopyWithQueryPreviousGiftsgifts.stub(_then(_instance))
//         : CopyWithQueryPreviousGiftsgifts(local$gifts, (e) => call(gifts: e));
//   }
// }
//
// class _CopyWithStubImplQueryPreviousGifts<TRes>
//     implements CopyWithQueryPreviousGifts<TRes> {
//   _CopyWithStubImplQueryPreviousGifts(this._res);
//
//   TRes _res;
//
//   call({
//     QueryPreviousGiftsgifts? gifts,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryPreviousGiftsgifts<TRes> get gifts =>
//       CopyWithQueryPreviousGiftsgifts.stub(_res);
// }
//
// const documentNodeQueryPreviousGifts = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.query,
//     name: NameNode(value: 'PreviousGifts'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'page')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'Int'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       )
//     ],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'gifts'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'page'),
//             value: VariableNode(name: NameNode(value: 'page')),
//           )
//         ],
//         directives: [],
//         selectionSet: SelectionSetNode(selections: [
//           FieldNode(
//             name: NameNode(value: 'paginatorInfo'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: SelectionSetNode(selections: [
//               FieldNode(
//                 name: NameNode(value: 'count'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'currentPage'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'total'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'lastPage'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'hasMorePages'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: '__typename'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//             ]),
//           ),
//           FieldNode(
//             name: NameNode(value: 'data'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: SelectionSetNode(selections: [
//               FieldNode(
//                 name: NameNode(value: 'id'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'yougotagift_id'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'yougotagift_status'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'reference_number'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'barcode'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'gift_voucher_label'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'gift_voucher_value'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'expiry_date'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'redemption_instructions'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'egift_card_gift_verification_pin'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'amount'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'points'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: '__typename'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//             ]),
//           ),
//           FieldNode(
//             name: NameNode(value: '__typename'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//         ]),
//       ),
//       FieldNode(
//         name: NameNode(value: '__typename'),
//         alias: null,
//         arguments: [],
//         directives: [],
//         selectionSet: null,
//       ),
//     ]),
//   ),
// ]);
// QueryPreviousGifts _parserFnQueryPreviousGifts(Map<String, dynamic> data) =>
//     QueryPreviousGifts.fromJson(data);
// typedef OnQueryCompleteQueryPreviousGifts = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   QueryPreviousGifts?,
// );
//
// class OptionsQueryPreviousGifts
//     extends graphql.QueryOptions<QueryPreviousGifts> {
//   OptionsQueryPreviousGifts({
//     String? operationName,
//     required VariablesQueryPreviousGifts variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryPreviousGifts? typedOptimisticResult,
//     Duration? pollInterval,
//     graphql.Context? context,
//     OnQueryCompleteQueryPreviousGifts? onComplete,
//     graphql.OnQueryError? onError,
//   })  : onCompleteWithParsed = onComplete,
//         super(
//           variables: variables.toJson(),
//           operationName: operationName,
//           fetchPolicy: fetchPolicy,
//           errorPolicy: errorPolicy,
//           cacheRereadPolicy: cacheRereadPolicy,
//           optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//           pollInterval: pollInterval,
//           context: context,
//           onComplete: onComplete == null
//               ? null
//               : (data) => onComplete(
//                     data,
//                     data == null ? null : _parserFnQueryPreviousGifts(data),
//                   ),
//           onError: onError,
//           document: documentNodeQueryPreviousGifts,
//           parserFn: _parserFnQueryPreviousGifts,
//         );
//
//   final OnQueryCompleteQueryPreviousGifts? onCompleteWithParsed;
//
//   @override
//   List<Object?> get properties => [
//         ...super.onComplete == null
//             ? super.properties
//             : super.properties.where((property) => property != onComplete),
//         onCompleteWithParsed,
//       ];
// }
//
// class WatchOptionsQueryPreviousGifts
//     extends graphql.WatchQueryOptions<QueryPreviousGifts> {
//   WatchOptionsQueryPreviousGifts({
//     String? operationName,
//     required VariablesQueryPreviousGifts variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryPreviousGifts? typedOptimisticResult,
//     graphql.Context? context,
//     Duration? pollInterval,
//     bool? eagerlyFetchResults,
//     bool carryForwardDataOnException = true,
//     bool fetchResults = false,
//   }) : super(
//           variables: variables.toJson(),
//           operationName: operationName,
//           fetchPolicy: fetchPolicy,
//           errorPolicy: errorPolicy,
//           cacheRereadPolicy: cacheRereadPolicy,
//           optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//           context: context,
//           document: documentNodeQueryPreviousGifts,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnQueryPreviousGifts,
//         );
// }
//
// class FetchMoreOptionsQueryPreviousGifts extends graphql.FetchMoreOptions {
//   FetchMoreOptionsQueryPreviousGifts({
//     required graphql.UpdateQuery updateQuery,
//     required VariablesQueryPreviousGifts variables,
//   }) : super(
//           updateQuery: updateQuery,
//           variables: variables.toJson(),
//           document: documentNodeQueryPreviousGifts,
//         );
// }
//
// extension ClientExtensionQueryPreviousGifts on graphql.GraphQLClient {
//   Future<graphql.QueryResult<QueryPreviousGifts>> queryPreviousGifts(
//           OptionsQueryPreviousGifts options) async =>
//       await this.query(options);
//   graphql.ObservableQuery<QueryPreviousGifts> watchQueryPreviousGifts(
//           WatchOptionsQueryPreviousGifts options) =>
//       this.watchQuery(options);
//   void writeQueryPreviousGifts({
//     required QueryPreviousGifts data,
//     required VariablesQueryPreviousGifts variables,
//     bool broadcast = true,
//   }) =>
//       this.writeQuery(
//         graphql.Request(
//           operation:
//               graphql.Operation(document: documentNodeQueryPreviousGifts),
//           variables: variables.toJson(),
//         ),
//         data: data.toJson(),
//         broadcast: broadcast,
//       );
//   QueryPreviousGifts? readQueryPreviousGifts({
//     required VariablesQueryPreviousGifts variables,
//     bool optimistic = true,
//   }) {
//     final result = this.readQuery(
//       graphql.Request(
//         operation: graphql.Operation(document: documentNodeQueryPreviousGifts),
//         variables: variables.toJson(),
//       ),
//       optimistic: optimistic,
//     );
//     return result == null ? null : QueryPreviousGifts.fromJson(result);
//   }
// }
//
// graphql_flutter.QueryHookResult<QueryPreviousGifts> useQueryPreviousGifts(
//         OptionsQueryPreviousGifts options) =>
//     graphql_flutter.useQuery(options);
// graphql.ObservableQuery<QueryPreviousGifts> useWatchQueryPreviousGifts(
//         WatchOptionsQueryPreviousGifts options) =>
//     graphql_flutter.useWatchQuery(options);
//
// class QueryPreviousGiftsWidget
//     extends graphql_flutter.Query<QueryPreviousGifts> {
//   QueryPreviousGiftsWidget({
//     widgets.Key? key,
//     required OptionsQueryPreviousGifts options,
//     required graphql_flutter.QueryBuilder<QueryPreviousGifts> builder,
//   }) : super(
//           key: key,
//           options: options,
//           builder: builder,
//         );
// }
//
// class QueryPreviousGiftsgifts {
//   QueryPreviousGiftsgifts({
//     required this.paginatorInfo,
//     required this.data,
//     this.$__typename = 'UserGiftPaginator',
//   });
//
//   factory QueryPreviousGiftsgifts.fromJson(Map<String, dynamic> json) {
//     final l$paginatorInfo = json['paginatorInfo'];
//     final l$data = json['data'];
//     final l$$__typename = json['__typename'];
//     return QueryPreviousGiftsgifts(
//       paginatorInfo: QueryPreviousGiftsgiftspaginatorInfo.fromJson(
//           (l$paginatorInfo as Map<String, dynamic>)),
//       data: (l$data as List<dynamic>)
//           .map((e) =>
//               QueryPreviousGiftsgiftsdata.fromJson((e as Map<String, dynamic>)))
//           .toList(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryPreviousGiftsgiftspaginatorInfo paginatorInfo;
//
//   final List<QueryPreviousGiftsgiftsdata> data;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$paginatorInfo = paginatorInfo;
//     _resultData['paginatorInfo'] = l$paginatorInfo.toJson();
//     final l$data = data;
//     _resultData['data'] = l$data.map((e) => e.toJson()).toList();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$paginatorInfo = paginatorInfo;
//     final l$data = data;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$paginatorInfo,
//       Object.hashAll(l$data.map((v) => v)),
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryPreviousGiftsgifts) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$paginatorInfo = paginatorInfo;
//     final lOther$paginatorInfo = other.paginatorInfo;
//     if (l$paginatorInfo != lOther$paginatorInfo) {
//       return false;
//     }
//     final l$data = data;
//     final lOther$data = other.data;
//     if (l$data.length != lOther$data.length) {
//       return false;
//     }
//     for (int i = 0; i < l$data.length; i++) {
//       final l$data$entry = l$data[i];
//       final lOther$data$entry = lOther$data[i];
//       if (l$data$entry != lOther$data$entry) {
//         return false;
//       }
//     }
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionQueryPreviousGiftsgifts on QueryPreviousGiftsgifts {
//   CopyWithQueryPreviousGiftsgifts<QueryPreviousGiftsgifts> get copyWith =>
//       CopyWithQueryPreviousGiftsgifts(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryPreviousGiftsgifts<TRes> {
//   factory CopyWithQueryPreviousGiftsgifts(
//     QueryPreviousGiftsgifts instance,
//     TRes Function(QueryPreviousGiftsgifts) then,
//   ) = _CopyWithImplQueryPreviousGiftsgifts;
//
//   factory CopyWithQueryPreviousGiftsgifts.stub(TRes res) =
//       _CopyWithStubImplQueryPreviousGiftsgifts;
//
//   TRes call({
//     QueryPreviousGiftsgiftspaginatorInfo? paginatorInfo,
//     List<QueryPreviousGiftsgiftsdata>? data,
//     String? $__typename,
//   });
//   CopyWithQueryPreviousGiftsgiftspaginatorInfo<TRes> get paginatorInfo;
//   TRes data(
//       Iterable<QueryPreviousGiftsgiftsdata> Function(
//               Iterable<
//                   CopyWithQueryPreviousGiftsgiftsdata<
//                       QueryPreviousGiftsgiftsdata>>)
//           _fn);
// }
//
// class _CopyWithImplQueryPreviousGiftsgifts<TRes>
//     implements CopyWithQueryPreviousGiftsgifts<TRes> {
//   _CopyWithImplQueryPreviousGiftsgifts(
//     this._instance,
//     this._then,
//   );
//
//   final QueryPreviousGiftsgifts _instance;
//
//   final TRes Function(QueryPreviousGiftsgifts) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? paginatorInfo = _undefined,
//     Object? data = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryPreviousGiftsgifts(
//         paginatorInfo: paginatorInfo == _undefined || paginatorInfo == null
//             ? _instance.paginatorInfo
//             : (paginatorInfo as QueryPreviousGiftsgiftspaginatorInfo),
//         data: data == _undefined || data == null
//             ? _instance.data
//             : (data as List<QueryPreviousGiftsgiftsdata>),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryPreviousGiftsgiftspaginatorInfo<TRes> get paginatorInfo {
//     final local$paginatorInfo = _instance.paginatorInfo;
//     return CopyWithQueryPreviousGiftsgiftspaginatorInfo(
//         local$paginatorInfo, (e) => call(paginatorInfo: e));
//   }
//
//   TRes data(
//           Iterable<QueryPreviousGiftsgiftsdata> Function(
//                   Iterable<
//                       CopyWithQueryPreviousGiftsgiftsdata<
//                           QueryPreviousGiftsgiftsdata>>)
//               _fn) =>
//       call(
//           data:
//               _fn(_instance.data.map((e) => CopyWithQueryPreviousGiftsgiftsdata(
//                     e,
//                     (i) => i,
//                   ))).toList());
// }
//
// class _CopyWithStubImplQueryPreviousGiftsgifts<TRes>
//     implements CopyWithQueryPreviousGiftsgifts<TRes> {
//   _CopyWithStubImplQueryPreviousGiftsgifts(this._res);
//
//   TRes _res;
//
//   call({
//     QueryPreviousGiftsgiftspaginatorInfo? paginatorInfo,
//     List<QueryPreviousGiftsgiftsdata>? data,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryPreviousGiftsgiftspaginatorInfo<TRes> get paginatorInfo =>
//       CopyWithQueryPreviousGiftsgiftspaginatorInfo.stub(_res);
//
//   data(_fn) => _res;
// }
//
// class QueryPreviousGiftsgiftspaginatorInfo {
//   QueryPreviousGiftsgiftspaginatorInfo({
//     required this.count,
//     required this.currentPage,
//     required this.total,
//     required this.lastPage,
//     required this.hasMorePages,
//     this.$__typename = 'PaginatorInfo',
//   });
//
//   factory QueryPreviousGiftsgiftspaginatorInfo.fromJson(
//       Map<String, dynamic> json) {
//     final l$count = json['count'];
//     final l$currentPage = json['currentPage'];
//     final l$total = json['total'];
//     final l$lastPage = json['lastPage'];
//     final l$hasMorePages = json['hasMorePages'];
//     final l$$__typename = json['__typename'];
//     return QueryPreviousGiftsgiftspaginatorInfo(
//       count: (l$count as int),
//       currentPage: (l$currentPage as int),
//       total: (l$total as int),
//       lastPage: (l$lastPage as int),
//       hasMorePages: (l$hasMorePages as bool),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final int count;
//
//   final int currentPage;
//
//   final int total;
//
//   final int lastPage;
//
//   final bool hasMorePages;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$count = count;
//     _resultData['count'] = l$count;
//     final l$currentPage = currentPage;
//     _resultData['currentPage'] = l$currentPage;
//     final l$total = total;
//     _resultData['total'] = l$total;
//     final l$lastPage = lastPage;
//     _resultData['lastPage'] = l$lastPage;
//     final l$hasMorePages = hasMorePages;
//     _resultData['hasMorePages'] = l$hasMorePages;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$count = count;
//     final l$currentPage = currentPage;
//     final l$total = total;
//     final l$lastPage = lastPage;
//     final l$hasMorePages = hasMorePages;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$count,
//       l$currentPage,
//       l$total,
//       l$lastPage,
//       l$hasMorePages,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryPreviousGiftsgiftspaginatorInfo) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$count = count;
//     final lOther$count = other.count;
//     if (l$count != lOther$count) {
//       return false;
//     }
//     final l$currentPage = currentPage;
//     final lOther$currentPage = other.currentPage;
//     if (l$currentPage != lOther$currentPage) {
//       return false;
//     }
//     final l$total = total;
//     final lOther$total = other.total;
//     if (l$total != lOther$total) {
//       return false;
//     }
//     final l$lastPage = lastPage;
//     final lOther$lastPage = other.lastPage;
//     if (l$lastPage != lOther$lastPage) {
//       return false;
//     }
//     final l$hasMorePages = hasMorePages;
//     final lOther$hasMorePages = other.hasMorePages;
//     if (l$hasMorePages != lOther$hasMorePages) {
//       return false;
//     }
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionQueryPreviousGiftsgiftspaginatorInfo
//     on QueryPreviousGiftsgiftspaginatorInfo {
//   CopyWithQueryPreviousGiftsgiftspaginatorInfo<
//           QueryPreviousGiftsgiftspaginatorInfo>
//       get copyWith => CopyWithQueryPreviousGiftsgiftspaginatorInfo(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryPreviousGiftsgiftspaginatorInfo<TRes> {
//   factory CopyWithQueryPreviousGiftsgiftspaginatorInfo(
//     QueryPreviousGiftsgiftspaginatorInfo instance,
//     TRes Function(QueryPreviousGiftsgiftspaginatorInfo) then,
//   ) = _CopyWithImplQueryPreviousGiftsgiftspaginatorInfo;
//
//   factory CopyWithQueryPreviousGiftsgiftspaginatorInfo.stub(TRes res) =
//       _CopyWithStubImplQueryPreviousGiftsgiftspaginatorInfo;
//
//   TRes call({
//     int? count,
//     int? currentPage,
//     int? total,
//     int? lastPage,
//     bool? hasMorePages,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryPreviousGiftsgiftspaginatorInfo<TRes>
//     implements CopyWithQueryPreviousGiftsgiftspaginatorInfo<TRes> {
//   _CopyWithImplQueryPreviousGiftsgiftspaginatorInfo(
//     this._instance,
//     this._then,
//   );
//
//   final QueryPreviousGiftsgiftspaginatorInfo _instance;
//
//   final TRes Function(QueryPreviousGiftsgiftspaginatorInfo) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? count = _undefined,
//     Object? currentPage = _undefined,
//     Object? total = _undefined,
//     Object? lastPage = _undefined,
//     Object? hasMorePages = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryPreviousGiftsgiftspaginatorInfo(
//         count: count == _undefined || count == null
//             ? _instance.count
//             : (count as int),
//         currentPage: currentPage == _undefined || currentPage == null
//             ? _instance.currentPage
//             : (currentPage as int),
//         total: total == _undefined || total == null
//             ? _instance.total
//             : (total as int),
//         lastPage: lastPage == _undefined || lastPage == null
//             ? _instance.lastPage
//             : (lastPage as int),
//         hasMorePages: hasMorePages == _undefined || hasMorePages == null
//             ? _instance.hasMorePages
//             : (hasMorePages as bool),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryPreviousGiftsgiftspaginatorInfo<TRes>
//     implements CopyWithQueryPreviousGiftsgiftspaginatorInfo<TRes> {
//   _CopyWithStubImplQueryPreviousGiftsgiftspaginatorInfo(this._res);
//
//   TRes _res;
//
//   call({
//     int? count,
//     int? currentPage,
//     int? total,
//     int? lastPage,
//     bool? hasMorePages,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryPreviousGiftsgiftsdata {
//   QueryPreviousGiftsgiftsdata({
//     this.id,
//     this.yougotagift_id,
//     this.yougotagift_status,
//     this.reference_number,
//     this.barcode,
//     this.gift_voucher_label,
//     this.gift_voucher_value,
//     this.expiry_date,
//     this.redemption_instructions,
//     this.egift_card_gift_verification_pin,
//     this.amount,
//     this.points,
//     this.$__typename = 'UserGift',
//   });
//
//   factory QueryPreviousGiftsgiftsdata.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$yougotagift_id = json['yougotagift_id'];
//     final l$yougotagift_status = json['yougotagift_status'];
//     final l$reference_number = json['reference_number'];
//     final l$barcode = json['barcode'];
//     final l$gift_voucher_label = json['gift_voucher_label'];
//     final l$gift_voucher_value = json['gift_voucher_value'];
//     final l$expiry_date = json['expiry_date'];
//     final l$redemption_instructions = json['redemption_instructions'];
//     final l$egift_card_gift_verification_pin =
//         json['egift_card_gift_verification_pin'];
//     final l$amount = json['amount'];
//     final l$points = json['points'];
//     final l$$__typename = json['__typename'];
//     return QueryPreviousGiftsgiftsdata(
//       id: (l$id as String?),
//       yougotagift_id: (l$yougotagift_id as int?),
//       yougotagift_status: (l$yougotagift_status as int?),
//       reference_number: (l$reference_number as String?),
//       barcode: (l$barcode as String?),
//       gift_voucher_label: (l$gift_voucher_label as String?),
//       gift_voucher_value: (l$gift_voucher_value as String?),
//       expiry_date: (l$expiry_date as String?),
//       redemption_instructions: (l$redemption_instructions as String?),
//       egift_card_gift_verification_pin:
//           (l$egift_card_gift_verification_pin as String?),
//       amount: (l$amount as num?)?.toDouble(),
//       points: (l$points as int?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String? id;
//
//   final int? yougotagift_id;
//
//   final int? yougotagift_status;
//
//   final String? reference_number;
//
//   final String? barcode;
//
//   final String? gift_voucher_label;
//
//   final String? gift_voucher_value;
//
//   final String? expiry_date;
//
//   final String? redemption_instructions;
//
//   final String? egift_card_gift_verification_pin;
//
//   final double? amount;
//
//   final int? points;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$yougotagift_id = yougotagift_id;
//     _resultData['yougotagift_id'] = l$yougotagift_id;
//     final l$yougotagift_status = yougotagift_status;
//     _resultData['yougotagift_status'] = l$yougotagift_status;
//     final l$reference_number = reference_number;
//     _resultData['reference_number'] = l$reference_number;
//     final l$barcode = barcode;
//     _resultData['barcode'] = l$barcode;
//     final l$gift_voucher_label = gift_voucher_label;
//     _resultData['gift_voucher_label'] = l$gift_voucher_label;
//     final l$gift_voucher_value = gift_voucher_value;
//     _resultData['gift_voucher_value'] = l$gift_voucher_value;
//     final l$expiry_date = expiry_date;
//     _resultData['expiry_date'] = l$expiry_date;
//     final l$redemption_instructions = redemption_instructions;
//     _resultData['redemption_instructions'] = l$redemption_instructions;
//     final l$egift_card_gift_verification_pin = egift_card_gift_verification_pin;
//     _resultData['egift_card_gift_verification_pin'] =
//         l$egift_card_gift_verification_pin;
//     final l$amount = amount;
//     _resultData['amount'] = l$amount;
//     final l$points = points;
//     _resultData['points'] = l$points;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$yougotagift_id = yougotagift_id;
//     final l$yougotagift_status = yougotagift_status;
//     final l$reference_number = reference_number;
//     final l$barcode = barcode;
//     final l$gift_voucher_label = gift_voucher_label;
//     final l$gift_voucher_value = gift_voucher_value;
//     final l$expiry_date = expiry_date;
//     final l$redemption_instructions = redemption_instructions;
//     final l$egift_card_gift_verification_pin = egift_card_gift_verification_pin;
//     final l$amount = amount;
//     final l$points = points;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$yougotagift_id,
//       l$yougotagift_status,
//       l$reference_number,
//       l$barcode,
//       l$gift_voucher_label,
//       l$gift_voucher_value,
//       l$expiry_date,
//       l$redemption_instructions,
//       l$egift_card_gift_verification_pin,
//       l$amount,
//       l$points,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryPreviousGiftsgiftsdata) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     final l$yougotagift_id = yougotagift_id;
//     final lOther$yougotagift_id = other.yougotagift_id;
//     if (l$yougotagift_id != lOther$yougotagift_id) {
//       return false;
//     }
//     final l$yougotagift_status = yougotagift_status;
//     final lOther$yougotagift_status = other.yougotagift_status;
//     if (l$yougotagift_status != lOther$yougotagift_status) {
//       return false;
//     }
//     final l$reference_number = reference_number;
//     final lOther$reference_number = other.reference_number;
//     if (l$reference_number != lOther$reference_number) {
//       return false;
//     }
//     final l$barcode = barcode;
//     final lOther$barcode = other.barcode;
//     if (l$barcode != lOther$barcode) {
//       return false;
//     }
//     final l$gift_voucher_label = gift_voucher_label;
//     final lOther$gift_voucher_label = other.gift_voucher_label;
//     if (l$gift_voucher_label != lOther$gift_voucher_label) {
//       return false;
//     }
//     final l$gift_voucher_value = gift_voucher_value;
//     final lOther$gift_voucher_value = other.gift_voucher_value;
//     if (l$gift_voucher_value != lOther$gift_voucher_value) {
//       return false;
//     }
//     final l$expiry_date = expiry_date;
//     final lOther$expiry_date = other.expiry_date;
//     if (l$expiry_date != lOther$expiry_date) {
//       return false;
//     }
//     final l$redemption_instructions = redemption_instructions;
//     final lOther$redemption_instructions = other.redemption_instructions;
//     if (l$redemption_instructions != lOther$redemption_instructions) {
//       return false;
//     }
//     final l$egift_card_gift_verification_pin = egift_card_gift_verification_pin;
//     final lOther$egift_card_gift_verification_pin =
//         other.egift_card_gift_verification_pin;
//     if (l$egift_card_gift_verification_pin !=
//         lOther$egift_card_gift_verification_pin) {
//       return false;
//     }
//     final l$amount = amount;
//     final lOther$amount = other.amount;
//     if (l$amount != lOther$amount) {
//       return false;
//     }
//     final l$points = points;
//     final lOther$points = other.points;
//     if (l$points != lOther$points) {
//       return false;
//     }
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionQueryPreviousGiftsgiftsdata
//     on QueryPreviousGiftsgiftsdata {
//   CopyWithQueryPreviousGiftsgiftsdata<QueryPreviousGiftsgiftsdata>
//       get copyWith => CopyWithQueryPreviousGiftsgiftsdata(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryPreviousGiftsgiftsdata<TRes> {
//   factory CopyWithQueryPreviousGiftsgiftsdata(
//     QueryPreviousGiftsgiftsdata instance,
//     TRes Function(QueryPreviousGiftsgiftsdata) then,
//   ) = _CopyWithImplQueryPreviousGiftsgiftsdata;
//
//   factory CopyWithQueryPreviousGiftsgiftsdata.stub(TRes res) =
//       _CopyWithStubImplQueryPreviousGiftsgiftsdata;
//
//   TRes call({
//     String? id,
//     int? yougotagift_id,
//     int? yougotagift_status,
//     String? reference_number,
//     String? barcode,
//     String? gift_voucher_label,
//     String? gift_voucher_value,
//     String? expiry_date,
//     String? redemption_instructions,
//     String? egift_card_gift_verification_pin,
//     double? amount,
//     int? points,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryPreviousGiftsgiftsdata<TRes>
//     implements CopyWithQueryPreviousGiftsgiftsdata<TRes> {
//   _CopyWithImplQueryPreviousGiftsgiftsdata(
//     this._instance,
//     this._then,
//   );
//
//   final QueryPreviousGiftsgiftsdata _instance;
//
//   final TRes Function(QueryPreviousGiftsgiftsdata) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? yougotagift_id = _undefined,
//     Object? yougotagift_status = _undefined,
//     Object? reference_number = _undefined,
//     Object? barcode = _undefined,
//     Object? gift_voucher_label = _undefined,
//     Object? gift_voucher_value = _undefined,
//     Object? expiry_date = _undefined,
//     Object? redemption_instructions = _undefined,
//     Object? egift_card_gift_verification_pin = _undefined,
//     Object? amount = _undefined,
//     Object? points = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryPreviousGiftsgiftsdata(
//         id: id == _undefined ? _instance.id : (id as String?),
//         yougotagift_id: yougotagift_id == _undefined
//             ? _instance.yougotagift_id
//             : (yougotagift_id as int?),
//         yougotagift_status: yougotagift_status == _undefined
//             ? _instance.yougotagift_status
//             : (yougotagift_status as int?),
//         reference_number: reference_number == _undefined
//             ? _instance.reference_number
//             : (reference_number as String?),
//         barcode:
//             barcode == _undefined ? _instance.barcode : (barcode as String?),
//         gift_voucher_label: gift_voucher_label == _undefined
//             ? _instance.gift_voucher_label
//             : (gift_voucher_label as String?),
//         gift_voucher_value: gift_voucher_value == _undefined
//             ? _instance.gift_voucher_value
//             : (gift_voucher_value as String?),
//         expiry_date: expiry_date == _undefined
//             ? _instance.expiry_date
//             : (expiry_date as String?),
//         redemption_instructions: redemption_instructions == _undefined
//             ? _instance.redemption_instructions
//             : (redemption_instructions as String?),
//         egift_card_gift_verification_pin:
//             egift_card_gift_verification_pin == _undefined
//                 ? _instance.egift_card_gift_verification_pin
//                 : (egift_card_gift_verification_pin as String?),
//         amount: amount == _undefined ? _instance.amount : (amount as double?),
//         points: points == _undefined ? _instance.points : (points as int?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryPreviousGiftsgiftsdata<TRes>
//     implements CopyWithQueryPreviousGiftsgiftsdata<TRes> {
//   _CopyWithStubImplQueryPreviousGiftsgiftsdata(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     int? yougotagift_id,
//     int? yougotagift_status,
//     String? reference_number,
//     String? barcode,
//     String? gift_voucher_label,
//     String? gift_voucher_value,
//     String? expiry_date,
//     String? redemption_instructions,
//     String? egift_card_gift_verification_pin,
//     double? amount,
//     int? points,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryNumberPoints {
//   QueryNumberPoints({
//     required this.aboutUs,
//     this.$__typename = 'Query',
//   });
//
//   factory QueryNumberPoints.fromJson(Map<String, dynamic> json) {
//     final l$aboutUs = json['aboutUs'];
//     final l$$__typename = json['__typename'];
//     return QueryNumberPoints(
//       aboutUs: QueryNumberPointsaboutUs.fromJson(
//           (l$aboutUs as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryNumberPointsaboutUs aboutUs;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$aboutUs = aboutUs;
//     _resultData['aboutUs'] = l$aboutUs.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$aboutUs = aboutUs;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$aboutUs,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryNumberPoints) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$aboutUs = aboutUs;
//     final lOther$aboutUs = other.aboutUs;
//     if (l$aboutUs != lOther$aboutUs) {
//       return false;
//     }
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionQueryNumberPoints on QueryNumberPoints {
//   CopyWithQueryNumberPoints<QueryNumberPoints> get copyWith =>
//       CopyWithQueryNumberPoints(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryNumberPoints<TRes> {
//   factory CopyWithQueryNumberPoints(
//     QueryNumberPoints instance,
//     TRes Function(QueryNumberPoints) then,
//   ) = _CopyWithImplQueryNumberPoints;
//
//   factory CopyWithQueryNumberPoints.stub(TRes res) =
//       _CopyWithStubImplQueryNumberPoints;
//
//   TRes call({
//     QueryNumberPointsaboutUs? aboutUs,
//     String? $__typename,
//   });
//   CopyWithQueryNumberPointsaboutUs<TRes> get aboutUs;
// }
//
// class _CopyWithImplQueryNumberPoints<TRes>
//     implements CopyWithQueryNumberPoints<TRes> {
//   _CopyWithImplQueryNumberPoints(
//     this._instance,
//     this._then,
//   );
//
//   final QueryNumberPoints _instance;
//
//   final TRes Function(QueryNumberPoints) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? aboutUs = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryNumberPoints(
//         aboutUs: aboutUs == _undefined || aboutUs == null
//             ? _instance.aboutUs
//             : (aboutUs as QueryNumberPointsaboutUs),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryNumberPointsaboutUs<TRes> get aboutUs {
//     final local$aboutUs = _instance.aboutUs;
//     return CopyWithQueryNumberPointsaboutUs(
//         local$aboutUs, (e) => call(aboutUs: e));
//   }
// }
//
// class _CopyWithStubImplQueryNumberPoints<TRes>
//     implements CopyWithQueryNumberPoints<TRes> {
//   _CopyWithStubImplQueryNumberPoints(this._res);
//
//   TRes _res;
//
//   call({
//     QueryNumberPointsaboutUs? aboutUs,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryNumberPointsaboutUs<TRes> get aboutUs =>
//       CopyWithQueryNumberPointsaboutUs.stub(_res);
// }
//
// const documentNodeQueryNumberPoints = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.query,
//     name: NameNode(value: 'NumberPoints'),
//     variableDefinitions: [],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'aboutUs'),
//         alias: null,
//         arguments: [],
//         directives: [],
//         selectionSet: SelectionSetNode(selections: [
//           FieldNode(
//             name: NameNode(value: 'number_point'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: '__typename'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//         ]),
//       ),
//       FieldNode(
//         name: NameNode(value: '__typename'),
//         alias: null,
//         arguments: [],
//         directives: [],
//         selectionSet: null,
//       ),
//     ]),
//   ),
// ]);
// QueryNumberPoints _parserFnQueryNumberPoints(Map<String, dynamic> data) =>
//     QueryNumberPoints.fromJson(data);
// typedef OnQueryCompleteQueryNumberPoints = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   QueryNumberPoints?,
// );
//
// class OptionsQueryNumberPoints extends graphql.QueryOptions<QueryNumberPoints> {
//   OptionsQueryNumberPoints({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryNumberPoints? typedOptimisticResult,
//     Duration? pollInterval,
//     graphql.Context? context,
//     OnQueryCompleteQueryNumberPoints? onComplete,
//     graphql.OnQueryError? onError,
//   })  : onCompleteWithParsed = onComplete,
//         super(
//           operationName: operationName,
//           fetchPolicy: fetchPolicy,
//           errorPolicy: errorPolicy,
//           cacheRereadPolicy: cacheRereadPolicy,
//           optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//           pollInterval: pollInterval,
//           context: context,
//           onComplete: onComplete == null
//               ? null
//               : (data) => onComplete(
//                     data,
//                     data == null ? null : _parserFnQueryNumberPoints(data),
//                   ),
//           onError: onError,
//           document: documentNodeQueryNumberPoints,
//           parserFn: _parserFnQueryNumberPoints,
//         );
//
//   final OnQueryCompleteQueryNumberPoints? onCompleteWithParsed;
//
//   @override
//   List<Object?> get properties => [
//         ...super.onComplete == null
//             ? super.properties
//             : super.properties.where((property) => property != onComplete),
//         onCompleteWithParsed,
//       ];
// }
//
// class WatchOptionsQueryNumberPoints
//     extends graphql.WatchQueryOptions<QueryNumberPoints> {
//   WatchOptionsQueryNumberPoints({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryNumberPoints? typedOptimisticResult,
//     graphql.Context? context,
//     Duration? pollInterval,
//     bool? eagerlyFetchResults,
//     bool carryForwardDataOnException = true,
//     bool fetchResults = false,
//   }) : super(
//           operationName: operationName,
//           fetchPolicy: fetchPolicy,
//           errorPolicy: errorPolicy,
//           cacheRereadPolicy: cacheRereadPolicy,
//           optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//           context: context,
//           document: documentNodeQueryNumberPoints,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnQueryNumberPoints,
//         );
// }
//
// class FetchMoreOptionsQueryNumberPoints extends graphql.FetchMoreOptions {
//   FetchMoreOptionsQueryNumberPoints({required graphql.UpdateQuery updateQuery})
//       : super(
//           updateQuery: updateQuery,
//           document: documentNodeQueryNumberPoints,
//         );
// }
//
// extension ClientExtensionQueryNumberPoints on graphql.GraphQLClient {
//   Future<graphql.QueryResult<QueryNumberPoints>> queryNumberPoints(
//           [OptionsQueryNumberPoints? options]) async =>
//       await this.query(options ?? OptionsQueryNumberPoints());
//   graphql.ObservableQuery<QueryNumberPoints> watchQueryNumberPoints(
//           [WatchOptionsQueryNumberPoints? options]) =>
//       this.watchQuery(options ?? WatchOptionsQueryNumberPoints());
//   void writeQueryNumberPoints({
//     required QueryNumberPoints data,
//     bool broadcast = true,
//   }) =>
//       this.writeQuery(
//         graphql.Request(
//             operation:
//                 graphql.Operation(document: documentNodeQueryNumberPoints)),
//         data: data.toJson(),
//         broadcast: broadcast,
//       );
//   QueryNumberPoints? readQueryNumberPoints({bool optimistic = true}) {
//     final result = this.readQuery(
//       graphql.Request(
//           operation:
//               graphql.Operation(document: documentNodeQueryNumberPoints)),
//       optimistic: optimistic,
//     );
//     return result == null ? null : QueryNumberPoints.fromJson(result);
//   }
// }
//
// graphql_flutter.QueryHookResult<QueryNumberPoints> useQueryNumberPoints(
//         [OptionsQueryNumberPoints? options]) =>
//     graphql_flutter.useQuery(options ?? OptionsQueryNumberPoints());
// graphql.ObservableQuery<QueryNumberPoints> useWatchQueryNumberPoints(
//         [WatchOptionsQueryNumberPoints? options]) =>
//     graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryNumberPoints());
//
// class QueryNumberPointsWidget extends graphql_flutter.Query<QueryNumberPoints> {
//   QueryNumberPointsWidget({
//     widgets.Key? key,
//     OptionsQueryNumberPoints? options,
//     required graphql_flutter.QueryBuilder<QueryNumberPoints> builder,
//   }) : super(
//           key: key,
//           options: options ?? OptionsQueryNumberPoints(),
//           builder: builder,
//         );
// }
//
// class QueryNumberPointsaboutUs {
//   QueryNumberPointsaboutUs({
//     this.number_point,
//     this.$__typename = 'Setting',
//   });
//
//   factory QueryNumberPointsaboutUs.fromJson(Map<String, dynamic> json) {
//     final l$number_point = json['number_point'];
//     final l$$__typename = json['__typename'];
//     return QueryNumberPointsaboutUs(
//       number_point: (l$number_point as num?)?.toDouble(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final double? number_point;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$number_point = number_point;
//     _resultData['number_point'] = l$number_point;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$number_point = number_point;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$number_point,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryNumberPointsaboutUs) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$number_point = number_point;
//     final lOther$number_point = other.number_point;
//     if (l$number_point != lOther$number_point) {
//       return false;
//     }
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionQueryNumberPointsaboutUs on QueryNumberPointsaboutUs {
//   CopyWithQueryNumberPointsaboutUs<QueryNumberPointsaboutUs> get copyWith =>
//       CopyWithQueryNumberPointsaboutUs(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryNumberPointsaboutUs<TRes> {
//   factory CopyWithQueryNumberPointsaboutUs(
//     QueryNumberPointsaboutUs instance,
//     TRes Function(QueryNumberPointsaboutUs) then,
//   ) = _CopyWithImplQueryNumberPointsaboutUs;
//
//   factory CopyWithQueryNumberPointsaboutUs.stub(TRes res) =
//       _CopyWithStubImplQueryNumberPointsaboutUs;
//
//   TRes call({
//     double? number_point,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryNumberPointsaboutUs<TRes>
//     implements CopyWithQueryNumberPointsaboutUs<TRes> {
//   _CopyWithImplQueryNumberPointsaboutUs(
//     this._instance,
//     this._then,
//   );
//
//   final QueryNumberPointsaboutUs _instance;
//
//   final TRes Function(QueryNumberPointsaboutUs) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? number_point = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryNumberPointsaboutUs(
//         number_point: number_point == _undefined
//             ? _instance.number_point
//             : (number_point as double?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryNumberPointsaboutUs<TRes>
//     implements CopyWithQueryNumberPointsaboutUs<TRes> {
//   _CopyWithStubImplQueryNumberPointsaboutUs(this._res);
//
//   TRes _res;
//
//   call({
//     double? number_point,
//     String? $__typename,
//   }) =>
//       _res;
// }
