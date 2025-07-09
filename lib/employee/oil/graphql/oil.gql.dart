// import 'dart:async';
// import 'package:flutter/widgets.dart' as widgets;
// import 'package:gql/ast.dart';
// import 'package:graphql/client.dart' as graphql;
// import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
//
// class QueryCarBrands {
//   QueryCarBrands({
//     required this.car_brands,
//     this.$__typename = 'Query',
//   });
//
//   factory QueryCarBrands.fromJson(Map<String, dynamic> json) {
//     final l$car_brands = json['car_brands'];
//     final l$$__typename = json['__typename'];
//     return QueryCarBrands(
//       car_brands: (l$car_brands as List<dynamic>)
//           .map((e) =>
//               QueryCarBrandscar_brands.fromJson((e as Map<String, dynamic>)))
//           .toList(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final List<QueryCarBrandscar_brands> car_brands;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$car_brands = car_brands;
//     _resultData['car_brands'] = l$car_brands.map((e) => e.toJson()).toList();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$car_brands = car_brands;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       Object.hashAll(l$car_brands.map((v) => v)),
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCarBrands) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$car_brands = car_brands;
//     final lOther$car_brands = other.car_brands;
//     if (l$car_brands.length != lOther$car_brands.length) {
//       return false;
//     }
//     for (int i = 0; i < l$car_brands.length; i++) {
//       final l$car_brands$entry = l$car_brands[i];
//       final lOther$car_brands$entry = lOther$car_brands[i];
//       if (l$car_brands$entry != lOther$car_brands$entry) {
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
// extension UtilityExtensionQueryCarBrands on QueryCarBrands {
//   CopyWithQueryCarBrands<QueryCarBrands> get copyWith => CopyWithQueryCarBrands(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryCarBrands<TRes> {
//   factory CopyWithQueryCarBrands(
//     QueryCarBrands instance,
//     TRes Function(QueryCarBrands) then,
//   ) = _CopyWithImplQueryCarBrands;
//
//   factory CopyWithQueryCarBrands.stub(TRes res) =
//       _CopyWithStubImplQueryCarBrands;
//
//   TRes call({
//     List<QueryCarBrandscar_brands>? car_brands,
//     String? $__typename,
//   });
//   TRes car_brands(
//       Iterable<QueryCarBrandscar_brands> Function(
//               Iterable<
//                   CopyWithQueryCarBrandscar_brands<QueryCarBrandscar_brands>>)
//           _fn);
// }
//
// class _CopyWithImplQueryCarBrands<TRes>
//     implements CopyWithQueryCarBrands<TRes> {
//   _CopyWithImplQueryCarBrands(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarBrands _instance;
//
//   final TRes Function(QueryCarBrands) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? car_brands = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarBrands(
//         car_brands: car_brands == _undefined || car_brands == null
//             ? _instance.car_brands
//             : (car_brands as List<QueryCarBrandscar_brands>),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   TRes car_brands(
//           Iterable<QueryCarBrandscar_brands> Function(
//                   Iterable<
//                       CopyWithQueryCarBrandscar_brands<
//                           QueryCarBrandscar_brands>>)
//               _fn) =>
//       call(
//           car_brands: _fn(
//               _instance.car_brands.map((e) => CopyWithQueryCarBrandscar_brands(
//                     e,
//                     (i) => i,
//                   ))).toList());
// }
//
// class _CopyWithStubImplQueryCarBrands<TRes>
//     implements CopyWithQueryCarBrands<TRes> {
//   _CopyWithStubImplQueryCarBrands(this._res);
//
//   TRes _res;
//
//   call({
//     List<QueryCarBrandscar_brands>? car_brands,
//     String? $__typename,
//   }) =>
//       _res;
//
//   car_brands(_fn) => _res;
// }
//
// const documentNodeQueryCarBrands = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.query,
//     name: NameNode(value: 'CarBrands'),
//     variableDefinitions: [],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'car_brands'),
//         alias: null,
//         arguments: [],
//         directives: [],
//         selectionSet: SelectionSetNode(selections: [
//           FieldNode(
//             name: NameNode(value: 'id'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'title'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'image_path'),
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
// QueryCarBrands _parserFnQueryCarBrands(Map<String, dynamic> data) =>
//     QueryCarBrands.fromJson(data);
// typedef OnQueryCompleteQueryCarBrands = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   QueryCarBrands?,
// );
//
// class OptionsQueryCarBrands extends graphql.QueryOptions<QueryCarBrands> {
//   OptionsQueryCarBrands({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryCarBrands? typedOptimisticResult,
//     Duration? pollInterval,
//     graphql.Context? context,
//     OnQueryCompleteQueryCarBrands? onComplete,
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
//                     data == null ? null : _parserFnQueryCarBrands(data),
//                   ),
//           onError: onError,
//           document: documentNodeQueryCarBrands,
//           parserFn: _parserFnQueryCarBrands,
//         );
//
//   final OnQueryCompleteQueryCarBrands? onCompleteWithParsed;
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
// class WatchOptionsQueryCarBrands
//     extends graphql.WatchQueryOptions<QueryCarBrands> {
//   WatchOptionsQueryCarBrands({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryCarBrands? typedOptimisticResult,
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
//           document: documentNodeQueryCarBrands,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnQueryCarBrands,
//         );
// }
//
// class FetchMoreOptionsQueryCarBrands extends graphql.FetchMoreOptions {
//   FetchMoreOptionsQueryCarBrands({required graphql.UpdateQuery updateQuery})
//       : super(
//           updateQuery: updateQuery,
//           document: documentNodeQueryCarBrands,
//         );
// }
//
// extension ClientExtensionQueryCarBrands on graphql.GraphQLClient {
//   Future<graphql.QueryResult<QueryCarBrands>> queryCarBrands(
//           [OptionsQueryCarBrands? options]) async =>
//       await this.query(options ?? OptionsQueryCarBrands());
//   graphql.ObservableQuery<QueryCarBrands> watchQueryCarBrands(
//           [WatchOptionsQueryCarBrands? options]) =>
//       this.watchQuery(options ?? WatchOptionsQueryCarBrands());
//   void writeQueryCarBrands({
//     required QueryCarBrands data,
//     bool broadcast = true,
//   }) =>
//       this.writeQuery(
//         graphql.Request(
//             operation: graphql.Operation(document: documentNodeQueryCarBrands)),
//         data: data.toJson(),
//         broadcast: broadcast,
//       );
//   QueryCarBrands? readQueryCarBrands({bool optimistic = true}) {
//     final result = this.readQuery(
//       graphql.Request(
//           operation: graphql.Operation(document: documentNodeQueryCarBrands)),
//       optimistic: optimistic,
//     );
//     return result == null ? null : QueryCarBrands.fromJson(result);
//   }
// }
//
// graphql_flutter.QueryHookResult<QueryCarBrands> useQueryCarBrands(
//         [OptionsQueryCarBrands? options]) =>
//     graphql_flutter.useQuery(options ?? OptionsQueryCarBrands());
// graphql.ObservableQuery<QueryCarBrands> useWatchQueryCarBrands(
//         [WatchOptionsQueryCarBrands? options]) =>
//     graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryCarBrands());
//
// class QueryCarBrandsWidget extends graphql_flutter.Query<QueryCarBrands> {
//   QueryCarBrandsWidget({
//     widgets.Key? key,
//     OptionsQueryCarBrands? options,
//     required graphql_flutter.QueryBuilder<QueryCarBrands> builder,
//   }) : super(
//           key: key,
//           options: options ?? OptionsQueryCarBrands(),
//           builder: builder,
//         );
// }
//
// class QueryCarBrandscar_brands {
//   QueryCarBrandscar_brands({
//     required this.id,
//     required this.title,
//     this.image_path,
//     this.$__typename = 'CarBrand',
//   });
//
//   factory QueryCarBrandscar_brands.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$image_path = json['image_path'];
//     final l$$__typename = json['__typename'];
//     return QueryCarBrandscar_brands(
//       id: (l$id as String),
//       title: (l$title as String),
//       image_path: (l$image_path as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String title;
//
//   final String? image_path;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$title = title;
//     _resultData['title'] = l$title;
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$title = title;
//     final l$image_path = image_path;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$image_path,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCarBrandscar_brands) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     final l$title = title;
//     final lOther$title = other.title;
//     if (l$title != lOther$title) {
//       return false;
//     }
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
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
// extension UtilityExtensionQueryCarBrandscar_brands on QueryCarBrandscar_brands {
//   CopyWithQueryCarBrandscar_brands<QueryCarBrandscar_brands> get copyWith =>
//       CopyWithQueryCarBrandscar_brands(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryCarBrandscar_brands<TRes> {
//   factory CopyWithQueryCarBrandscar_brands(
//     QueryCarBrandscar_brands instance,
//     TRes Function(QueryCarBrandscar_brands) then,
//   ) = _CopyWithImplQueryCarBrandscar_brands;
//
//   factory CopyWithQueryCarBrandscar_brands.stub(TRes res) =
//       _CopyWithStubImplQueryCarBrandscar_brands;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? image_path,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryCarBrandscar_brands<TRes>
//     implements CopyWithQueryCarBrandscar_brands<TRes> {
//   _CopyWithImplQueryCarBrandscar_brands(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarBrandscar_brands _instance;
//
//   final TRes Function(QueryCarBrandscar_brands) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? image_path = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarBrandscar_brands(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined || title == null
//             ? _instance.title
//             : (title as String),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryCarBrandscar_brands<TRes>
//     implements CopyWithQueryCarBrandscar_brands<TRes> {
//   _CopyWithStubImplQueryCarBrandscar_brands(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     String? image_path,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesQueryCarModels {
//   factory VariablesQueryCarModels({required int brandId}) =>
//       VariablesQueryCarModels._({
//         r'brandId': brandId,
//       });
//
//   VariablesQueryCarModels._(this._$data);
//
//   factory VariablesQueryCarModels.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$brandId = data['brandId'];
//     result$data['brandId'] = (l$brandId as int);
//     return VariablesQueryCarModels._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   int get brandId => (_$data['brandId'] as int);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$brandId = brandId;
//     result$data['brandId'] = l$brandId;
//     return result$data;
//   }
//
//   CopyWithVariablesQueryCarModels<VariablesQueryCarModels> get copyWith =>
//       CopyWithVariablesQueryCarModels(
//         this,
//         (i) => i,
//       );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesQueryCarModels) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$brandId = brandId;
//     final lOther$brandId = other.brandId;
//     if (l$brandId != lOther$brandId) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$brandId = brandId;
//     return Object.hashAll([l$brandId]);
//   }
// }
//
// abstract class CopyWithVariablesQueryCarModels<TRes> {
//   factory CopyWithVariablesQueryCarModels(
//     VariablesQueryCarModels instance,
//     TRes Function(VariablesQueryCarModels) then,
//   ) = _CopyWithImplVariablesQueryCarModels;
//
//   factory CopyWithVariablesQueryCarModels.stub(TRes res) =
//       _CopyWithStubImplVariablesQueryCarModels;
//
//   TRes call({int? brandId});
// }
//
// class _CopyWithImplVariablesQueryCarModels<TRes>
//     implements CopyWithVariablesQueryCarModels<TRes> {
//   _CopyWithImplVariablesQueryCarModels(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesQueryCarModels _instance;
//
//   final TRes Function(VariablesQueryCarModels) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? brandId = _undefined}) => _then(VariablesQueryCarModels._({
//         ..._instance._$data,
//         if (brandId != _undefined && brandId != null)
//           'brandId': (brandId as int),
//       }));
// }
//
// class _CopyWithStubImplVariablesQueryCarModels<TRes>
//     implements CopyWithVariablesQueryCarModels<TRes> {
//   _CopyWithStubImplVariablesQueryCarModels(this._res);
//
//   TRes _res;
//
//   call({int? brandId}) => _res;
// }
//
// class QueryCarModels {
//   QueryCarModels({
//     required this.car_models,
//     this.$__typename = 'Query',
//   });
//
//   factory QueryCarModels.fromJson(Map<String, dynamic> json) {
//     final l$car_models = json['car_models'];
//     final l$$__typename = json['__typename'];
//     return QueryCarModels(
//       car_models: (l$car_models as List<dynamic>)
//           .map((e) =>
//               QueryCarModelscar_models.fromJson((e as Map<String, dynamic>)))
//           .toList(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final List<QueryCarModelscar_models> car_models;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$car_models = car_models;
//     _resultData['car_models'] = l$car_models.map((e) => e.toJson()).toList();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$car_models = car_models;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       Object.hashAll(l$car_models.map((v) => v)),
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCarModels) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$car_models = car_models;
//     final lOther$car_models = other.car_models;
//     if (l$car_models.length != lOther$car_models.length) {
//       return false;
//     }
//     for (int i = 0; i < l$car_models.length; i++) {
//       final l$car_models$entry = l$car_models[i];
//       final lOther$car_models$entry = lOther$car_models[i];
//       if (l$car_models$entry != lOther$car_models$entry) {
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
// extension UtilityExtensionQueryCarModels on QueryCarModels {
//   CopyWithQueryCarModels<QueryCarModels> get copyWith => CopyWithQueryCarModels(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryCarModels<TRes> {
//   factory CopyWithQueryCarModels(
//     QueryCarModels instance,
//     TRes Function(QueryCarModels) then,
//   ) = _CopyWithImplQueryCarModels;
//
//   factory CopyWithQueryCarModels.stub(TRes res) =
//       _CopyWithStubImplQueryCarModels;
//
//   TRes call({
//     List<QueryCarModelscar_models>? car_models,
//     String? $__typename,
//   });
//   TRes car_models(
//       Iterable<QueryCarModelscar_models> Function(
//               Iterable<
//                   CopyWithQueryCarModelscar_models<QueryCarModelscar_models>>)
//           _fn);
// }
//
// class _CopyWithImplQueryCarModels<TRes>
//     implements CopyWithQueryCarModels<TRes> {
//   _CopyWithImplQueryCarModels(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarModels _instance;
//
//   final TRes Function(QueryCarModels) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? car_models = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarModels(
//         car_models: car_models == _undefined || car_models == null
//             ? _instance.car_models
//             : (car_models as List<QueryCarModelscar_models>),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   TRes car_models(
//           Iterable<QueryCarModelscar_models> Function(
//                   Iterable<
//                       CopyWithQueryCarModelscar_models<
//                           QueryCarModelscar_models>>)
//               _fn) =>
//       call(
//           car_models: _fn(
//               _instance.car_models.map((e) => CopyWithQueryCarModelscar_models(
//                     e,
//                     (i) => i,
//                   ))).toList());
// }
//
// class _CopyWithStubImplQueryCarModels<TRes>
//     implements CopyWithQueryCarModels<TRes> {
//   _CopyWithStubImplQueryCarModels(this._res);
//
//   TRes _res;
//
//   call({
//     List<QueryCarModelscar_models>? car_models,
//     String? $__typename,
//   }) =>
//       _res;
//
//   car_models(_fn) => _res;
// }
//
// const documentNodeQueryCarModels = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.query,
//     name: NameNode(value: 'CarModels'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'brandId')),
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
//         name: NameNode(value: 'car_models'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'car_brand_id'),
//             value: VariableNode(name: NameNode(value: 'brandId')),
//           )
//         ],
//         directives: [],
//         selectionSet: SelectionSetNode(selections: [
//           FieldNode(
//             name: NameNode(value: 'id'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'title'),
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
// QueryCarModels _parserFnQueryCarModels(Map<String, dynamic> data) =>
//     QueryCarModels.fromJson(data);
// typedef OnQueryCompleteQueryCarModels = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   QueryCarModels?,
// );
//
// class OptionsQueryCarModels extends graphql.QueryOptions<QueryCarModels> {
//   OptionsQueryCarModels({
//     String? operationName,
//     required VariablesQueryCarModels variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryCarModels? typedOptimisticResult,
//     Duration? pollInterval,
//     graphql.Context? context,
//     OnQueryCompleteQueryCarModels? onComplete,
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
//                     data == null ? null : _parserFnQueryCarModels(data),
//                   ),
//           onError: onError,
//           document: documentNodeQueryCarModels,
//           parserFn: _parserFnQueryCarModels,
//         );
//
//   final OnQueryCompleteQueryCarModels? onCompleteWithParsed;
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
// class WatchOptionsQueryCarModels
//     extends graphql.WatchQueryOptions<QueryCarModels> {
//   WatchOptionsQueryCarModels({
//     String? operationName,
//     required VariablesQueryCarModels variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryCarModels? typedOptimisticResult,
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
//           document: documentNodeQueryCarModels,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnQueryCarModels,
//         );
// }
//
// class FetchMoreOptionsQueryCarModels extends graphql.FetchMoreOptions {
//   FetchMoreOptionsQueryCarModels({
//     required graphql.UpdateQuery updateQuery,
//     required VariablesQueryCarModels variables,
//   }) : super(
//           updateQuery: updateQuery,
//           variables: variables.toJson(),
//           document: documentNodeQueryCarModels,
//         );
// }
//
// extension ClientExtensionQueryCarModels on graphql.GraphQLClient {
//   Future<graphql.QueryResult<QueryCarModels>> queryCarModels(
//           OptionsQueryCarModels options) async =>
//       await this.query(options);
//   graphql.ObservableQuery<QueryCarModels> watchQueryCarModels(
//           WatchOptionsQueryCarModels options) =>
//       this.watchQuery(options);
//   void writeQueryCarModels({
//     required QueryCarModels data,
//     required VariablesQueryCarModels variables,
//     bool broadcast = true,
//   }) =>
//       this.writeQuery(
//         graphql.Request(
//           operation: graphql.Operation(document: documentNodeQueryCarModels),
//           variables: variables.toJson(),
//         ),
//         data: data.toJson(),
//         broadcast: broadcast,
//       );
//   QueryCarModels? readQueryCarModels({
//     required VariablesQueryCarModels variables,
//     bool optimistic = true,
//   }) {
//     final result = this.readQuery(
//       graphql.Request(
//         operation: graphql.Operation(document: documentNodeQueryCarModels),
//         variables: variables.toJson(),
//       ),
//       optimistic: optimistic,
//     );
//     return result == null ? null : QueryCarModels.fromJson(result);
//   }
// }
//
// graphql_flutter.QueryHookResult<QueryCarModels> useQueryCarModels(
//         OptionsQueryCarModels options) =>
//     graphql_flutter.useQuery(options);
// graphql.ObservableQuery<QueryCarModels> useWatchQueryCarModels(
//         WatchOptionsQueryCarModels options) =>
//     graphql_flutter.useWatchQuery(options);
//
// class QueryCarModelsWidget extends graphql_flutter.Query<QueryCarModels> {
//   QueryCarModelsWidget({
//     widgets.Key? key,
//     required OptionsQueryCarModels options,
//     required graphql_flutter.QueryBuilder<QueryCarModels> builder,
//   }) : super(
//           key: key,
//           options: options,
//           builder: builder,
//         );
// }
//
// class QueryCarModelscar_models {
//   QueryCarModelscar_models({
//     required this.id,
//     required this.title,
//     this.$__typename = 'CarModel',
//   });
//
//   factory QueryCarModelscar_models.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$$__typename = json['__typename'];
//     return QueryCarModelscar_models(
//       id: (l$id as String),
//       title: (l$title as String),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String title;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$title = title;
//     _resultData['title'] = l$title;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$title = title;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCarModelscar_models) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     final l$title = title;
//     final lOther$title = other.title;
//     if (l$title != lOther$title) {
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
// extension UtilityExtensionQueryCarModelscar_models on QueryCarModelscar_models {
//   CopyWithQueryCarModelscar_models<QueryCarModelscar_models> get copyWith =>
//       CopyWithQueryCarModelscar_models(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryCarModelscar_models<TRes> {
//   factory CopyWithQueryCarModelscar_models(
//     QueryCarModelscar_models instance,
//     TRes Function(QueryCarModelscar_models) then,
//   ) = _CopyWithImplQueryCarModelscar_models;
//
//   factory CopyWithQueryCarModelscar_models.stub(TRes res) =
//       _CopyWithStubImplQueryCarModelscar_models;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryCarModelscar_models<TRes>
//     implements CopyWithQueryCarModelscar_models<TRes> {
//   _CopyWithImplQueryCarModelscar_models(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarModelscar_models _instance;
//
//   final TRes Function(QueryCarModelscar_models) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarModelscar_models(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined || title == null
//             ? _instance.title
//             : (title as String),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryCarModelscar_models<TRes>
//     implements CopyWithQueryCarModelscar_models<TRes> {
//   _CopyWithStubImplQueryCarModelscar_models(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryCarYears {
//   QueryCarYears({
//     required this.car_years,
//     this.$__typename = 'Query',
//   });
//
//   factory QueryCarYears.fromJson(Map<String, dynamic> json) {
//     final l$car_years = json['car_years'];
//     final l$$__typename = json['__typename'];
//     return QueryCarYears(
//       car_years: (l$car_years as List<dynamic>)
//           .map((e) =>
//               QueryCarYearscar_years.fromJson((e as Map<String, dynamic>)))
//           .toList(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final List<QueryCarYearscar_years> car_years;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$car_years = car_years;
//     _resultData['car_years'] = l$car_years.map((e) => e.toJson()).toList();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$car_years = car_years;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       Object.hashAll(l$car_years.map((v) => v)),
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCarYears) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$car_years = car_years;
//     final lOther$car_years = other.car_years;
//     if (l$car_years.length != lOther$car_years.length) {
//       return false;
//     }
//     for (int i = 0; i < l$car_years.length; i++) {
//       final l$car_years$entry = l$car_years[i];
//       final lOther$car_years$entry = lOther$car_years[i];
//       if (l$car_years$entry != lOther$car_years$entry) {
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
// extension UtilityExtensionQueryCarYears on QueryCarYears {
//   CopyWithQueryCarYears<QueryCarYears> get copyWith => CopyWithQueryCarYears(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryCarYears<TRes> {
//   factory CopyWithQueryCarYears(
//     QueryCarYears instance,
//     TRes Function(QueryCarYears) then,
//   ) = _CopyWithImplQueryCarYears;
//
//   factory CopyWithQueryCarYears.stub(TRes res) = _CopyWithStubImplQueryCarYears;
//
//   TRes call({
//     List<QueryCarYearscar_years>? car_years,
//     String? $__typename,
//   });
//   TRes car_years(
//       Iterable<QueryCarYearscar_years> Function(
//               Iterable<CopyWithQueryCarYearscar_years<QueryCarYearscar_years>>)
//           _fn);
// }
//
// class _CopyWithImplQueryCarYears<TRes> implements CopyWithQueryCarYears<TRes> {
//   _CopyWithImplQueryCarYears(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarYears _instance;
//
//   final TRes Function(QueryCarYears) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? car_years = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarYears(
//         car_years: car_years == _undefined || car_years == null
//             ? _instance.car_years
//             : (car_years as List<QueryCarYearscar_years>),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   TRes car_years(
//           Iterable<QueryCarYearscar_years> Function(
//                   Iterable<
//                       CopyWithQueryCarYearscar_years<QueryCarYearscar_years>>)
//               _fn) =>
//       call(
//           car_years:
//               _fn(_instance.car_years.map((e) => CopyWithQueryCarYearscar_years(
//                     e,
//                     (i) => i,
//                   ))).toList());
// }
//
// class _CopyWithStubImplQueryCarYears<TRes>
//     implements CopyWithQueryCarYears<TRes> {
//   _CopyWithStubImplQueryCarYears(this._res);
//
//   TRes _res;
//
//   call({
//     List<QueryCarYearscar_years>? car_years,
//     String? $__typename,
//   }) =>
//       _res;
//
//   car_years(_fn) => _res;
// }
//
// const documentNodeQueryCarYears = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.query,
//     name: NameNode(value: 'CarYears'),
//     variableDefinitions: [],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'car_years'),
//         alias: null,
//         arguments: [],
//         directives: [],
//         selectionSet: SelectionSetNode(selections: [
//           FieldNode(
//             name: NameNode(value: 'id'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'title'),
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
// QueryCarYears _parserFnQueryCarYears(Map<String, dynamic> data) =>
//     QueryCarYears.fromJson(data);
// typedef OnQueryCompleteQueryCarYears = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   QueryCarYears?,
// );
//
// class OptionsQueryCarYears extends graphql.QueryOptions<QueryCarYears> {
//   OptionsQueryCarYears({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryCarYears? typedOptimisticResult,
//     Duration? pollInterval,
//     graphql.Context? context,
//     OnQueryCompleteQueryCarYears? onComplete,
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
//                     data == null ? null : _parserFnQueryCarYears(data),
//                   ),
//           onError: onError,
//           document: documentNodeQueryCarYears,
//           parserFn: _parserFnQueryCarYears,
//         );
//
//   final OnQueryCompleteQueryCarYears? onCompleteWithParsed;
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
// class WatchOptionsQueryCarYears
//     extends graphql.WatchQueryOptions<QueryCarYears> {
//   WatchOptionsQueryCarYears({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryCarYears? typedOptimisticResult,
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
//           document: documentNodeQueryCarYears,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnQueryCarYears,
//         );
// }
//
// class FetchMoreOptionsQueryCarYears extends graphql.FetchMoreOptions {
//   FetchMoreOptionsQueryCarYears({required graphql.UpdateQuery updateQuery})
//       : super(
//           updateQuery: updateQuery,
//           document: documentNodeQueryCarYears,
//         );
// }
//
// extension ClientExtensionQueryCarYears on graphql.GraphQLClient {
//   Future<graphql.QueryResult<QueryCarYears>> queryCarYears(
//           [OptionsQueryCarYears? options]) async =>
//       await this.query(options ?? OptionsQueryCarYears());
//   graphql.ObservableQuery<QueryCarYears> watchQueryCarYears(
//           [WatchOptionsQueryCarYears? options]) =>
//       this.watchQuery(options ?? WatchOptionsQueryCarYears());
//   void writeQueryCarYears({
//     required QueryCarYears data,
//     bool broadcast = true,
//   }) =>
//       this.writeQuery(
//         graphql.Request(
//             operation: graphql.Operation(document: documentNodeQueryCarYears)),
//         data: data.toJson(),
//         broadcast: broadcast,
//       );
//   QueryCarYears? readQueryCarYears({bool optimistic = true}) {
//     final result = this.readQuery(
//       graphql.Request(
//           operation: graphql.Operation(document: documentNodeQueryCarYears)),
//       optimistic: optimistic,
//     );
//     return result == null ? null : QueryCarYears.fromJson(result);
//   }
// }
//
// graphql_flutter.QueryHookResult<QueryCarYears> useQueryCarYears(
//         [OptionsQueryCarYears? options]) =>
//     graphql_flutter.useQuery(options ?? OptionsQueryCarYears());
// graphql.ObservableQuery<QueryCarYears> useWatchQueryCarYears(
//         [WatchOptionsQueryCarYears? options]) =>
//     graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryCarYears());
//
// class QueryCarYearsWidget extends graphql_flutter.Query<QueryCarYears> {
//   QueryCarYearsWidget({
//     widgets.Key? key,
//     OptionsQueryCarYears? options,
//     required graphql_flutter.QueryBuilder<QueryCarYears> builder,
//   }) : super(
//           key: key,
//           options: options ?? OptionsQueryCarYears(),
//           builder: builder,
//         );
// }
//
// class QueryCarYearscar_years {
//   QueryCarYearscar_years({
//     required this.id,
//     required this.title,
//     this.$__typename = 'CarYear',
//   });
//
//   factory QueryCarYearscar_years.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$$__typename = json['__typename'];
//     return QueryCarYearscar_years(
//       id: (l$id as String),
//       title: (l$title as String),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String title;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$title = title;
//     _resultData['title'] = l$title;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$title = title;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCarYearscar_years) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     final l$title = title;
//     final lOther$title = other.title;
//     if (l$title != lOther$title) {
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
// extension UtilityExtensionQueryCarYearscar_years on QueryCarYearscar_years {
//   CopyWithQueryCarYearscar_years<QueryCarYearscar_years> get copyWith =>
//       CopyWithQueryCarYearscar_years(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryCarYearscar_years<TRes> {
//   factory CopyWithQueryCarYearscar_years(
//     QueryCarYearscar_years instance,
//     TRes Function(QueryCarYearscar_years) then,
//   ) = _CopyWithImplQueryCarYearscar_years;
//
//   factory CopyWithQueryCarYearscar_years.stub(TRes res) =
//       _CopyWithStubImplQueryCarYearscar_years;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryCarYearscar_years<TRes>
//     implements CopyWithQueryCarYearscar_years<TRes> {
//   _CopyWithImplQueryCarYearscar_years(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarYearscar_years _instance;
//
//   final TRes Function(QueryCarYearscar_years) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarYearscar_years(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined || title == null
//             ? _instance.title
//             : (title as String),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryCarYearscar_years<TRes>
//     implements CopyWithQueryCarYearscar_years<TRes> {
//   _CopyWithStubImplQueryCarYearscar_years(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesQueryCarOils {
//   factory VariablesQueryCarOils({
//     required List<int> brandId,
//     required List<int> carModelId,
//     required List<int> carYearId,
//     int? page,
//   }) =>
//       VariablesQueryCarOils._({
//         r'brandId': brandId,
//         r'carModelId': carModelId,
//         r'carYearId': carYearId,
//         if (page != null) r'page': page,
//       });
//
//   VariablesQueryCarOils._(this._$data);
//
//   factory VariablesQueryCarOils.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$brandId = data['brandId'];
//     result$data['brandId'] =
//         (l$brandId as List<dynamic>).map((e) => (e as int)).toList();
//     final l$carModelId = data['carModelId'];
//     result$data['carModelId'] =
//         (l$carModelId as List<dynamic>).map((e) => (e as int)).toList();
//     final l$carYearId = data['carYearId'];
//     result$data['carYearId'] =
//         (l$carYearId as List<dynamic>).map((e) => (e as int)).toList();
//     if (data.containsKey('page')) {
//       final l$page = data['page'];
//       result$data['page'] = (l$page as int?);
//     }
//     return VariablesQueryCarOils._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   List<int> get brandId => (_$data['brandId'] as List<int>);
//
//   List<int> get carModelId => (_$data['carModelId'] as List<int>);
//
//   List<int> get carYearId => (_$data['carYearId'] as List<int>);
//
//   int? get page => (_$data['page'] as int?);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$brandId = brandId;
//     result$data['brandId'] = l$brandId.map((e) => e).toList();
//     final l$carModelId = carModelId;
//     result$data['carModelId'] = l$carModelId.map((e) => e).toList();
//     final l$carYearId = carYearId;
//     result$data['carYearId'] = l$carYearId.map((e) => e).toList();
//     if (_$data.containsKey('page')) {
//       final l$page = page;
//       result$data['page'] = l$page;
//     }
//     return result$data;
//   }
//
//   CopyWithVariablesQueryCarOils<VariablesQueryCarOils> get copyWith =>
//       CopyWithVariablesQueryCarOils(
//         this,
//         (i) => i,
//       );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesQueryCarOils) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$brandId = brandId;
//     final lOther$brandId = other.brandId;
//     if (l$brandId.length != lOther$brandId.length) {
//       return false;
//     }
//     for (int i = 0; i < l$brandId.length; i++) {
//       final l$brandId$entry = l$brandId[i];
//       final lOther$brandId$entry = lOther$brandId[i];
//       if (l$brandId$entry != lOther$brandId$entry) {
//         return false;
//       }
//     }
//     final l$carModelId = carModelId;
//     final lOther$carModelId = other.carModelId;
//     if (l$carModelId.length != lOther$carModelId.length) {
//       return false;
//     }
//     for (int i = 0; i < l$carModelId.length; i++) {
//       final l$carModelId$entry = l$carModelId[i];
//       final lOther$carModelId$entry = lOther$carModelId[i];
//       if (l$carModelId$entry != lOther$carModelId$entry) {
//         return false;
//       }
//     }
//     final l$carYearId = carYearId;
//     final lOther$carYearId = other.carYearId;
//     if (l$carYearId.length != lOther$carYearId.length) {
//       return false;
//     }
//     for (int i = 0; i < l$carYearId.length; i++) {
//       final l$carYearId$entry = l$carYearId[i];
//       final lOther$carYearId$entry = lOther$carYearId[i];
//       if (l$carYearId$entry != lOther$carYearId$entry) {
//         return false;
//       }
//     }
//     final l$page = page;
//     final lOther$page = other.page;
//     if (_$data.containsKey('page') != other._$data.containsKey('page')) {
//       return false;
//     }
//     if (l$page != lOther$page) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$brandId = brandId;
//     final l$carModelId = carModelId;
//     final l$carYearId = carYearId;
//     final l$page = page;
//     return Object.hashAll([
//       Object.hashAll(l$brandId.map((v) => v)),
//       Object.hashAll(l$carModelId.map((v) => v)),
//       Object.hashAll(l$carYearId.map((v) => v)),
//       _$data.containsKey('page') ? l$page : const {},
//     ]);
//   }
// }
//
// abstract class CopyWithVariablesQueryCarOils<TRes> {
//   factory CopyWithVariablesQueryCarOils(
//     VariablesQueryCarOils instance,
//     TRes Function(VariablesQueryCarOils) then,
//   ) = _CopyWithImplVariablesQueryCarOils;
//
//   factory CopyWithVariablesQueryCarOils.stub(TRes res) =
//       _CopyWithStubImplVariablesQueryCarOils;
//
//   TRes call({
//     List<int>? brandId,
//     List<int>? carModelId,
//     List<int>? carYearId,
//     int? page,
//   });
// }
//
// class _CopyWithImplVariablesQueryCarOils<TRes>
//     implements CopyWithVariablesQueryCarOils<TRes> {
//   _CopyWithImplVariablesQueryCarOils(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesQueryCarOils _instance;
//
//   final TRes Function(VariablesQueryCarOils) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? brandId = _undefined,
//     Object? carModelId = _undefined,
//     Object? carYearId = _undefined,
//     Object? page = _undefined,
//   }) =>
//       _then(VariablesQueryCarOils._({
//         ..._instance._$data,
//         if (brandId != _undefined && brandId != null)
//           'brandId': (brandId as List<int>),
//         if (carModelId != _undefined && carModelId != null)
//           'carModelId': (carModelId as List<int>),
//         if (carYearId != _undefined && carYearId != null)
//           'carYearId': (carYearId as List<int>),
//         if (page != _undefined) 'page': (page as int?),
//       }));
// }
//
// class _CopyWithStubImplVariablesQueryCarOils<TRes>
//     implements CopyWithVariablesQueryCarOils<TRes> {
//   _CopyWithStubImplVariablesQueryCarOils(this._res);
//
//   TRes _res;
//
//   call({
//     List<int>? brandId,
//     List<int>? carModelId,
//     List<int>? carYearId,
//     int? page,
//   }) =>
//       _res;
// }
//
// class QueryCarOils {
//   QueryCarOils({
//     this.car_oils,
//     this.$__typename = 'Query',
//   });
//
//   factory QueryCarOils.fromJson(Map<String, dynamic> json) {
//     final l$car_oils = json['car_oils'];
//     final l$$__typename = json['__typename'];
//     return QueryCarOils(
//       car_oils: l$car_oils == null
//           ? null
//           : QueryCarOilscar_oils.fromJson((l$car_oils as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryCarOilscar_oils? car_oils;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$car_oils = car_oils;
//     _resultData['car_oils'] = l$car_oils?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$car_oils = car_oils;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$car_oils,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCarOils) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$car_oils = car_oils;
//     final lOther$car_oils = other.car_oils;
//     if (l$car_oils != lOther$car_oils) {
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
// extension UtilityExtensionQueryCarOils on QueryCarOils {
//   CopyWithQueryCarOils<QueryCarOils> get copyWith => CopyWithQueryCarOils(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryCarOils<TRes> {
//   factory CopyWithQueryCarOils(
//     QueryCarOils instance,
//     TRes Function(QueryCarOils) then,
//   ) = _CopyWithImplQueryCarOils;
//
//   factory CopyWithQueryCarOils.stub(TRes res) = _CopyWithStubImplQueryCarOils;
//
//   TRes call({
//     QueryCarOilscar_oils? car_oils,
//     String? $__typename,
//   });
//   CopyWithQueryCarOilscar_oils<TRes> get car_oils;
// }
//
// class _CopyWithImplQueryCarOils<TRes> implements CopyWithQueryCarOils<TRes> {
//   _CopyWithImplQueryCarOils(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarOils _instance;
//
//   final TRes Function(QueryCarOils) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? car_oils = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarOils(
//         car_oils: car_oils == _undefined
//             ? _instance.car_oils
//             : (car_oils as QueryCarOilscar_oils?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryCarOilscar_oils<TRes> get car_oils {
//     final local$car_oils = _instance.car_oils;
//     return local$car_oils == null
//         ? CopyWithQueryCarOilscar_oils.stub(_then(_instance))
//         : CopyWithQueryCarOilscar_oils(
//             local$car_oils, (e) => call(car_oils: e));
//   }
// }
//
// class _CopyWithStubImplQueryCarOils<TRes>
//     implements CopyWithQueryCarOils<TRes> {
//   _CopyWithStubImplQueryCarOils(this._res);
//
//   TRes _res;
//
//   call({
//     QueryCarOilscar_oils? car_oils,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryCarOilscar_oils<TRes> get car_oils =>
//       CopyWithQueryCarOilscar_oils.stub(_res);
// }
//
// const documentNodeQueryCarOils = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.query,
//     name: NameNode(value: 'CarOils'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'brandId')),
//         type: ListTypeNode(
//           type: NamedTypeNode(
//             name: NameNode(value: 'Int'),
//             isNonNull: true,
//           ),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'carModelId')),
//         type: ListTypeNode(
//           type: NamedTypeNode(
//             name: NameNode(value: 'Int'),
//             isNonNull: true,
//           ),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'carYearId')),
//         type: ListTypeNode(
//           type: NamedTypeNode(
//             name: NameNode(value: 'Int'),
//             isNonNull: true,
//           ),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'page')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'Int'),
//           isNonNull: false,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//     ],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'car_oils'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'car_brand_id'),
//             value: VariableNode(name: NameNode(value: 'brandId')),
//           ),
//           ArgumentNode(
//             name: NameNode(value: 'car_model_id'),
//             value: VariableNode(name: NameNode(value: 'carModelId')),
//           ),
//           ArgumentNode(
//             name: NameNode(value: 'car_year_id'),
//             value: VariableNode(name: NameNode(value: 'carYearId')),
//           ),
//           ArgumentNode(
//             name: NameNode(value: 'page'),
//             value: VariableNode(name: NameNode(value: 'page')),
//           ),
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
//                 name: NameNode(value: 'lastPage'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
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
//                 name: NameNode(value: 'oil_products'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: SelectionSetNode(selections: [
//                   FieldNode(
//                     name: NameNode(value: 'oilCoolants'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: SelectionSetNode(selections: [
//                       FieldNode(
//                         name: NameNode(value: 'id'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'title'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'description'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'price'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'company_price'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'image_path'),
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
//                     name: NameNode(value: 'oilAutomaticTransmission'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: SelectionSetNode(selections: [
//                       FieldNode(
//                         name: NameNode(value: 'id'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'title'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'description'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'price'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'company_price'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'image_path'),
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
//                     name: NameNode(value: 'oilDifferential'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: SelectionSetNode(selections: [
//                       FieldNode(
//                         name: NameNode(value: 'id'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'title'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'description'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'price'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'company_price'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'image_path'),
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
//                     name: NameNode(value: 'oilDifferentialFront'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: SelectionSetNode(selections: [
//                       FieldNode(
//                         name: NameNode(value: 'id'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'title'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'description'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'price'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'company_price'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'image_path'),
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
//                     name: NameNode(value: 'oilEngine'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: SelectionSetNode(selections: [
//                       FieldNode(
//                         name: NameNode(value: 'id'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'title'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'description'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'price'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'company_price'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'image_path'),
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
//                     name: NameNode(value: 'oilManualTransmission'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: SelectionSetNode(selections: [
//                       FieldNode(
//                         name: NameNode(value: 'id'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'title'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'description'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'price'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'company_price'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'image_path'),
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
//                     name: NameNode(value: 'oilPowerSteering'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: SelectionSetNode(selections: [
//                       FieldNode(
//                         name: NameNode(value: 'id'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'title'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'description'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'price'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'company_price'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'image_path'),
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
//                     name: NameNode(value: 'oilTransferBox'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: SelectionSetNode(selections: [
//                       FieldNode(
//                         name: NameNode(value: 'id'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'title'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'description'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'price'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'company_price'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'image_path'),
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
// QueryCarOils _parserFnQueryCarOils(Map<String, dynamic> data) =>
//     QueryCarOils.fromJson(data);
// typedef OnQueryCompleteQueryCarOils = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   QueryCarOils?,
// );
//
// class OptionsQueryCarOils extends graphql.QueryOptions<QueryCarOils> {
//   OptionsQueryCarOils({
//     String? operationName,
//     required VariablesQueryCarOils variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryCarOils? typedOptimisticResult,
//     Duration? pollInterval,
//     graphql.Context? context,
//     OnQueryCompleteQueryCarOils? onComplete,
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
//                     data == null ? null : _parserFnQueryCarOils(data),
//                   ),
//           onError: onError,
//           document: documentNodeQueryCarOils,
//           parserFn: _parserFnQueryCarOils,
//         );
//
//   final OnQueryCompleteQueryCarOils? onCompleteWithParsed;
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
// class WatchOptionsQueryCarOils extends graphql.WatchQueryOptions<QueryCarOils> {
//   WatchOptionsQueryCarOils({
//     String? operationName,
//     required VariablesQueryCarOils variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryCarOils? typedOptimisticResult,
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
//           document: documentNodeQueryCarOils,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnQueryCarOils,
//         );
// }
//
// class FetchMoreOptionsQueryCarOils extends graphql.FetchMoreOptions {
//   FetchMoreOptionsQueryCarOils({
//     required graphql.UpdateQuery updateQuery,
//     required VariablesQueryCarOils variables,
//   }) : super(
//           updateQuery: updateQuery,
//           variables: variables.toJson(),
//           document: documentNodeQueryCarOils,
//         );
// }
//
// extension ClientExtensionQueryCarOils on graphql.GraphQLClient {
//   Future<graphql.QueryResult<QueryCarOils>> queryCarOils(
//           OptionsQueryCarOils options) async =>
//       await this.query(options);
//   graphql.ObservableQuery<QueryCarOils> watchQueryCarOils(
//           WatchOptionsQueryCarOils options) =>
//       this.watchQuery(options);
//   void writeQueryCarOils({
//     required QueryCarOils data,
//     required VariablesQueryCarOils variables,
//     bool broadcast = true,
//   }) =>
//       this.writeQuery(
//         graphql.Request(
//           operation: graphql.Operation(document: documentNodeQueryCarOils),
//           variables: variables.toJson(),
//         ),
//         data: data.toJson(),
//         broadcast: broadcast,
//       );
//   QueryCarOils? readQueryCarOils({
//     required VariablesQueryCarOils variables,
//     bool optimistic = true,
//   }) {
//     final result = this.readQuery(
//       graphql.Request(
//         operation: graphql.Operation(document: documentNodeQueryCarOils),
//         variables: variables.toJson(),
//       ),
//       optimistic: optimistic,
//     );
//     return result == null ? null : QueryCarOils.fromJson(result);
//   }
// }
//
// graphql_flutter.QueryHookResult<QueryCarOils> useQueryCarOils(
//         OptionsQueryCarOils options) =>
//     graphql_flutter.useQuery(options);
// graphql.ObservableQuery<QueryCarOils> useWatchQueryCarOils(
//         WatchOptionsQueryCarOils options) =>
//     graphql_flutter.useWatchQuery(options);
//
// class QueryCarOilsWidget extends graphql_flutter.Query<QueryCarOils> {
//   QueryCarOilsWidget({
//     widgets.Key? key,
//     required OptionsQueryCarOils options,
//     required graphql_flutter.QueryBuilder<QueryCarOils> builder,
//   }) : super(
//           key: key,
//           options: options,
//           builder: builder,
//         );
// }
//
// class QueryCarOilscar_oils {
//   QueryCarOilscar_oils({
//     required this.paginatorInfo,
//     required this.data,
//     this.$__typename = 'CarOilPaginator',
//   });
//
//   factory QueryCarOilscar_oils.fromJson(Map<String, dynamic> json) {
//     final l$paginatorInfo = json['paginatorInfo'];
//     final l$data = json['data'];
//     final l$$__typename = json['__typename'];
//     return QueryCarOilscar_oils(
//       paginatorInfo: QueryCarOilscar_oilspaginatorInfo.fromJson(
//           (l$paginatorInfo as Map<String, dynamic>)),
//       data: (l$data as List<dynamic>)
//           .map((e) =>
//               QueryCarOilscar_oilsdata.fromJson((e as Map<String, dynamic>)))
//           .toList(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryCarOilscar_oilspaginatorInfo paginatorInfo;
//
//   final List<QueryCarOilscar_oilsdata> data;
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
//     if (!(other is QueryCarOilscar_oils) || runtimeType != other.runtimeType) {
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
// extension UtilityExtensionQueryCarOilscar_oils on QueryCarOilscar_oils {
//   CopyWithQueryCarOilscar_oils<QueryCarOilscar_oils> get copyWith =>
//       CopyWithQueryCarOilscar_oils(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryCarOilscar_oils<TRes> {
//   factory CopyWithQueryCarOilscar_oils(
//     QueryCarOilscar_oils instance,
//     TRes Function(QueryCarOilscar_oils) then,
//   ) = _CopyWithImplQueryCarOilscar_oils;
//
//   factory CopyWithQueryCarOilscar_oils.stub(TRes res) =
//       _CopyWithStubImplQueryCarOilscar_oils;
//
//   TRes call({
//     QueryCarOilscar_oilspaginatorInfo? paginatorInfo,
//     List<QueryCarOilscar_oilsdata>? data,
//     String? $__typename,
//   });
//   CopyWithQueryCarOilscar_oilspaginatorInfo<TRes> get paginatorInfo;
//   TRes data(
//       Iterable<QueryCarOilscar_oilsdata> Function(
//               Iterable<
//                   CopyWithQueryCarOilscar_oilsdata<QueryCarOilscar_oilsdata>>)
//           _fn);
// }
//
// class _CopyWithImplQueryCarOilscar_oils<TRes>
//     implements CopyWithQueryCarOilscar_oils<TRes> {
//   _CopyWithImplQueryCarOilscar_oils(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarOilscar_oils _instance;
//
//   final TRes Function(QueryCarOilscar_oils) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? paginatorInfo = _undefined,
//     Object? data = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarOilscar_oils(
//         paginatorInfo: paginatorInfo == _undefined || paginatorInfo == null
//             ? _instance.paginatorInfo
//             : (paginatorInfo as QueryCarOilscar_oilspaginatorInfo),
//         data: data == _undefined || data == null
//             ? _instance.data
//             : (data as List<QueryCarOilscar_oilsdata>),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryCarOilscar_oilspaginatorInfo<TRes> get paginatorInfo {
//     final local$paginatorInfo = _instance.paginatorInfo;
//     return CopyWithQueryCarOilscar_oilspaginatorInfo(
//         local$paginatorInfo, (e) => call(paginatorInfo: e));
//   }
//
//   TRes data(
//           Iterable<QueryCarOilscar_oilsdata> Function(
//                   Iterable<
//                       CopyWithQueryCarOilscar_oilsdata<
//                           QueryCarOilscar_oilsdata>>)
//               _fn) =>
//       call(
//           data: _fn(_instance.data.map((e) => CopyWithQueryCarOilscar_oilsdata(
//                 e,
//                 (i) => i,
//               ))).toList());
// }
//
// class _CopyWithStubImplQueryCarOilscar_oils<TRes>
//     implements CopyWithQueryCarOilscar_oils<TRes> {
//   _CopyWithStubImplQueryCarOilscar_oils(this._res);
//
//   TRes _res;
//
//   call({
//     QueryCarOilscar_oilspaginatorInfo? paginatorInfo,
//     List<QueryCarOilscar_oilsdata>? data,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryCarOilscar_oilspaginatorInfo<TRes> get paginatorInfo =>
//       CopyWithQueryCarOilscar_oilspaginatorInfo.stub(_res);
//
//   data(_fn) => _res;
// }
//
// class QueryCarOilscar_oilspaginatorInfo {
//   QueryCarOilscar_oilspaginatorInfo({
//     required this.lastPage,
//     required this.count,
//     required this.currentPage,
//     required this.hasMorePages,
//     this.$__typename = 'PaginatorInfo',
//   });
//
//   factory QueryCarOilscar_oilspaginatorInfo.fromJson(
//       Map<String, dynamic> json) {
//     final l$lastPage = json['lastPage'];
//     final l$count = json['count'];
//     final l$currentPage = json['currentPage'];
//     final l$hasMorePages = json['hasMorePages'];
//     final l$$__typename = json['__typename'];
//     return QueryCarOilscar_oilspaginatorInfo(
//       lastPage: (l$lastPage as int),
//       count: (l$count as int),
//       currentPage: (l$currentPage as int),
//       hasMorePages: (l$hasMorePages as bool),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final int lastPage;
//
//   final int count;
//
//   final int currentPage;
//
//   final bool hasMorePages;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$lastPage = lastPage;
//     _resultData['lastPage'] = l$lastPage;
//     final l$count = count;
//     _resultData['count'] = l$count;
//     final l$currentPage = currentPage;
//     _resultData['currentPage'] = l$currentPage;
//     final l$hasMorePages = hasMorePages;
//     _resultData['hasMorePages'] = l$hasMorePages;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$lastPage = lastPage;
//     final l$count = count;
//     final l$currentPage = currentPage;
//     final l$hasMorePages = hasMorePages;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$lastPage,
//       l$count,
//       l$currentPage,
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
//     if (!(other is QueryCarOilscar_oilspaginatorInfo) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$lastPage = lastPage;
//     final lOther$lastPage = other.lastPage;
//     if (l$lastPage != lOther$lastPage) {
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
// extension UtilityExtensionQueryCarOilscar_oilspaginatorInfo
//     on QueryCarOilscar_oilspaginatorInfo {
//   CopyWithQueryCarOilscar_oilspaginatorInfo<QueryCarOilscar_oilspaginatorInfo>
//       get copyWith => CopyWithQueryCarOilscar_oilspaginatorInfo(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryCarOilscar_oilspaginatorInfo<TRes> {
//   factory CopyWithQueryCarOilscar_oilspaginatorInfo(
//     QueryCarOilscar_oilspaginatorInfo instance,
//     TRes Function(QueryCarOilscar_oilspaginatorInfo) then,
//   ) = _CopyWithImplQueryCarOilscar_oilspaginatorInfo;
//
//   factory CopyWithQueryCarOilscar_oilspaginatorInfo.stub(TRes res) =
//       _CopyWithStubImplQueryCarOilscar_oilspaginatorInfo;
//
//   TRes call({
//     int? lastPage,
//     int? count,
//     int? currentPage,
//     bool? hasMorePages,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryCarOilscar_oilspaginatorInfo<TRes>
//     implements CopyWithQueryCarOilscar_oilspaginatorInfo<TRes> {
//   _CopyWithImplQueryCarOilscar_oilspaginatorInfo(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarOilscar_oilspaginatorInfo _instance;
//
//   final TRes Function(QueryCarOilscar_oilspaginatorInfo) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? lastPage = _undefined,
//     Object? count = _undefined,
//     Object? currentPage = _undefined,
//     Object? hasMorePages = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarOilscar_oilspaginatorInfo(
//         lastPage: lastPage == _undefined || lastPage == null
//             ? _instance.lastPage
//             : (lastPage as int),
//         count: count == _undefined || count == null
//             ? _instance.count
//             : (count as int),
//         currentPage: currentPage == _undefined || currentPage == null
//             ? _instance.currentPage
//             : (currentPage as int),
//         hasMorePages: hasMorePages == _undefined || hasMorePages == null
//             ? _instance.hasMorePages
//             : (hasMorePages as bool),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryCarOilscar_oilspaginatorInfo<TRes>
//     implements CopyWithQueryCarOilscar_oilspaginatorInfo<TRes> {
//   _CopyWithStubImplQueryCarOilscar_oilspaginatorInfo(this._res);
//
//   TRes _res;
//
//   call({
//     int? lastPage,
//     int? count,
//     int? currentPage,
//     bool? hasMorePages,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryCarOilscar_oilsdata {
//   QueryCarOilscar_oilsdata({
//     this.oil_products,
//     this.$__typename = 'CarOil',
//   });
//
//   factory QueryCarOilscar_oilsdata.fromJson(Map<String, dynamic> json) {
//     final l$oil_products = json['oil_products'];
//     final l$$__typename = json['__typename'];
//     return QueryCarOilscar_oilsdata(
//       oil_products: l$oil_products == null
//           ? null
//           : QueryCarOilscar_oilsdataoil_products.fromJson(
//               (l$oil_products as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryCarOilscar_oilsdataoil_products? oil_products;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$oil_products = oil_products;
//     _resultData['oil_products'] = l$oil_products?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$oil_products = oil_products;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$oil_products,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCarOilscar_oilsdata) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$oil_products = oil_products;
//     final lOther$oil_products = other.oil_products;
//     if (l$oil_products != lOther$oil_products) {
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
// extension UtilityExtensionQueryCarOilscar_oilsdata on QueryCarOilscar_oilsdata {
//   CopyWithQueryCarOilscar_oilsdata<QueryCarOilscar_oilsdata> get copyWith =>
//       CopyWithQueryCarOilscar_oilsdata(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryCarOilscar_oilsdata<TRes> {
//   factory CopyWithQueryCarOilscar_oilsdata(
//     QueryCarOilscar_oilsdata instance,
//     TRes Function(QueryCarOilscar_oilsdata) then,
//   ) = _CopyWithImplQueryCarOilscar_oilsdata;
//
//   factory CopyWithQueryCarOilscar_oilsdata.stub(TRes res) =
//       _CopyWithStubImplQueryCarOilscar_oilsdata;
//
//   TRes call({
//     QueryCarOilscar_oilsdataoil_products? oil_products,
//     String? $__typename,
//   });
//   CopyWithQueryCarOilscar_oilsdataoil_products<TRes> get oil_products;
// }
//
// class _CopyWithImplQueryCarOilscar_oilsdata<TRes>
//     implements CopyWithQueryCarOilscar_oilsdata<TRes> {
//   _CopyWithImplQueryCarOilscar_oilsdata(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarOilscar_oilsdata _instance;
//
//   final TRes Function(QueryCarOilscar_oilsdata) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? oil_products = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarOilscar_oilsdata(
//         oil_products: oil_products == _undefined
//             ? _instance.oil_products
//             : (oil_products as QueryCarOilscar_oilsdataoil_products?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryCarOilscar_oilsdataoil_products<TRes> get oil_products {
//     final local$oil_products = _instance.oil_products;
//     return local$oil_products == null
//         ? CopyWithQueryCarOilscar_oilsdataoil_products.stub(_then(_instance))
//         : CopyWithQueryCarOilscar_oilsdataoil_products(
//             local$oil_products, (e) => call(oil_products: e));
//   }
// }
//
// class _CopyWithStubImplQueryCarOilscar_oilsdata<TRes>
//     implements CopyWithQueryCarOilscar_oilsdata<TRes> {
//   _CopyWithStubImplQueryCarOilscar_oilsdata(this._res);
//
//   TRes _res;
//
//   call({
//     QueryCarOilscar_oilsdataoil_products? oil_products,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryCarOilscar_oilsdataoil_products<TRes> get oil_products =>
//       CopyWithQueryCarOilscar_oilsdataoil_products.stub(_res);
// }
//
// class QueryCarOilscar_oilsdataoil_products {
//   QueryCarOilscar_oilsdataoil_products({
//     this.oilCoolants,
//     this.oilAutomaticTransmission,
//     this.oilDifferential,
//     this.oilDifferentialFront,
//     this.oilEngine,
//     this.oilManualTransmission,
//     this.oilPowerSteering,
//     this.oilTransferBox,
//     this.$__typename = 'OilProducts',
//   });
//
//   factory QueryCarOilscar_oilsdataoil_products.fromJson(
//       Map<String, dynamic> json) {
//     final l$oilCoolants = json['oilCoolants'];
//     final l$oilAutomaticTransmission = json['oilAutomaticTransmission'];
//     final l$oilDifferential = json['oilDifferential'];
//     final l$oilDifferentialFront = json['oilDifferentialFront'];
//     final l$oilEngine = json['oilEngine'];
//     final l$oilManualTransmission = json['oilManualTransmission'];
//     final l$oilPowerSteering = json['oilPowerSteering'];
//     final l$oilTransferBox = json['oilTransferBox'];
//     final l$$__typename = json['__typename'];
//     return QueryCarOilscar_oilsdataoil_products(
//       oilCoolants: (l$oilCoolants as List<dynamic>?)
//           ?.map((e) => QueryCarOilscar_oilsdataoil_productsoilCoolants.fromJson(
//               (e as Map<String, dynamic>)))
//           .toList(),
//       oilAutomaticTransmission: (l$oilAutomaticTransmission as List<dynamic>?)
//           ?.map((e) =>
//               QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission
//                   .fromJson((e as Map<String, dynamic>)))
//           .toList(),
//       oilDifferential: (l$oilDifferential as List<dynamic>?)
//           ?.map((e) =>
//               QueryCarOilscar_oilsdataoil_productsoilDifferential.fromJson(
//                   (e as Map<String, dynamic>)))
//           .toList(),
//       oilDifferentialFront: (l$oilDifferentialFront as List<dynamic>?)
//           ?.map((e) =>
//               QueryCarOilscar_oilsdataoil_productsoilDifferentialFront.fromJson(
//                   (e as Map<String, dynamic>)))
//           .toList(),
//       oilEngine: (l$oilEngine as List<dynamic>?)
//           ?.map((e) => QueryCarOilscar_oilsdataoil_productsoilEngine.fromJson(
//               (e as Map<String, dynamic>)))
//           .toList(),
//       oilManualTransmission: (l$oilManualTransmission as List<dynamic>?)
//           ?.map((e) => QueryCarOilscar_oilsdataoil_productsoilManualTransmission
//               .fromJson((e as Map<String, dynamic>)))
//           .toList(),
//       oilPowerSteering: (l$oilPowerSteering as List<dynamic>?)
//           ?.map((e) =>
//               QueryCarOilscar_oilsdataoil_productsoilPowerSteering.fromJson(
//                   (e as Map<String, dynamic>)))
//           .toList(),
//       oilTransferBox: (l$oilTransferBox as List<dynamic>?)
//           ?.map((e) =>
//               QueryCarOilscar_oilsdataoil_productsoilTransferBox.fromJson(
//                   (e as Map<String, dynamic>)))
//           .toList(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final List<QueryCarOilscar_oilsdataoil_productsoilCoolants>? oilCoolants;
//
//   final List<QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission>?
//       oilAutomaticTransmission;
//
//   final List<QueryCarOilscar_oilsdataoil_productsoilDifferential>?
//       oilDifferential;
//
//   final List<QueryCarOilscar_oilsdataoil_productsoilDifferentialFront>?
//       oilDifferentialFront;
//
//   final List<QueryCarOilscar_oilsdataoil_productsoilEngine>? oilEngine;
//
//   final List<QueryCarOilscar_oilsdataoil_productsoilManualTransmission>?
//       oilManualTransmission;
//
//   final List<QueryCarOilscar_oilsdataoil_productsoilPowerSteering>?
//       oilPowerSteering;
//
//   final List<QueryCarOilscar_oilsdataoil_productsoilTransferBox>?
//       oilTransferBox;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$oilCoolants = oilCoolants;
//     _resultData['oilCoolants'] = l$oilCoolants?.map((e) => e.toJson()).toList();
//     final l$oilAutomaticTransmission = oilAutomaticTransmission;
//     _resultData['oilAutomaticTransmission'] =
//         l$oilAutomaticTransmission?.map((e) => e.toJson()).toList();
//     final l$oilDifferential = oilDifferential;
//     _resultData['oilDifferential'] =
//         l$oilDifferential?.map((e) => e.toJson()).toList();
//     final l$oilDifferentialFront = oilDifferentialFront;
//     _resultData['oilDifferentialFront'] =
//         l$oilDifferentialFront?.map((e) => e.toJson()).toList();
//     final l$oilEngine = oilEngine;
//     _resultData['oilEngine'] = l$oilEngine?.map((e) => e.toJson()).toList();
//     final l$oilManualTransmission = oilManualTransmission;
//     _resultData['oilManualTransmission'] =
//         l$oilManualTransmission?.map((e) => e.toJson()).toList();
//     final l$oilPowerSteering = oilPowerSteering;
//     _resultData['oilPowerSteering'] =
//         l$oilPowerSteering?.map((e) => e.toJson()).toList();
//     final l$oilTransferBox = oilTransferBox;
//     _resultData['oilTransferBox'] =
//         l$oilTransferBox?.map((e) => e.toJson()).toList();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$oilCoolants = oilCoolants;
//     final l$oilAutomaticTransmission = oilAutomaticTransmission;
//     final l$oilDifferential = oilDifferential;
//     final l$oilDifferentialFront = oilDifferentialFront;
//     final l$oilEngine = oilEngine;
//     final l$oilManualTransmission = oilManualTransmission;
//     final l$oilPowerSteering = oilPowerSteering;
//     final l$oilTransferBox = oilTransferBox;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$oilCoolants == null
//           ? null
//           : Object.hashAll(l$oilCoolants.map((v) => v)),
//       l$oilAutomaticTransmission == null
//           ? null
//           : Object.hashAll(l$oilAutomaticTransmission.map((v) => v)),
//       l$oilDifferential == null
//           ? null
//           : Object.hashAll(l$oilDifferential.map((v) => v)),
//       l$oilDifferentialFront == null
//           ? null
//           : Object.hashAll(l$oilDifferentialFront.map((v) => v)),
//       l$oilEngine == null ? null : Object.hashAll(l$oilEngine.map((v) => v)),
//       l$oilManualTransmission == null
//           ? null
//           : Object.hashAll(l$oilManualTransmission.map((v) => v)),
//       l$oilPowerSteering == null
//           ? null
//           : Object.hashAll(l$oilPowerSteering.map((v) => v)),
//       l$oilTransferBox == null
//           ? null
//           : Object.hashAll(l$oilTransferBox.map((v) => v)),
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCarOilscar_oilsdataoil_products) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$oilCoolants = oilCoolants;
//     final lOther$oilCoolants = other.oilCoolants;
//     if (l$oilCoolants != null && lOther$oilCoolants != null) {
//       if (l$oilCoolants.length != lOther$oilCoolants.length) {
//         return false;
//       }
//       for (int i = 0; i < l$oilCoolants.length; i++) {
//         final l$oilCoolants$entry = l$oilCoolants[i];
//         final lOther$oilCoolants$entry = lOther$oilCoolants[i];
//         if (l$oilCoolants$entry != lOther$oilCoolants$entry) {
//           return false;
//         }
//       }
//     } else if (l$oilCoolants != lOther$oilCoolants) {
//       return false;
//     }
//     final l$oilAutomaticTransmission = oilAutomaticTransmission;
//     final lOther$oilAutomaticTransmission = other.oilAutomaticTransmission;
//     if (l$oilAutomaticTransmission != null &&
//         lOther$oilAutomaticTransmission != null) {
//       if (l$oilAutomaticTransmission.length !=
//           lOther$oilAutomaticTransmission.length) {
//         return false;
//       }
//       for (int i = 0; i < l$oilAutomaticTransmission.length; i++) {
//         final l$oilAutomaticTransmission$entry = l$oilAutomaticTransmission[i];
//         final lOther$oilAutomaticTransmission$entry =
//             lOther$oilAutomaticTransmission[i];
//         if (l$oilAutomaticTransmission$entry !=
//             lOther$oilAutomaticTransmission$entry) {
//           return false;
//         }
//       }
//     } else if (l$oilAutomaticTransmission != lOther$oilAutomaticTransmission) {
//       return false;
//     }
//     final l$oilDifferential = oilDifferential;
//     final lOther$oilDifferential = other.oilDifferential;
//     if (l$oilDifferential != null && lOther$oilDifferential != null) {
//       if (l$oilDifferential.length != lOther$oilDifferential.length) {
//         return false;
//       }
//       for (int i = 0; i < l$oilDifferential.length; i++) {
//         final l$oilDifferential$entry = l$oilDifferential[i];
//         final lOther$oilDifferential$entry = lOther$oilDifferential[i];
//         if (l$oilDifferential$entry != lOther$oilDifferential$entry) {
//           return false;
//         }
//       }
//     } else if (l$oilDifferential != lOther$oilDifferential) {
//       return false;
//     }
//     final l$oilDifferentialFront = oilDifferentialFront;
//     final lOther$oilDifferentialFront = other.oilDifferentialFront;
//     if (l$oilDifferentialFront != null && lOther$oilDifferentialFront != null) {
//       if (l$oilDifferentialFront.length != lOther$oilDifferentialFront.length) {
//         return false;
//       }
//       for (int i = 0; i < l$oilDifferentialFront.length; i++) {
//         final l$oilDifferentialFront$entry = l$oilDifferentialFront[i];
//         final lOther$oilDifferentialFront$entry =
//             lOther$oilDifferentialFront[i];
//         if (l$oilDifferentialFront$entry != lOther$oilDifferentialFront$entry) {
//           return false;
//         }
//       }
//     } else if (l$oilDifferentialFront != lOther$oilDifferentialFront) {
//       return false;
//     }
//     final l$oilEngine = oilEngine;
//     final lOther$oilEngine = other.oilEngine;
//     if (l$oilEngine != null && lOther$oilEngine != null) {
//       if (l$oilEngine.length != lOther$oilEngine.length) {
//         return false;
//       }
//       for (int i = 0; i < l$oilEngine.length; i++) {
//         final l$oilEngine$entry = l$oilEngine[i];
//         final lOther$oilEngine$entry = lOther$oilEngine[i];
//         if (l$oilEngine$entry != lOther$oilEngine$entry) {
//           return false;
//         }
//       }
//     } else if (l$oilEngine != lOther$oilEngine) {
//       return false;
//     }
//     final l$oilManualTransmission = oilManualTransmission;
//     final lOther$oilManualTransmission = other.oilManualTransmission;
//     if (l$oilManualTransmission != null &&
//         lOther$oilManualTransmission != null) {
//       if (l$oilManualTransmission.length !=
//           lOther$oilManualTransmission.length) {
//         return false;
//       }
//       for (int i = 0; i < l$oilManualTransmission.length; i++) {
//         final l$oilManualTransmission$entry = l$oilManualTransmission[i];
//         final lOther$oilManualTransmission$entry =
//             lOther$oilManualTransmission[i];
//         if (l$oilManualTransmission$entry !=
//             lOther$oilManualTransmission$entry) {
//           return false;
//         }
//       }
//     } else if (l$oilManualTransmission != lOther$oilManualTransmission) {
//       return false;
//     }
//     final l$oilPowerSteering = oilPowerSteering;
//     final lOther$oilPowerSteering = other.oilPowerSteering;
//     if (l$oilPowerSteering != null && lOther$oilPowerSteering != null) {
//       if (l$oilPowerSteering.length != lOther$oilPowerSteering.length) {
//         return false;
//       }
//       for (int i = 0; i < l$oilPowerSteering.length; i++) {
//         final l$oilPowerSteering$entry = l$oilPowerSteering[i];
//         final lOther$oilPowerSteering$entry = lOther$oilPowerSteering[i];
//         if (l$oilPowerSteering$entry != lOther$oilPowerSteering$entry) {
//           return false;
//         }
//       }
//     } else if (l$oilPowerSteering != lOther$oilPowerSteering) {
//       return false;
//     }
//     final l$oilTransferBox = oilTransferBox;
//     final lOther$oilTransferBox = other.oilTransferBox;
//     if (l$oilTransferBox != null && lOther$oilTransferBox != null) {
//       if (l$oilTransferBox.length != lOther$oilTransferBox.length) {
//         return false;
//       }
//       for (int i = 0; i < l$oilTransferBox.length; i++) {
//         final l$oilTransferBox$entry = l$oilTransferBox[i];
//         final lOther$oilTransferBox$entry = lOther$oilTransferBox[i];
//         if (l$oilTransferBox$entry != lOther$oilTransferBox$entry) {
//           return false;
//         }
//       }
//     } else if (l$oilTransferBox != lOther$oilTransferBox) {
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
// extension UtilityExtensionQueryCarOilscar_oilsdataoil_products
//     on QueryCarOilscar_oilsdataoil_products {
//   CopyWithQueryCarOilscar_oilsdataoil_products<
//           QueryCarOilscar_oilsdataoil_products>
//       get copyWith => CopyWithQueryCarOilscar_oilsdataoil_products(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryCarOilscar_oilsdataoil_products<TRes> {
//   factory CopyWithQueryCarOilscar_oilsdataoil_products(
//     QueryCarOilscar_oilsdataoil_products instance,
//     TRes Function(QueryCarOilscar_oilsdataoil_products) then,
//   ) = _CopyWithImplQueryCarOilscar_oilsdataoil_products;
//
//   factory CopyWithQueryCarOilscar_oilsdataoil_products.stub(TRes res) =
//       _CopyWithStubImplQueryCarOilscar_oilsdataoil_products;
//
//   TRes call({
//     List<QueryCarOilscar_oilsdataoil_productsoilCoolants>? oilCoolants,
//     List<QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission>?
//         oilAutomaticTransmission,
//     List<QueryCarOilscar_oilsdataoil_productsoilDifferential>? oilDifferential,
//     List<QueryCarOilscar_oilsdataoil_productsoilDifferentialFront>?
//         oilDifferentialFront,
//     List<QueryCarOilscar_oilsdataoil_productsoilEngine>? oilEngine,
//     List<QueryCarOilscar_oilsdataoil_productsoilManualTransmission>?
//         oilManualTransmission,
//     List<QueryCarOilscar_oilsdataoil_productsoilPowerSteering>?
//         oilPowerSteering,
//     List<QueryCarOilscar_oilsdataoil_productsoilTransferBox>? oilTransferBox,
//     String? $__typename,
//   });
//   TRes oilCoolants(
//       Iterable<QueryCarOilscar_oilsdataoil_productsoilCoolants>? Function(
//               Iterable<
//                   CopyWithQueryCarOilscar_oilsdataoil_productsoilCoolants<
//                       QueryCarOilscar_oilsdataoil_productsoilCoolants>>?)
//           _fn);
//   TRes oilAutomaticTransmission(
//       Iterable<QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission>? Function(
//               Iterable<
//                   CopyWithQueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission<
//                       QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission>>?)
//           _fn);
//   TRes oilDifferential(
//       Iterable<QueryCarOilscar_oilsdataoil_productsoilDifferential>? Function(
//               Iterable<
//                   CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferential<
//                       QueryCarOilscar_oilsdataoil_productsoilDifferential>>?)
//           _fn);
//   TRes oilDifferentialFront(
//       Iterable<QueryCarOilscar_oilsdataoil_productsoilDifferentialFront>? Function(
//               Iterable<
//                   CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferentialFront<
//                       QueryCarOilscar_oilsdataoil_productsoilDifferentialFront>>?)
//           _fn);
//   TRes oilEngine(
//       Iterable<QueryCarOilscar_oilsdataoil_productsoilEngine>? Function(
//               Iterable<
//                   CopyWithQueryCarOilscar_oilsdataoil_productsoilEngine<
//                       QueryCarOilscar_oilsdataoil_productsoilEngine>>?)
//           _fn);
//   TRes oilManualTransmission(
//       Iterable<QueryCarOilscar_oilsdataoil_productsoilManualTransmission>? Function(
//               Iterable<
//                   CopyWithQueryCarOilscar_oilsdataoil_productsoilManualTransmission<
//                       QueryCarOilscar_oilsdataoil_productsoilManualTransmission>>?)
//           _fn);
//   TRes oilPowerSteering(
//       Iterable<QueryCarOilscar_oilsdataoil_productsoilPowerSteering>? Function(
//               Iterable<
//                   CopyWithQueryCarOilscar_oilsdataoil_productsoilPowerSteering<
//                       QueryCarOilscar_oilsdataoil_productsoilPowerSteering>>?)
//           _fn);
//   TRes oilTransferBox(
//       Iterable<QueryCarOilscar_oilsdataoil_productsoilTransferBox>? Function(
//               Iterable<
//                   CopyWithQueryCarOilscar_oilsdataoil_productsoilTransferBox<
//                       QueryCarOilscar_oilsdataoil_productsoilTransferBox>>?)
//           _fn);
// }
//
// class _CopyWithImplQueryCarOilscar_oilsdataoil_products<TRes>
//     implements CopyWithQueryCarOilscar_oilsdataoil_products<TRes> {
//   _CopyWithImplQueryCarOilscar_oilsdataoil_products(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarOilscar_oilsdataoil_products _instance;
//
//   final TRes Function(QueryCarOilscar_oilsdataoil_products) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? oilCoolants = _undefined,
//     Object? oilAutomaticTransmission = _undefined,
//     Object? oilDifferential = _undefined,
//     Object? oilDifferentialFront = _undefined,
//     Object? oilEngine = _undefined,
//     Object? oilManualTransmission = _undefined,
//     Object? oilPowerSteering = _undefined,
//     Object? oilTransferBox = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarOilscar_oilsdataoil_products(
//         oilCoolants: oilCoolants == _undefined
//             ? _instance.oilCoolants
//             : (oilCoolants
//                 as List<QueryCarOilscar_oilsdataoil_productsoilCoolants>?),
//         oilAutomaticTransmission: oilAutomaticTransmission == _undefined
//             ? _instance.oilAutomaticTransmission
//             : (oilAutomaticTransmission as List<
//                 QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission>?),
//         oilDifferential: oilDifferential == _undefined
//             ? _instance.oilDifferential
//             : (oilDifferential
//                 as List<QueryCarOilscar_oilsdataoil_productsoilDifferential>?),
//         oilDifferentialFront: oilDifferentialFront == _undefined
//             ? _instance.oilDifferentialFront
//             : (oilDifferentialFront as List<
//                 QueryCarOilscar_oilsdataoil_productsoilDifferentialFront>?),
//         oilEngine: oilEngine == _undefined
//             ? _instance.oilEngine
//             : (oilEngine
//                 as List<QueryCarOilscar_oilsdataoil_productsoilEngine>?),
//         oilManualTransmission: oilManualTransmission == _undefined
//             ? _instance.oilManualTransmission
//             : (oilManualTransmission as List<
//                 QueryCarOilscar_oilsdataoil_productsoilManualTransmission>?),
//         oilPowerSteering: oilPowerSteering == _undefined
//             ? _instance.oilPowerSteering
//             : (oilPowerSteering
//                 as List<QueryCarOilscar_oilsdataoil_productsoilPowerSteering>?),
//         oilTransferBox: oilTransferBox == _undefined
//             ? _instance.oilTransferBox
//             : (oilTransferBox
//                 as List<QueryCarOilscar_oilsdataoil_productsoilTransferBox>?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   TRes oilCoolants(
//           Iterable<QueryCarOilscar_oilsdataoil_productsoilCoolants>? Function(
//                   Iterable<
//                       CopyWithQueryCarOilscar_oilsdataoil_productsoilCoolants<
//                           QueryCarOilscar_oilsdataoil_productsoilCoolants>>?)
//               _fn) =>
//       call(
//           oilCoolants: _fn(_instance.oilCoolants?.map(
//               (e) => CopyWithQueryCarOilscar_oilsdataoil_productsoilCoolants(
//                     e,
//                     (i) => i,
//                   )))?.toList());
//
//   TRes oilAutomaticTransmission(
//           Iterable<QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission>? Function(
//                   Iterable<
//                       CopyWithQueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission<
//                           QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission>>?)
//               _fn) =>
//       call(
//           oilAutomaticTransmission: _fn(_instance.oilAutomaticTransmission?.map(
//               (e) =>
//                   CopyWithQueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission(
//                     e,
//                     (i) => i,
//                   )))?.toList());
//
//   TRes oilDifferential(
//           Iterable<QueryCarOilscar_oilsdataoil_productsoilDifferential>? Function(
//                   Iterable<
//                       CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferential<
//                           QueryCarOilscar_oilsdataoil_productsoilDifferential>>?)
//               _fn) =>
//       call(
//           oilDifferential: _fn(_instance.oilDifferential?.map((e) =>
//               CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferential(
//                 e,
//                 (i) => i,
//               )))?.toList());
//
//   TRes oilDifferentialFront(
//           Iterable<QueryCarOilscar_oilsdataoil_productsoilDifferentialFront>? Function(
//                   Iterable<
//                       CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferentialFront<
//                           QueryCarOilscar_oilsdataoil_productsoilDifferentialFront>>?)
//               _fn) =>
//       call(
//           oilDifferentialFront: _fn(_instance.oilDifferentialFront?.map((e) =>
//               CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferentialFront(
//                 e,
//                 (i) => i,
//               )))?.toList());
//
//   TRes oilEngine(
//           Iterable<QueryCarOilscar_oilsdataoil_productsoilEngine>? Function(
//                   Iterable<
//                       CopyWithQueryCarOilscar_oilsdataoil_productsoilEngine<
//                           QueryCarOilscar_oilsdataoil_productsoilEngine>>?)
//               _fn) =>
//       call(
//           oilEngine: _fn(_instance.oilEngine?.map(
//               (e) => CopyWithQueryCarOilscar_oilsdataoil_productsoilEngine(
//                     e,
//                     (i) => i,
//                   )))?.toList());
//
//   TRes oilManualTransmission(
//           Iterable<QueryCarOilscar_oilsdataoil_productsoilManualTransmission>? Function(
//                   Iterable<
//                       CopyWithQueryCarOilscar_oilsdataoil_productsoilManualTransmission<
//                           QueryCarOilscar_oilsdataoil_productsoilManualTransmission>>?)
//               _fn) =>
//       call(
//           oilManualTransmission: _fn(_instance.oilManualTransmission?.map((e) =>
//               CopyWithQueryCarOilscar_oilsdataoil_productsoilManualTransmission(
//                 e,
//                 (i) => i,
//               )))?.toList());
//
//   TRes oilPowerSteering(
//           Iterable<QueryCarOilscar_oilsdataoil_productsoilPowerSteering>? Function(
//                   Iterable<
//                       CopyWithQueryCarOilscar_oilsdataoil_productsoilPowerSteering<
//                           QueryCarOilscar_oilsdataoil_productsoilPowerSteering>>?)
//               _fn) =>
//       call(
//           oilPowerSteering: _fn(_instance.oilPowerSteering?.map((e) =>
//               CopyWithQueryCarOilscar_oilsdataoil_productsoilPowerSteering(
//                 e,
//                 (i) => i,
//               )))?.toList());
//
//   TRes oilTransferBox(
//           Iterable<QueryCarOilscar_oilsdataoil_productsoilTransferBox>? Function(
//                   Iterable<
//                       CopyWithQueryCarOilscar_oilsdataoil_productsoilTransferBox<
//                           QueryCarOilscar_oilsdataoil_productsoilTransferBox>>?)
//               _fn) =>
//       call(
//           oilTransferBox: _fn(_instance.oilTransferBox?.map(
//               (e) => CopyWithQueryCarOilscar_oilsdataoil_productsoilTransferBox(
//                     e,
//                     (i) => i,
//                   )))?.toList());
// }
//
// class _CopyWithStubImplQueryCarOilscar_oilsdataoil_products<TRes>
//     implements CopyWithQueryCarOilscar_oilsdataoil_products<TRes> {
//   _CopyWithStubImplQueryCarOilscar_oilsdataoil_products(this._res);
//
//   TRes _res;
//
//   call({
//     List<QueryCarOilscar_oilsdataoil_productsoilCoolants>? oilCoolants,
//     List<QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission>?
//         oilAutomaticTransmission,
//     List<QueryCarOilscar_oilsdataoil_productsoilDifferential>? oilDifferential,
//     List<QueryCarOilscar_oilsdataoil_productsoilDifferentialFront>?
//         oilDifferentialFront,
//     List<QueryCarOilscar_oilsdataoil_productsoilEngine>? oilEngine,
//     List<QueryCarOilscar_oilsdataoil_productsoilManualTransmission>?
//         oilManualTransmission,
//     List<QueryCarOilscar_oilsdataoil_productsoilPowerSteering>?
//         oilPowerSteering,
//     List<QueryCarOilscar_oilsdataoil_productsoilTransferBox>? oilTransferBox,
//     String? $__typename,
//   }) =>
//       _res;
//
//   oilCoolants(_fn) => _res;
//
//   oilAutomaticTransmission(_fn) => _res;
//
//   oilDifferential(_fn) => _res;
//
//   oilDifferentialFront(_fn) => _res;
//
//   oilEngine(_fn) => _res;
//
//   oilManualTransmission(_fn) => _res;
//
//   oilPowerSteering(_fn) => _res;
//
//   oilTransferBox(_fn) => _res;
// }
//
// class QueryCarOilscar_oilsdataoil_productsoilCoolants {
//   QueryCarOilscar_oilsdataoil_productsoilCoolants({
//     required this.id,
//     this.title,
//     this.description,
//     this.price,
//     this.company_price,
//     this.image_path,
//     this.$__typename = 'Product',
//   });
//
//   factory QueryCarOilscar_oilsdataoil_productsoilCoolants.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$description = json['description'];
//     final l$price = json['price'];
//     final l$company_price = json['company_price'];
//     final l$image_path = json['image_path'];
//     final l$$__typename = json['__typename'];
//     return QueryCarOilscar_oilsdataoil_productsoilCoolants(
//       id: (l$id as String),
//       title: (l$title as String?),
//       description: (l$description as String?),
//       price: (l$price as num?)?.toDouble(),
//       company_price: (l$company_price as num?)?.toDouble(),
//       image_path: (l$image_path as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String? title;
//
//   final String? description;
//
//   final double? price;
//
//   final double? company_price;
//
//   final String? image_path;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$title = title;
//     _resultData['title'] = l$title;
//     final l$description = description;
//     _resultData['description'] = l$description;
//     final l$price = price;
//     _resultData['price'] = l$price;
//     final l$company_price = company_price;
//     _resultData['company_price'] = l$company_price;
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$title = title;
//     final l$description = description;
//     final l$price = price;
//     final l$company_price = company_price;
//     final l$image_path = image_path;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$description,
//       l$price,
//       l$company_price,
//       l$image_path,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCarOilscar_oilsdataoil_productsoilCoolants) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     final l$title = title;
//     final lOther$title = other.title;
//     if (l$title != lOther$title) {
//       return false;
//     }
//     final l$description = description;
//     final lOther$description = other.description;
//     if (l$description != lOther$description) {
//       return false;
//     }
//     final l$price = price;
//     final lOther$price = other.price;
//     if (l$price != lOther$price) {
//       return false;
//     }
//     final l$company_price = company_price;
//     final lOther$company_price = other.company_price;
//     if (l$company_price != lOther$company_price) {
//       return false;
//     }
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
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
// extension UtilityExtensionQueryCarOilscar_oilsdataoil_productsoilCoolants
//     on QueryCarOilscar_oilsdataoil_productsoilCoolants {
//   CopyWithQueryCarOilscar_oilsdataoil_productsoilCoolants<
//           QueryCarOilscar_oilsdataoil_productsoilCoolants>
//       get copyWith => CopyWithQueryCarOilscar_oilsdataoil_productsoilCoolants(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryCarOilscar_oilsdataoil_productsoilCoolants<TRes> {
//   factory CopyWithQueryCarOilscar_oilsdataoil_productsoilCoolants(
//     QueryCarOilscar_oilsdataoil_productsoilCoolants instance,
//     TRes Function(QueryCarOilscar_oilsdataoil_productsoilCoolants) then,
//   ) = _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilCoolants;
//
//   factory CopyWithQueryCarOilscar_oilsdataoil_productsoilCoolants.stub(
//           TRes res) =
//       _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilCoolants;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? description,
//     double? price,
//     double? company_price,
//     String? image_path,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilCoolants<TRes>
//     implements CopyWithQueryCarOilscar_oilsdataoil_productsoilCoolants<TRes> {
//   _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilCoolants(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarOilscar_oilsdataoil_productsoilCoolants _instance;
//
//   final TRes Function(QueryCarOilscar_oilsdataoil_productsoilCoolants) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? description = _undefined,
//     Object? price = _undefined,
//     Object? company_price = _undefined,
//     Object? image_path = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarOilscar_oilsdataoil_productsoilCoolants(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined ? _instance.title : (title as String?),
//         description: description == _undefined
//             ? _instance.description
//             : (description as String?),
//         price: price == _undefined ? _instance.price : (price as double?),
//         company_price: company_price == _undefined
//             ? _instance.company_price
//             : (company_price as double?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilCoolants<TRes>
//     implements CopyWithQueryCarOilscar_oilsdataoil_productsoilCoolants<TRes> {
//   _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilCoolants(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     String? description,
//     double? price,
//     double? company_price,
//     String? image_path,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission {
//   QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission({
//     required this.id,
//     this.title,
//     this.description,
//     this.price,
//     this.company_price,
//     this.image_path,
//     this.$__typename = 'Product',
//   });
//
//   factory QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$description = json['description'];
//     final l$price = json['price'];
//     final l$company_price = json['company_price'];
//     final l$image_path = json['image_path'];
//     final l$$__typename = json['__typename'];
//     return QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission(
//       id: (l$id as String),
//       title: (l$title as String?),
//       description: (l$description as String?),
//       price: (l$price as num?)?.toDouble(),
//       company_price: (l$company_price as num?)?.toDouble(),
//       image_path: (l$image_path as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String? title;
//
//   final String? description;
//
//   final double? price;
//
//   final double? company_price;
//
//   final String? image_path;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$title = title;
//     _resultData['title'] = l$title;
//     final l$description = description;
//     _resultData['description'] = l$description;
//     final l$price = price;
//     _resultData['price'] = l$price;
//     final l$company_price = company_price;
//     _resultData['company_price'] = l$company_price;
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$title = title;
//     final l$description = description;
//     final l$price = price;
//     final l$company_price = company_price;
//     final l$image_path = image_path;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$description,
//       l$price,
//       l$company_price,
//       l$image_path,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other
//             is QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     final l$title = title;
//     final lOther$title = other.title;
//     if (l$title != lOther$title) {
//       return false;
//     }
//     final l$description = description;
//     final lOther$description = other.description;
//     if (l$description != lOther$description) {
//       return false;
//     }
//     final l$price = price;
//     final lOther$price = other.price;
//     if (l$price != lOther$price) {
//       return false;
//     }
//     final l$company_price = company_price;
//     final lOther$company_price = other.company_price;
//     if (l$company_price != lOther$company_price) {
//       return false;
//     }
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
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
// extension UtilityExtensionQueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission
//     on QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission {
//   CopyWithQueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission<
//           QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission>
//       get copyWith =>
//           CopyWithQueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission<
//     TRes> {
//   factory CopyWithQueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission(
//     QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission instance,
//     TRes Function(QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission)
//         then,
//   ) = _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission;
//
//   factory CopyWithQueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission.stub(
//           TRes res) =
//       _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? description,
//     double? price,
//     double? company_price,
//     String? image_path,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission<
//         TRes>
//     implements
//         CopyWithQueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission<
//             TRes> {
//   _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission _instance;
//
//   final TRes Function(
//       QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? description = _undefined,
//     Object? price = _undefined,
//     Object? company_price = _undefined,
//     Object? image_path = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined ? _instance.title : (title as String?),
//         description: description == _undefined
//             ? _instance.description
//             : (description as String?),
//         price: price == _undefined ? _instance.price : (price as double?),
//         company_price: company_price == _undefined
//             ? _instance.company_price
//             : (company_price as double?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission<
//         TRes>
//     implements
//         CopyWithQueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission<
//             TRes> {
//   _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilAutomaticTransmission(
//       this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     String? description,
//     double? price,
//     double? company_price,
//     String? image_path,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryCarOilscar_oilsdataoil_productsoilDifferential {
//   QueryCarOilscar_oilsdataoil_productsoilDifferential({
//     required this.id,
//     this.title,
//     this.description,
//     this.price,
//     this.company_price,
//     this.image_path,
//     this.$__typename = 'Product',
//   });
//
//   factory QueryCarOilscar_oilsdataoil_productsoilDifferential.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$description = json['description'];
//     final l$price = json['price'];
//     final l$company_price = json['company_price'];
//     final l$image_path = json['image_path'];
//     final l$$__typename = json['__typename'];
//     return QueryCarOilscar_oilsdataoil_productsoilDifferential(
//       id: (l$id as String),
//       title: (l$title as String?),
//       description: (l$description as String?),
//       price: (l$price as num?)?.toDouble(),
//       company_price: (l$company_price as num?)?.toDouble(),
//       image_path: (l$image_path as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String? title;
//
//   final String? description;
//
//   final double? price;
//
//   final double? company_price;
//
//   final String? image_path;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$title = title;
//     _resultData['title'] = l$title;
//     final l$description = description;
//     _resultData['description'] = l$description;
//     final l$price = price;
//     _resultData['price'] = l$price;
//     final l$company_price = company_price;
//     _resultData['company_price'] = l$company_price;
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$title = title;
//     final l$description = description;
//     final l$price = price;
//     final l$company_price = company_price;
//     final l$image_path = image_path;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$description,
//       l$price,
//       l$company_price,
//       l$image_path,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCarOilscar_oilsdataoil_productsoilDifferential) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     final l$title = title;
//     final lOther$title = other.title;
//     if (l$title != lOther$title) {
//       return false;
//     }
//     final l$description = description;
//     final lOther$description = other.description;
//     if (l$description != lOther$description) {
//       return false;
//     }
//     final l$price = price;
//     final lOther$price = other.price;
//     if (l$price != lOther$price) {
//       return false;
//     }
//     final l$company_price = company_price;
//     final lOther$company_price = other.company_price;
//     if (l$company_price != lOther$company_price) {
//       return false;
//     }
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
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
// extension UtilityExtensionQueryCarOilscar_oilsdataoil_productsoilDifferential
//     on QueryCarOilscar_oilsdataoil_productsoilDifferential {
//   CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferential<
//           QueryCarOilscar_oilsdataoil_productsoilDifferential>
//       get copyWith =>
//           CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferential(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferential<
//     TRes> {
//   factory CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferential(
//     QueryCarOilscar_oilsdataoil_productsoilDifferential instance,
//     TRes Function(QueryCarOilscar_oilsdataoil_productsoilDifferential) then,
//   ) = _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilDifferential;
//
//   factory CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferential.stub(
//           TRes res) =
//       _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilDifferential;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? description,
//     double? price,
//     double? company_price,
//     String? image_path,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilDifferential<TRes>
//     implements
//         CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferential<TRes> {
//   _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilDifferential(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarOilscar_oilsdataoil_productsoilDifferential _instance;
//
//   final TRes Function(QueryCarOilscar_oilsdataoil_productsoilDifferential)
//       _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? description = _undefined,
//     Object? price = _undefined,
//     Object? company_price = _undefined,
//     Object? image_path = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarOilscar_oilsdataoil_productsoilDifferential(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined ? _instance.title : (title as String?),
//         description: description == _undefined
//             ? _instance.description
//             : (description as String?),
//         price: price == _undefined ? _instance.price : (price as double?),
//         company_price: company_price == _undefined
//             ? _instance.company_price
//             : (company_price as double?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilDifferential<TRes>
//     implements
//         CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferential<TRes> {
//   _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilDifferential(
//       this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     String? description,
//     double? price,
//     double? company_price,
//     String? image_path,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryCarOilscar_oilsdataoil_productsoilDifferentialFront {
//   QueryCarOilscar_oilsdataoil_productsoilDifferentialFront({
//     required this.id,
//     this.title,
//     this.description,
//     this.price,
//     this.company_price,
//     this.image_path,
//     this.$__typename = 'Product',
//   });
//
//   factory QueryCarOilscar_oilsdataoil_productsoilDifferentialFront.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$description = json['description'];
//     final l$price = json['price'];
//     final l$company_price = json['company_price'];
//     final l$image_path = json['image_path'];
//     final l$$__typename = json['__typename'];
//     return QueryCarOilscar_oilsdataoil_productsoilDifferentialFront(
//       id: (l$id as String),
//       title: (l$title as String?),
//       description: (l$description as String?),
//       price: (l$price as num?)?.toDouble(),
//       company_price: (l$company_price as num?)?.toDouble(),
//       image_path: (l$image_path as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String? title;
//
//   final String? description;
//
//   final double? price;
//
//   final double? company_price;
//
//   final String? image_path;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$title = title;
//     _resultData['title'] = l$title;
//     final l$description = description;
//     _resultData['description'] = l$description;
//     final l$price = price;
//     _resultData['price'] = l$price;
//     final l$company_price = company_price;
//     _resultData['company_price'] = l$company_price;
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$title = title;
//     final l$description = description;
//     final l$price = price;
//     final l$company_price = company_price;
//     final l$image_path = image_path;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$description,
//       l$price,
//       l$company_price,
//       l$image_path,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCarOilscar_oilsdataoil_productsoilDifferentialFront) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     final l$title = title;
//     final lOther$title = other.title;
//     if (l$title != lOther$title) {
//       return false;
//     }
//     final l$description = description;
//     final lOther$description = other.description;
//     if (l$description != lOther$description) {
//       return false;
//     }
//     final l$price = price;
//     final lOther$price = other.price;
//     if (l$price != lOther$price) {
//       return false;
//     }
//     final l$company_price = company_price;
//     final lOther$company_price = other.company_price;
//     if (l$company_price != lOther$company_price) {
//       return false;
//     }
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
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
// extension UtilityExtensionQueryCarOilscar_oilsdataoil_productsoilDifferentialFront
//     on QueryCarOilscar_oilsdataoil_productsoilDifferentialFront {
//   CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferentialFront<
//           QueryCarOilscar_oilsdataoil_productsoilDifferentialFront>
//       get copyWith =>
//           CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferentialFront(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferentialFront<
//     TRes> {
//   factory CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferentialFront(
//     QueryCarOilscar_oilsdataoil_productsoilDifferentialFront instance,
//     TRes Function(QueryCarOilscar_oilsdataoil_productsoilDifferentialFront)
//         then,
//   ) = _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilDifferentialFront;
//
//   factory CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferentialFront.stub(
//           TRes res) =
//       _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilDifferentialFront;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? description,
//     double? price,
//     double? company_price,
//     String? image_path,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilDifferentialFront<
//         TRes>
//     implements
//         CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferentialFront<TRes> {
//   _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilDifferentialFront(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarOilscar_oilsdataoil_productsoilDifferentialFront _instance;
//
//   final TRes Function(QueryCarOilscar_oilsdataoil_productsoilDifferentialFront)
//       _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? description = _undefined,
//     Object? price = _undefined,
//     Object? company_price = _undefined,
//     Object? image_path = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarOilscar_oilsdataoil_productsoilDifferentialFront(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined ? _instance.title : (title as String?),
//         description: description == _undefined
//             ? _instance.description
//             : (description as String?),
//         price: price == _undefined ? _instance.price : (price as double?),
//         company_price: company_price == _undefined
//             ? _instance.company_price
//             : (company_price as double?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilDifferentialFront<
//         TRes>
//     implements
//         CopyWithQueryCarOilscar_oilsdataoil_productsoilDifferentialFront<TRes> {
//   _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilDifferentialFront(
//       this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     String? description,
//     double? price,
//     double? company_price,
//     String? image_path,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryCarOilscar_oilsdataoil_productsoilEngine {
//   QueryCarOilscar_oilsdataoil_productsoilEngine({
//     required this.id,
//     this.title,
//     this.description,
//     this.price,
//     this.company_price,
//     this.image_path,
//     this.$__typename = 'Product',
//   });
//
//   factory QueryCarOilscar_oilsdataoil_productsoilEngine.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$description = json['description'];
//     final l$price = json['price'];
//     final l$company_price = json['company_price'];
//     final l$image_path = json['image_path'];
//     final l$$__typename = json['__typename'];
//     return QueryCarOilscar_oilsdataoil_productsoilEngine(
//       id: (l$id as String),
//       title: (l$title as String?),
//       description: (l$description as String?),
//       price: (l$price as num?)?.toDouble(),
//       company_price: (l$company_price as num?)?.toDouble(),
//       image_path: (l$image_path as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String? title;
//
//   final String? description;
//
//   final double? price;
//
//   final double? company_price;
//
//   final String? image_path;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$title = title;
//     _resultData['title'] = l$title;
//     final l$description = description;
//     _resultData['description'] = l$description;
//     final l$price = price;
//     _resultData['price'] = l$price;
//     final l$company_price = company_price;
//     _resultData['company_price'] = l$company_price;
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$title = title;
//     final l$description = description;
//     final l$price = price;
//     final l$company_price = company_price;
//     final l$image_path = image_path;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$description,
//       l$price,
//       l$company_price,
//       l$image_path,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCarOilscar_oilsdataoil_productsoilEngine) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     final l$title = title;
//     final lOther$title = other.title;
//     if (l$title != lOther$title) {
//       return false;
//     }
//     final l$description = description;
//     final lOther$description = other.description;
//     if (l$description != lOther$description) {
//       return false;
//     }
//     final l$price = price;
//     final lOther$price = other.price;
//     if (l$price != lOther$price) {
//       return false;
//     }
//     final l$company_price = company_price;
//     final lOther$company_price = other.company_price;
//     if (l$company_price != lOther$company_price) {
//       return false;
//     }
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
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
// extension UtilityExtensionQueryCarOilscar_oilsdataoil_productsoilEngine
//     on QueryCarOilscar_oilsdataoil_productsoilEngine {
//   CopyWithQueryCarOilscar_oilsdataoil_productsoilEngine<
//           QueryCarOilscar_oilsdataoil_productsoilEngine>
//       get copyWith => CopyWithQueryCarOilscar_oilsdataoil_productsoilEngine(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryCarOilscar_oilsdataoil_productsoilEngine<TRes> {
//   factory CopyWithQueryCarOilscar_oilsdataoil_productsoilEngine(
//     QueryCarOilscar_oilsdataoil_productsoilEngine instance,
//     TRes Function(QueryCarOilscar_oilsdataoil_productsoilEngine) then,
//   ) = _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilEngine;
//
//   factory CopyWithQueryCarOilscar_oilsdataoil_productsoilEngine.stub(TRes res) =
//       _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilEngine;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? description,
//     double? price,
//     double? company_price,
//     String? image_path,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilEngine<TRes>
//     implements CopyWithQueryCarOilscar_oilsdataoil_productsoilEngine<TRes> {
//   _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilEngine(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarOilscar_oilsdataoil_productsoilEngine _instance;
//
//   final TRes Function(QueryCarOilscar_oilsdataoil_productsoilEngine) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? description = _undefined,
//     Object? price = _undefined,
//     Object? company_price = _undefined,
//     Object? image_path = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarOilscar_oilsdataoil_productsoilEngine(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined ? _instance.title : (title as String?),
//         description: description == _undefined
//             ? _instance.description
//             : (description as String?),
//         price: price == _undefined ? _instance.price : (price as double?),
//         company_price: company_price == _undefined
//             ? _instance.company_price
//             : (company_price as double?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilEngine<TRes>
//     implements CopyWithQueryCarOilscar_oilsdataoil_productsoilEngine<TRes> {
//   _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilEngine(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     String? description,
//     double? price,
//     double? company_price,
//     String? image_path,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryCarOilscar_oilsdataoil_productsoilManualTransmission {
//   QueryCarOilscar_oilsdataoil_productsoilManualTransmission({
//     required this.id,
//     this.title,
//     this.description,
//     this.price,
//     this.company_price,
//     this.image_path,
//     this.$__typename = 'Product',
//   });
//
//   factory QueryCarOilscar_oilsdataoil_productsoilManualTransmission.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$description = json['description'];
//     final l$price = json['price'];
//     final l$company_price = json['company_price'];
//     final l$image_path = json['image_path'];
//     final l$$__typename = json['__typename'];
//     return QueryCarOilscar_oilsdataoil_productsoilManualTransmission(
//       id: (l$id as String),
//       title: (l$title as String?),
//       description: (l$description as String?),
//       price: (l$price as num?)?.toDouble(),
//       company_price: (l$company_price as num?)?.toDouble(),
//       image_path: (l$image_path as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String? title;
//
//   final String? description;
//
//   final double? price;
//
//   final double? company_price;
//
//   final String? image_path;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$title = title;
//     _resultData['title'] = l$title;
//     final l$description = description;
//     _resultData['description'] = l$description;
//     final l$price = price;
//     _resultData['price'] = l$price;
//     final l$company_price = company_price;
//     _resultData['company_price'] = l$company_price;
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$title = title;
//     final l$description = description;
//     final l$price = price;
//     final l$company_price = company_price;
//     final l$image_path = image_path;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$description,
//       l$price,
//       l$company_price,
//       l$image_path,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCarOilscar_oilsdataoil_productsoilManualTransmission) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     final l$title = title;
//     final lOther$title = other.title;
//     if (l$title != lOther$title) {
//       return false;
//     }
//     final l$description = description;
//     final lOther$description = other.description;
//     if (l$description != lOther$description) {
//       return false;
//     }
//     final l$price = price;
//     final lOther$price = other.price;
//     if (l$price != lOther$price) {
//       return false;
//     }
//     final l$company_price = company_price;
//     final lOther$company_price = other.company_price;
//     if (l$company_price != lOther$company_price) {
//       return false;
//     }
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
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
// extension UtilityExtensionQueryCarOilscar_oilsdataoil_productsoilManualTransmission
//     on QueryCarOilscar_oilsdataoil_productsoilManualTransmission {
//   CopyWithQueryCarOilscar_oilsdataoil_productsoilManualTransmission<
//           QueryCarOilscar_oilsdataoil_productsoilManualTransmission>
//       get copyWith =>
//           CopyWithQueryCarOilscar_oilsdataoil_productsoilManualTransmission(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryCarOilscar_oilsdataoil_productsoilManualTransmission<
//     TRes> {
//   factory CopyWithQueryCarOilscar_oilsdataoil_productsoilManualTransmission(
//     QueryCarOilscar_oilsdataoil_productsoilManualTransmission instance,
//     TRes Function(QueryCarOilscar_oilsdataoil_productsoilManualTransmission)
//         then,
//   ) = _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilManualTransmission;
//
//   factory CopyWithQueryCarOilscar_oilsdataoil_productsoilManualTransmission.stub(
//           TRes res) =
//       _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilManualTransmission;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? description,
//     double? price,
//     double? company_price,
//     String? image_path,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilManualTransmission<
//         TRes>
//     implements
//         CopyWithQueryCarOilscar_oilsdataoil_productsoilManualTransmission<
//             TRes> {
//   _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilManualTransmission(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarOilscar_oilsdataoil_productsoilManualTransmission _instance;
//
//   final TRes Function(QueryCarOilscar_oilsdataoil_productsoilManualTransmission)
//       _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? description = _undefined,
//     Object? price = _undefined,
//     Object? company_price = _undefined,
//     Object? image_path = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarOilscar_oilsdataoil_productsoilManualTransmission(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined ? _instance.title : (title as String?),
//         description: description == _undefined
//             ? _instance.description
//             : (description as String?),
//         price: price == _undefined ? _instance.price : (price as double?),
//         company_price: company_price == _undefined
//             ? _instance.company_price
//             : (company_price as double?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilManualTransmission<
//         TRes>
//     implements
//         CopyWithQueryCarOilscar_oilsdataoil_productsoilManualTransmission<
//             TRes> {
//   _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilManualTransmission(
//       this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     String? description,
//     double? price,
//     double? company_price,
//     String? image_path,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryCarOilscar_oilsdataoil_productsoilPowerSteering {
//   QueryCarOilscar_oilsdataoil_productsoilPowerSteering({
//     required this.id,
//     this.title,
//     this.description,
//     this.price,
//     this.company_price,
//     this.image_path,
//     this.$__typename = 'Product',
//   });
//
//   factory QueryCarOilscar_oilsdataoil_productsoilPowerSteering.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$description = json['description'];
//     final l$price = json['price'];
//     final l$company_price = json['company_price'];
//     final l$image_path = json['image_path'];
//     final l$$__typename = json['__typename'];
//     return QueryCarOilscar_oilsdataoil_productsoilPowerSteering(
//       id: (l$id as String),
//       title: (l$title as String?),
//       description: (l$description as String?),
//       price: (l$price as num?)?.toDouble(),
//       company_price: (l$company_price as num?)?.toDouble(),
//       image_path: (l$image_path as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String? title;
//
//   final String? description;
//
//   final double? price;
//
//   final double? company_price;
//
//   final String? image_path;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$title = title;
//     _resultData['title'] = l$title;
//     final l$description = description;
//     _resultData['description'] = l$description;
//     final l$price = price;
//     _resultData['price'] = l$price;
//     final l$company_price = company_price;
//     _resultData['company_price'] = l$company_price;
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$title = title;
//     final l$description = description;
//     final l$price = price;
//     final l$company_price = company_price;
//     final l$image_path = image_path;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$description,
//       l$price,
//       l$company_price,
//       l$image_path,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCarOilscar_oilsdataoil_productsoilPowerSteering) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     final l$title = title;
//     final lOther$title = other.title;
//     if (l$title != lOther$title) {
//       return false;
//     }
//     final l$description = description;
//     final lOther$description = other.description;
//     if (l$description != lOther$description) {
//       return false;
//     }
//     final l$price = price;
//     final lOther$price = other.price;
//     if (l$price != lOther$price) {
//       return false;
//     }
//     final l$company_price = company_price;
//     final lOther$company_price = other.company_price;
//     if (l$company_price != lOther$company_price) {
//       return false;
//     }
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
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
// extension UtilityExtensionQueryCarOilscar_oilsdataoil_productsoilPowerSteering
//     on QueryCarOilscar_oilsdataoil_productsoilPowerSteering {
//   CopyWithQueryCarOilscar_oilsdataoil_productsoilPowerSteering<
//           QueryCarOilscar_oilsdataoil_productsoilPowerSteering>
//       get copyWith =>
//           CopyWithQueryCarOilscar_oilsdataoil_productsoilPowerSteering(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryCarOilscar_oilsdataoil_productsoilPowerSteering<
//     TRes> {
//   factory CopyWithQueryCarOilscar_oilsdataoil_productsoilPowerSteering(
//     QueryCarOilscar_oilsdataoil_productsoilPowerSteering instance,
//     TRes Function(QueryCarOilscar_oilsdataoil_productsoilPowerSteering) then,
//   ) = _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilPowerSteering;
//
//   factory CopyWithQueryCarOilscar_oilsdataoil_productsoilPowerSteering.stub(
//           TRes res) =
//       _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilPowerSteering;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? description,
//     double? price,
//     double? company_price,
//     String? image_path,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilPowerSteering<TRes>
//     implements
//         CopyWithQueryCarOilscar_oilsdataoil_productsoilPowerSteering<TRes> {
//   _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilPowerSteering(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarOilscar_oilsdataoil_productsoilPowerSteering _instance;
//
//   final TRes Function(QueryCarOilscar_oilsdataoil_productsoilPowerSteering)
//       _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? description = _undefined,
//     Object? price = _undefined,
//     Object? company_price = _undefined,
//     Object? image_path = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarOilscar_oilsdataoil_productsoilPowerSteering(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined ? _instance.title : (title as String?),
//         description: description == _undefined
//             ? _instance.description
//             : (description as String?),
//         price: price == _undefined ? _instance.price : (price as double?),
//         company_price: company_price == _undefined
//             ? _instance.company_price
//             : (company_price as double?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilPowerSteering<
//         TRes>
//     implements
//         CopyWithQueryCarOilscar_oilsdataoil_productsoilPowerSteering<TRes> {
//   _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilPowerSteering(
//       this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     String? description,
//     double? price,
//     double? company_price,
//     String? image_path,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryCarOilscar_oilsdataoil_productsoilTransferBox {
//   QueryCarOilscar_oilsdataoil_productsoilTransferBox({
//     required this.id,
//     this.title,
//     this.description,
//     this.price,
//     this.company_price,
//     this.image_path,
//     this.$__typename = 'Product',
//   });
//
//   factory QueryCarOilscar_oilsdataoil_productsoilTransferBox.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$description = json['description'];
//     final l$price = json['price'];
//     final l$company_price = json['company_price'];
//     final l$image_path = json['image_path'];
//     final l$$__typename = json['__typename'];
//     return QueryCarOilscar_oilsdataoil_productsoilTransferBox(
//       id: (l$id as String),
//       title: (l$title as String?),
//       description: (l$description as String?),
//       price: (l$price as num?)?.toDouble(),
//       company_price: (l$company_price as num?)?.toDouble(),
//       image_path: (l$image_path as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String? title;
//
//   final String? description;
//
//   final double? price;
//
//   final double? company_price;
//
//   final String? image_path;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$title = title;
//     _resultData['title'] = l$title;
//     final l$description = description;
//     _resultData['description'] = l$description;
//     final l$price = price;
//     _resultData['price'] = l$price;
//     final l$company_price = company_price;
//     _resultData['company_price'] = l$company_price;
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$title = title;
//     final l$description = description;
//     final l$price = price;
//     final l$company_price = company_price;
//     final l$image_path = image_path;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$description,
//       l$price,
//       l$company_price,
//       l$image_path,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCarOilscar_oilsdataoil_productsoilTransferBox) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     final l$title = title;
//     final lOther$title = other.title;
//     if (l$title != lOther$title) {
//       return false;
//     }
//     final l$description = description;
//     final lOther$description = other.description;
//     if (l$description != lOther$description) {
//       return false;
//     }
//     final l$price = price;
//     final lOther$price = other.price;
//     if (l$price != lOther$price) {
//       return false;
//     }
//     final l$company_price = company_price;
//     final lOther$company_price = other.company_price;
//     if (l$company_price != lOther$company_price) {
//       return false;
//     }
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
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
// extension UtilityExtensionQueryCarOilscar_oilsdataoil_productsoilTransferBox
//     on QueryCarOilscar_oilsdataoil_productsoilTransferBox {
//   CopyWithQueryCarOilscar_oilsdataoil_productsoilTransferBox<
//           QueryCarOilscar_oilsdataoil_productsoilTransferBox>
//       get copyWith =>
//           CopyWithQueryCarOilscar_oilsdataoil_productsoilTransferBox(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryCarOilscar_oilsdataoil_productsoilTransferBox<
//     TRes> {
//   factory CopyWithQueryCarOilscar_oilsdataoil_productsoilTransferBox(
//     QueryCarOilscar_oilsdataoil_productsoilTransferBox instance,
//     TRes Function(QueryCarOilscar_oilsdataoil_productsoilTransferBox) then,
//   ) = _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilTransferBox;
//
//   factory CopyWithQueryCarOilscar_oilsdataoil_productsoilTransferBox.stub(
//           TRes res) =
//       _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilTransferBox;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? description,
//     double? price,
//     double? company_price,
//     String? image_path,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilTransferBox<TRes>
//     implements
//         CopyWithQueryCarOilscar_oilsdataoil_productsoilTransferBox<TRes> {
//   _CopyWithImplQueryCarOilscar_oilsdataoil_productsoilTransferBox(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCarOilscar_oilsdataoil_productsoilTransferBox _instance;
//
//   final TRes Function(QueryCarOilscar_oilsdataoil_productsoilTransferBox) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? description = _undefined,
//     Object? price = _undefined,
//     Object? company_price = _undefined,
//     Object? image_path = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCarOilscar_oilsdataoil_productsoilTransferBox(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined ? _instance.title : (title as String?),
//         description: description == _undefined
//             ? _instance.description
//             : (description as String?),
//         price: price == _undefined ? _instance.price : (price as double?),
//         company_price: company_price == _undefined
//             ? _instance.company_price
//             : (company_price as double?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilTransferBox<TRes>
//     implements
//         CopyWithQueryCarOilscar_oilsdataoil_productsoilTransferBox<TRes> {
//   _CopyWithStubImplQueryCarOilscar_oilsdataoil_productsoilTransferBox(
//       this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     String? description,
//     double? price,
//     double? company_price,
//     String? image_path,
//     String? $__typename,
//   }) =>
//       _res;
// }
