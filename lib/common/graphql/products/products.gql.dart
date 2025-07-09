// import 'dart:async';
// import 'package:flutter/widgets.dart' as widgets;
// import 'package:gql/ast.dart';
// import 'package:graphql/client.dart' as graphql;
// import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
//
// class VariablesQueryProducts {
//   factory VariablesQueryProducts({int? page}) => VariablesQueryProducts._({
//         if (page != null) r'page': page,
//       });
//
//   VariablesQueryProducts._(this._$data);
//
//   factory VariablesQueryProducts.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     if (data.containsKey('page')) {
//       final l$page = data['page'];
//       result$data['page'] = (l$page as int?);
//     }
//     return VariablesQueryProducts._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   int? get page => (_$data['page'] as int?);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     if (_$data.containsKey('page')) {
//       final l$page = page;
//       result$data['page'] = l$page;
//     }
//     return result$data;
//   }
//
//   CopyWithVariablesQueryProducts<VariablesQueryProducts> get copyWith =>
//       CopyWithVariablesQueryProducts(
//         this,
//         (i) => i,
//       );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesQueryProducts) ||
//         runtimeType != other.runtimeType) {
//       return false;
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
//     final l$page = page;
//     return Object.hashAll([_$data.containsKey('page') ? l$page : const {}]);
//   }
// }
//
// abstract class CopyWithVariablesQueryProducts<TRes> {
//   factory CopyWithVariablesQueryProducts(
//     VariablesQueryProducts instance,
//     TRes Function(VariablesQueryProducts) then,
//   ) = _CopyWithImplVariablesQueryProducts;
//
//   factory CopyWithVariablesQueryProducts.stub(TRes res) =
//       _CopyWithStubImplVariablesQueryProducts;
//
//   TRes call({int? page});
// }
//
// class _CopyWithImplVariablesQueryProducts<TRes>
//     implements CopyWithVariablesQueryProducts<TRes> {
//   _CopyWithImplVariablesQueryProducts(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesQueryProducts _instance;
//
//   final TRes Function(VariablesQueryProducts) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? page = _undefined}) => _then(VariablesQueryProducts._({
//         ..._instance._$data,
//         if (page != _undefined) 'page': (page as int?),
//       }));
// }
//
// class _CopyWithStubImplVariablesQueryProducts<TRes>
//     implements CopyWithVariablesQueryProducts<TRes> {
//   _CopyWithStubImplVariablesQueryProducts(this._res);
//
//   TRes _res;
//
//   call({int? page}) => _res;
// }
//
// class QueryProducts {
//   QueryProducts({
//     this.products,
//     this.$__typename = 'Query',
//   });
//
//   factory QueryProducts.fromJson(Map<String, dynamic> json) {
//     final l$products = json['products'];
//     final l$$__typename = json['__typename'];
//     return QueryProducts(
//       products: l$products == null
//           ? null
//           : QueryProductsproducts.fromJson(
//               (l$products as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryProductsproducts? products;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$products = products;
//     _resultData['products'] = l$products?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$products = products;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$products,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryProducts) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$products = products;
//     final lOther$products = other.products;
//     if (l$products != lOther$products) {
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
// extension UtilityExtensionQueryProducts on QueryProducts {
//   CopyWithQueryProducts<QueryProducts> get copyWith => CopyWithQueryProducts(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryProducts<TRes> {
//   factory CopyWithQueryProducts(
//     QueryProducts instance,
//     TRes Function(QueryProducts) then,
//   ) = _CopyWithImplQueryProducts;
//
//   factory CopyWithQueryProducts.stub(TRes res) = _CopyWithStubImplQueryProducts;
//
//   TRes call({
//     QueryProductsproducts? products,
//     String? $__typename,
//   });
//   CopyWithQueryProductsproducts<TRes> get products;
// }
//
// class _CopyWithImplQueryProducts<TRes> implements CopyWithQueryProducts<TRes> {
//   _CopyWithImplQueryProducts(
//     this._instance,
//     this._then,
//   );
//
//   final QueryProducts _instance;
//
//   final TRes Function(QueryProducts) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? products = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryProducts(
//         products: products == _undefined
//             ? _instance.products
//             : (products as QueryProductsproducts?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryProductsproducts<TRes> get products {
//     final local$products = _instance.products;
//     return local$products == null
//         ? CopyWithQueryProductsproducts.stub(_then(_instance))
//         : CopyWithQueryProductsproducts(
//             local$products, (e) => call(products: e));
//   }
// }
//
// class _CopyWithStubImplQueryProducts<TRes>
//     implements CopyWithQueryProducts<TRes> {
//   _CopyWithStubImplQueryProducts(this._res);
//
//   TRes _res;
//
//   call({
//     QueryProductsproducts? products,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryProductsproducts<TRes> get products =>
//       CopyWithQueryProductsproducts.stub(_res);
// }
//
// const documentNodeQueryProducts = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.query,
//     name: NameNode(value: 'Products'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'page')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'Int'),
//           isNonNull: false,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       )
//     ],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'products'),
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
//                 name: NameNode(value: 'title'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'price'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'discount'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'image_path'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'company_price'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'tax'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: SelectionSetNode(selections: [
//                   FieldNode(
//                     name: NameNode(value: 'id'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'title'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
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
//                 name: NameNode(value: 'unit'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: SelectionSetNode(selections: [
//                   FieldNode(
//                     name: NameNode(value: 'id'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'title'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
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
//                 name: NameNode(value: 'description'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'categories'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: SelectionSetNode(selections: [
//                   FieldNode(
//                     name: NameNode(value: 'id'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'title'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
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
// QueryProducts _parserFnQueryProducts(Map<String, dynamic> data) =>
//     QueryProducts.fromJson(data);
// typedef OnQueryCompleteQueryProducts = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   QueryProducts?,
// );
//
// class OptionsQueryProducts extends graphql.QueryOptions<QueryProducts> {
//   OptionsQueryProducts({
//     String? operationName,
//     VariablesQueryProducts? variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryProducts? typedOptimisticResult,
//     Duration? pollInterval,
//     graphql.Context? context,
//     OnQueryCompleteQueryProducts? onComplete,
//     graphql.OnQueryError? onError,
//   })  : onCompleteWithParsed = onComplete,
//         super(
//           variables: variables?.toJson() ?? {},
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
//                     data == null ? null : _parserFnQueryProducts(data),
//                   ),
//           onError: onError,
//           document: documentNodeQueryProducts,
//           parserFn: _parserFnQueryProducts,
//         );
//
//   final OnQueryCompleteQueryProducts? onCompleteWithParsed;
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
// class WatchOptionsQueryProducts
//     extends graphql.WatchQueryOptions<QueryProducts> {
//   WatchOptionsQueryProducts({
//     String? operationName,
//     VariablesQueryProducts? variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryProducts? typedOptimisticResult,
//     graphql.Context? context,
//     Duration? pollInterval,
//     bool? eagerlyFetchResults,
//     bool carryForwardDataOnException = true,
//     bool fetchResults = false,
//   }) : super(
//           variables: variables?.toJson() ?? {},
//           operationName: operationName,
//           fetchPolicy: fetchPolicy,
//           errorPolicy: errorPolicy,
//           cacheRereadPolicy: cacheRereadPolicy,
//           optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//           context: context,
//           document: documentNodeQueryProducts,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnQueryProducts,
//         );
// }
//
// class FetchMoreOptionsQueryProducts extends graphql.FetchMoreOptions {
//   FetchMoreOptionsQueryProducts({
//     required graphql.UpdateQuery updateQuery,
//     VariablesQueryProducts? variables,
//   }) : super(
//           updateQuery: updateQuery,
//           variables: variables?.toJson() ?? {},
//           document: documentNodeQueryProducts,
//         );
// }
//
// extension ClientExtensionQueryProducts on graphql.GraphQLClient {
//   Future<graphql.QueryResult<QueryProducts>> queryProducts(
//           [OptionsQueryProducts? options]) async =>
//       await this.query(options ?? OptionsQueryProducts());
//   graphql.ObservableQuery<QueryProducts> watchQueryProducts(
//           [WatchOptionsQueryProducts? options]) =>
//       this.watchQuery(options ?? WatchOptionsQueryProducts());
//   void writeQueryProducts({
//     required QueryProducts data,
//     VariablesQueryProducts? variables,
//     bool broadcast = true,
//   }) =>
//       this.writeQuery(
//         graphql.Request(
//           operation: graphql.Operation(document: documentNodeQueryProducts),
//           variables: variables?.toJson() ?? const {},
//         ),
//         data: data.toJson(),
//         broadcast: broadcast,
//       );
//   QueryProducts? readQueryProducts({
//     VariablesQueryProducts? variables,
//     bool optimistic = true,
//   }) {
//     final result = this.readQuery(
//       graphql.Request(
//         operation: graphql.Operation(document: documentNodeQueryProducts),
//         variables: variables?.toJson() ?? const {},
//       ),
//       optimistic: optimistic,
//     );
//     return result == null ? null : QueryProducts.fromJson(result);
//   }
// }
//
// graphql_flutter.QueryHookResult<QueryProducts> useQueryProducts(
//         [OptionsQueryProducts? options]) =>
//     graphql_flutter.useQuery(options ?? OptionsQueryProducts());
// graphql.ObservableQuery<QueryProducts> useWatchQueryProducts(
//         [WatchOptionsQueryProducts? options]) =>
//     graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryProducts());
//
// class QueryProductsWidget extends graphql_flutter.Query<QueryProducts> {
//   QueryProductsWidget({
//     widgets.Key? key,
//     OptionsQueryProducts? options,
//     required graphql_flutter.QueryBuilder<QueryProducts> builder,
//   }) : super(
//           key: key,
//           options: options ?? OptionsQueryProducts(),
//           builder: builder,
//         );
// }
//
// class QueryProductsproducts {
//   QueryProductsproducts({
//     required this.paginatorInfo,
//     required this.data,
//     this.$__typename = 'ProductPaginator',
//   });
//
//   factory QueryProductsproducts.fromJson(Map<String, dynamic> json) {
//     final l$paginatorInfo = json['paginatorInfo'];
//     final l$data = json['data'];
//     final l$$__typename = json['__typename'];
//     return QueryProductsproducts(
//       paginatorInfo: QueryProductsproductspaginatorInfo.fromJson(
//           (l$paginatorInfo as Map<String, dynamic>)),
//       data: (l$data as List<dynamic>)
//           .map((e) =>
//               QueryProductsproductsdata.fromJson((e as Map<String, dynamic>)))
//           .toList(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryProductsproductspaginatorInfo paginatorInfo;
//
//   final List<QueryProductsproductsdata> data;
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
//     if (!(other is QueryProductsproducts) || runtimeType != other.runtimeType) {
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
// extension UtilityExtensionQueryProductsproducts on QueryProductsproducts {
//   CopyWithQueryProductsproducts<QueryProductsproducts> get copyWith =>
//       CopyWithQueryProductsproducts(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryProductsproducts<TRes> {
//   factory CopyWithQueryProductsproducts(
//     QueryProductsproducts instance,
//     TRes Function(QueryProductsproducts) then,
//   ) = _CopyWithImplQueryProductsproducts;
//
//   factory CopyWithQueryProductsproducts.stub(TRes res) =
//       _CopyWithStubImplQueryProductsproducts;
//
//   TRes call({
//     QueryProductsproductspaginatorInfo? paginatorInfo,
//     List<QueryProductsproductsdata>? data,
//     String? $__typename,
//   });
//   CopyWithQueryProductsproductspaginatorInfo<TRes> get paginatorInfo;
//   TRes data(
//       Iterable<QueryProductsproductsdata> Function(
//               Iterable<
//                   CopyWithQueryProductsproductsdata<QueryProductsproductsdata>>)
//           _fn);
// }
//
// class _CopyWithImplQueryProductsproducts<TRes>
//     implements CopyWithQueryProductsproducts<TRes> {
//   _CopyWithImplQueryProductsproducts(
//     this._instance,
//     this._then,
//   );
//
//   final QueryProductsproducts _instance;
//
//   final TRes Function(QueryProductsproducts) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? paginatorInfo = _undefined,
//     Object? data = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryProductsproducts(
//         paginatorInfo: paginatorInfo == _undefined || paginatorInfo == null
//             ? _instance.paginatorInfo
//             : (paginatorInfo as QueryProductsproductspaginatorInfo),
//         data: data == _undefined || data == null
//             ? _instance.data
//             : (data as List<QueryProductsproductsdata>),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryProductsproductspaginatorInfo<TRes> get paginatorInfo {
//     final local$paginatorInfo = _instance.paginatorInfo;
//     return CopyWithQueryProductsproductspaginatorInfo(
//         local$paginatorInfo, (e) => call(paginatorInfo: e));
//   }
//
//   TRes data(
//           Iterable<QueryProductsproductsdata> Function(
//                   Iterable<
//                       CopyWithQueryProductsproductsdata<
//                           QueryProductsproductsdata>>)
//               _fn) =>
//       call(
//           data: _fn(_instance.data.map((e) => CopyWithQueryProductsproductsdata(
//                 e,
//                 (i) => i,
//               ))).toList());
// }
//
// class _CopyWithStubImplQueryProductsproducts<TRes>
//     implements CopyWithQueryProductsproducts<TRes> {
//   _CopyWithStubImplQueryProductsproducts(this._res);
//
//   TRes _res;
//
//   call({
//     QueryProductsproductspaginatorInfo? paginatorInfo,
//     List<QueryProductsproductsdata>? data,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryProductsproductspaginatorInfo<TRes> get paginatorInfo =>
//       CopyWithQueryProductsproductspaginatorInfo.stub(_res);
//
//   data(_fn) => _res;
// }
//
// class QueryProductsproductspaginatorInfo {
//   QueryProductsproductspaginatorInfo({
//     required this.count,
//     required this.currentPage,
//     required this.total,
//     required this.lastPage,
//     required this.hasMorePages,
//     this.$__typename = 'PaginatorInfo',
//   });
//
//   factory QueryProductsproductspaginatorInfo.fromJson(
//       Map<String, dynamic> json) {
//     final l$count = json['count'];
//     final l$currentPage = json['currentPage'];
//     final l$total = json['total'];
//     final l$lastPage = json['lastPage'];
//     final l$hasMorePages = json['hasMorePages'];
//     final l$$__typename = json['__typename'];
//     return QueryProductsproductspaginatorInfo(
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
//     if (!(other is QueryProductsproductspaginatorInfo) ||
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
// extension UtilityExtensionQueryProductsproductspaginatorInfo
//     on QueryProductsproductspaginatorInfo {
//   CopyWithQueryProductsproductspaginatorInfo<QueryProductsproductspaginatorInfo>
//       get copyWith => CopyWithQueryProductsproductspaginatorInfo(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryProductsproductspaginatorInfo<TRes> {
//   factory CopyWithQueryProductsproductspaginatorInfo(
//     QueryProductsproductspaginatorInfo instance,
//     TRes Function(QueryProductsproductspaginatorInfo) then,
//   ) = _CopyWithImplQueryProductsproductspaginatorInfo;
//
//   factory CopyWithQueryProductsproductspaginatorInfo.stub(TRes res) =
//       _CopyWithStubImplQueryProductsproductspaginatorInfo;
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
// class _CopyWithImplQueryProductsproductspaginatorInfo<TRes>
//     implements CopyWithQueryProductsproductspaginatorInfo<TRes> {
//   _CopyWithImplQueryProductsproductspaginatorInfo(
//     this._instance,
//     this._then,
//   );
//
//   final QueryProductsproductspaginatorInfo _instance;
//
//   final TRes Function(QueryProductsproductspaginatorInfo) _then;
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
//       _then(QueryProductsproductspaginatorInfo(
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
// class _CopyWithStubImplQueryProductsproductspaginatorInfo<TRes>
//     implements CopyWithQueryProductsproductspaginatorInfo<TRes> {
//   _CopyWithStubImplQueryProductsproductspaginatorInfo(this._res);
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
// class QueryProductsproductsdata {
//   QueryProductsproductsdata({
//     required this.id,
//     this.title,
//     this.price,
//     this.discount,
//     this.image_path,
//     this.company_price,
//     this.tax,
//     this.unit,
//     this.description,
//     this.categories,
//     this.$__typename = 'Product',
//   });
//
//   factory QueryProductsproductsdata.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$price = json['price'];
//     final l$discount = json['discount'];
//     final l$image_path = json['image_path'];
//     final l$company_price = json['company_price'];
//     final l$tax = json['tax'];
//     final l$unit = json['unit'];
//     final l$description = json['description'];
//     final l$categories = json['categories'];
//     final l$$__typename = json['__typename'];
//     return QueryProductsproductsdata(
//       id: (l$id as String),
//       title: (l$title as String?),
//       price: (l$price as num?)?.toDouble(),
//       discount: (l$discount as num?)?.toDouble(),
//       image_path: (l$image_path as String?),
//       company_price: (l$company_price as num?)?.toDouble(),
//       tax: l$tax == null
//           ? null
//           : QueryProductsproductsdatatax.fromJson(
//               (l$tax as Map<String, dynamic>)),
//       unit: l$unit == null
//           ? null
//           : QueryProductsproductsdataunit.fromJson(
//               (l$unit as Map<String, dynamic>)),
//       description: (l$description as String?),
//       categories: (l$categories as List<dynamic>?)
//           ?.map((e) => e == null
//               ? null
//               : QueryProductsproductsdatacategories.fromJson(
//                   (e as Map<String, dynamic>)))
//           .toList(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String? title;
//
//   final double? price;
//
//   final double? discount;
//
//   final String? image_path;
//
//   final double? company_price;
//
//   final QueryProductsproductsdatatax? tax;
//
//   final QueryProductsproductsdataunit? unit;
//
//   final String? description;
//
//   final List<QueryProductsproductsdatacategories?>? categories;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$title = title;
//     _resultData['title'] = l$title;
//     final l$price = price;
//     _resultData['price'] = l$price;
//     final l$discount = discount;
//     _resultData['discount'] = l$discount;
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$company_price = company_price;
//     _resultData['company_price'] = l$company_price;
//     final l$tax = tax;
//     _resultData['tax'] = l$tax?.toJson();
//     final l$unit = unit;
//     _resultData['unit'] = l$unit?.toJson();
//     final l$description = description;
//     _resultData['description'] = l$description;
//     final l$categories = categories;
//     _resultData['categories'] = l$categories?.map((e) => e?.toJson()).toList();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$title = title;
//     final l$price = price;
//     final l$discount = discount;
//     final l$image_path = image_path;
//     final l$company_price = company_price;
//     final l$tax = tax;
//     final l$unit = unit;
//     final l$description = description;
//     final l$categories = categories;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$price,
//       l$discount,
//       l$image_path,
//       l$company_price,
//       l$tax,
//       l$unit,
//       l$description,
//       l$categories == null ? null : Object.hashAll(l$categories.map((v) => v)),
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryProductsproductsdata) ||
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
//     final l$price = price;
//     final lOther$price = other.price;
//     if (l$price != lOther$price) {
//       return false;
//     }
//     final l$discount = discount;
//     final lOther$discount = other.discount;
//     if (l$discount != lOther$discount) {
//       return false;
//     }
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
//       return false;
//     }
//     final l$company_price = company_price;
//     final lOther$company_price = other.company_price;
//     if (l$company_price != lOther$company_price) {
//       return false;
//     }
//     final l$tax = tax;
//     final lOther$tax = other.tax;
//     if (l$tax != lOther$tax) {
//       return false;
//     }
//     final l$unit = unit;
//     final lOther$unit = other.unit;
//     if (l$unit != lOther$unit) {
//       return false;
//     }
//     final l$description = description;
//     final lOther$description = other.description;
//     if (l$description != lOther$description) {
//       return false;
//     }
//     final l$categories = categories;
//     final lOther$categories = other.categories;
//     if (l$categories != null && lOther$categories != null) {
//       if (l$categories.length != lOther$categories.length) {
//         return false;
//       }
//       for (int i = 0; i < l$categories.length; i++) {
//         final l$categories$entry = l$categories[i];
//         final lOther$categories$entry = lOther$categories[i];
//         if (l$categories$entry != lOther$categories$entry) {
//           return false;
//         }
//       }
//     } else if (l$categories != lOther$categories) {
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
// extension UtilityExtensionQueryProductsproductsdata
//     on QueryProductsproductsdata {
//   CopyWithQueryProductsproductsdata<QueryProductsproductsdata> get copyWith =>
//       CopyWithQueryProductsproductsdata(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryProductsproductsdata<TRes> {
//   factory CopyWithQueryProductsproductsdata(
//     QueryProductsproductsdata instance,
//     TRes Function(QueryProductsproductsdata) then,
//   ) = _CopyWithImplQueryProductsproductsdata;
//
//   factory CopyWithQueryProductsproductsdata.stub(TRes res) =
//       _CopyWithStubImplQueryProductsproductsdata;
//
//   TRes call({
//     String? id,
//     String? title,
//     double? price,
//     double? discount,
//     String? image_path,
//     double? company_price,
//     QueryProductsproductsdatatax? tax,
//     QueryProductsproductsdataunit? unit,
//     String? description,
//     List<QueryProductsproductsdatacategories?>? categories,
//     String? $__typename,
//   });
//   CopyWithQueryProductsproductsdatatax<TRes> get tax;
//   CopyWithQueryProductsproductsdataunit<TRes> get unit;
//   TRes categories(
//       Iterable<QueryProductsproductsdatacategories?>? Function(
//               Iterable<
//                   CopyWithQueryProductsproductsdatacategories<
//                       QueryProductsproductsdatacategories>?>?)
//           _fn);
// }
//
// class _CopyWithImplQueryProductsproductsdata<TRes>
//     implements CopyWithQueryProductsproductsdata<TRes> {
//   _CopyWithImplQueryProductsproductsdata(
//     this._instance,
//     this._then,
//   );
//
//   final QueryProductsproductsdata _instance;
//
//   final TRes Function(QueryProductsproductsdata) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? price = _undefined,
//     Object? discount = _undefined,
//     Object? image_path = _undefined,
//     Object? company_price = _undefined,
//     Object? tax = _undefined,
//     Object? unit = _undefined,
//     Object? description = _undefined,
//     Object? categories = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryProductsproductsdata(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined ? _instance.title : (title as String?),
//         price: price == _undefined ? _instance.price : (price as double?),
//         discount:
//             discount == _undefined ? _instance.discount : (discount as double?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         company_price: company_price == _undefined
//             ? _instance.company_price
//             : (company_price as double?),
//         tax: tax == _undefined
//             ? _instance.tax
//             : (tax as QueryProductsproductsdatatax?),
//         unit: unit == _undefined
//             ? _instance.unit
//             : (unit as QueryProductsproductsdataunit?),
//         description: description == _undefined
//             ? _instance.description
//             : (description as String?),
//         categories: categories == _undefined
//             ? _instance.categories
//             : (categories as List<QueryProductsproductsdatacategories?>?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryProductsproductsdatatax<TRes> get tax {
//     final local$tax = _instance.tax;
//     return local$tax == null
//         ? CopyWithQueryProductsproductsdatatax.stub(_then(_instance))
//         : CopyWithQueryProductsproductsdatatax(local$tax, (e) => call(tax: e));
//   }
//
//   CopyWithQueryProductsproductsdataunit<TRes> get unit {
//     final local$unit = _instance.unit;
//     return local$unit == null
//         ? CopyWithQueryProductsproductsdataunit.stub(_then(_instance))
//         : CopyWithQueryProductsproductsdataunit(
//             local$unit, (e) => call(unit: e));
//   }
//
//   TRes categories(
//           Iterable<QueryProductsproductsdatacategories?>? Function(
//                   Iterable<
//                       CopyWithQueryProductsproductsdatacategories<
//                           QueryProductsproductsdatacategories>?>?)
//               _fn) =>
//       call(
//           categories: _fn(_instance.categories?.map((e) => e == null
//               ? null
//               : CopyWithQueryProductsproductsdatacategories(
//                   e,
//                   (i) => i,
//                 )))?.toList());
// }
//
// class _CopyWithStubImplQueryProductsproductsdata<TRes>
//     implements CopyWithQueryProductsproductsdata<TRes> {
//   _CopyWithStubImplQueryProductsproductsdata(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     double? price,
//     double? discount,
//     String? image_path,
//     double? company_price,
//     QueryProductsproductsdatatax? tax,
//     QueryProductsproductsdataunit? unit,
//     String? description,
//     List<QueryProductsproductsdatacategories?>? categories,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryProductsproductsdatatax<TRes> get tax =>
//       CopyWithQueryProductsproductsdatatax.stub(_res);
//
//   CopyWithQueryProductsproductsdataunit<TRes> get unit =>
//       CopyWithQueryProductsproductsdataunit.stub(_res);
//
//   categories(_fn) => _res;
// }
//
// class QueryProductsproductsdatatax {
//   QueryProductsproductsdatatax({
//     required this.id,
//     required this.title,
//     this.$__typename = 'Tax',
//   });
//
//   factory QueryProductsproductsdatatax.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$$__typename = json['__typename'];
//     return QueryProductsproductsdatatax(
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
//     if (!(other is QueryProductsproductsdatatax) ||
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
// extension UtilityExtensionQueryProductsproductsdatatax
//     on QueryProductsproductsdatatax {
//   CopyWithQueryProductsproductsdatatax<QueryProductsproductsdatatax>
//       get copyWith => CopyWithQueryProductsproductsdatatax(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryProductsproductsdatatax<TRes> {
//   factory CopyWithQueryProductsproductsdatatax(
//     QueryProductsproductsdatatax instance,
//     TRes Function(QueryProductsproductsdatatax) then,
//   ) = _CopyWithImplQueryProductsproductsdatatax;
//
//   factory CopyWithQueryProductsproductsdatatax.stub(TRes res) =
//       _CopyWithStubImplQueryProductsproductsdatatax;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryProductsproductsdatatax<TRes>
//     implements CopyWithQueryProductsproductsdatatax<TRes> {
//   _CopyWithImplQueryProductsproductsdatatax(
//     this._instance,
//     this._then,
//   );
//
//   final QueryProductsproductsdatatax _instance;
//
//   final TRes Function(QueryProductsproductsdatatax) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryProductsproductsdatatax(
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
// class _CopyWithStubImplQueryProductsproductsdatatax<TRes>
//     implements CopyWithQueryProductsproductsdatatax<TRes> {
//   _CopyWithStubImplQueryProductsproductsdatatax(this._res);
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
// class QueryProductsproductsdataunit {
//   QueryProductsproductsdataunit({
//     required this.id,
//     required this.title,
//     this.$__typename = 'Unit',
//   });
//
//   factory QueryProductsproductsdataunit.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$$__typename = json['__typename'];
//     return QueryProductsproductsdataunit(
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
//     if (!(other is QueryProductsproductsdataunit) ||
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
// extension UtilityExtensionQueryProductsproductsdataunit
//     on QueryProductsproductsdataunit {
//   CopyWithQueryProductsproductsdataunit<QueryProductsproductsdataunit>
//       get copyWith => CopyWithQueryProductsproductsdataunit(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryProductsproductsdataunit<TRes> {
//   factory CopyWithQueryProductsproductsdataunit(
//     QueryProductsproductsdataunit instance,
//     TRes Function(QueryProductsproductsdataunit) then,
//   ) = _CopyWithImplQueryProductsproductsdataunit;
//
//   factory CopyWithQueryProductsproductsdataunit.stub(TRes res) =
//       _CopyWithStubImplQueryProductsproductsdataunit;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryProductsproductsdataunit<TRes>
//     implements CopyWithQueryProductsproductsdataunit<TRes> {
//   _CopyWithImplQueryProductsproductsdataunit(
//     this._instance,
//     this._then,
//   );
//
//   final QueryProductsproductsdataunit _instance;
//
//   final TRes Function(QueryProductsproductsdataunit) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryProductsproductsdataunit(
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
// class _CopyWithStubImplQueryProductsproductsdataunit<TRes>
//     implements CopyWithQueryProductsproductsdataunit<TRes> {
//   _CopyWithStubImplQueryProductsproductsdataunit(this._res);
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
// class QueryProductsproductsdatacategories {
//   QueryProductsproductsdatacategories({
//     required this.id,
//     required this.title,
//     this.$__typename = 'Category',
//   });
//
//   factory QueryProductsproductsdatacategories.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$$__typename = json['__typename'];
//     return QueryProductsproductsdatacategories(
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
//     if (!(other is QueryProductsproductsdatacategories) ||
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
// extension UtilityExtensionQueryProductsproductsdatacategories
//     on QueryProductsproductsdatacategories {
//   CopyWithQueryProductsproductsdatacategories<
//           QueryProductsproductsdatacategories>
//       get copyWith => CopyWithQueryProductsproductsdatacategories(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryProductsproductsdatacategories<TRes> {
//   factory CopyWithQueryProductsproductsdatacategories(
//     QueryProductsproductsdatacategories instance,
//     TRes Function(QueryProductsproductsdatacategories) then,
//   ) = _CopyWithImplQueryProductsproductsdatacategories;
//
//   factory CopyWithQueryProductsproductsdatacategories.stub(TRes res) =
//       _CopyWithStubImplQueryProductsproductsdatacategories;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryProductsproductsdatacategories<TRes>
//     implements CopyWithQueryProductsproductsdatacategories<TRes> {
//   _CopyWithImplQueryProductsproductsdatacategories(
//     this._instance,
//     this._then,
//   );
//
//   final QueryProductsproductsdatacategories _instance;
//
//   final TRes Function(QueryProductsproductsdatacategories) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryProductsproductsdatacategories(
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
// class _CopyWithStubImplQueryProductsproductsdatacategories<TRes>
//     implements CopyWithQueryProductsproductsdatacategories<TRes> {
//   _CopyWithStubImplQueryProductsproductsdatacategories(this._res);
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
// class VariablesQueryCategories {
//   factory VariablesQueryCategories({int? page}) => VariablesQueryCategories._({
//         if (page != null) r'page': page,
//       });
//
//   VariablesQueryCategories._(this._$data);
//
//   factory VariablesQueryCategories.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     if (data.containsKey('page')) {
//       final l$page = data['page'];
//       result$data['page'] = (l$page as int?);
//     }
//     return VariablesQueryCategories._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   int? get page => (_$data['page'] as int?);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     if (_$data.containsKey('page')) {
//       final l$page = page;
//       result$data['page'] = l$page;
//     }
//     return result$data;
//   }
//
//   CopyWithVariablesQueryCategories<VariablesQueryCategories> get copyWith =>
//       CopyWithVariablesQueryCategories(
//         this,
//         (i) => i,
//       );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesQueryCategories) ||
//         runtimeType != other.runtimeType) {
//       return false;
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
//     final l$page = page;
//     return Object.hashAll([_$data.containsKey('page') ? l$page : const {}]);
//   }
// }
//
// abstract class CopyWithVariablesQueryCategories<TRes> {
//   factory CopyWithVariablesQueryCategories(
//     VariablesQueryCategories instance,
//     TRes Function(VariablesQueryCategories) then,
//   ) = _CopyWithImplVariablesQueryCategories;
//
//   factory CopyWithVariablesQueryCategories.stub(TRes res) =
//       _CopyWithStubImplVariablesQueryCategories;
//
//   TRes call({int? page});
// }
//
// class _CopyWithImplVariablesQueryCategories<TRes>
//     implements CopyWithVariablesQueryCategories<TRes> {
//   _CopyWithImplVariablesQueryCategories(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesQueryCategories _instance;
//
//   final TRes Function(VariablesQueryCategories) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? page = _undefined}) => _then(VariablesQueryCategories._({
//         ..._instance._$data,
//         if (page != _undefined) 'page': (page as int?),
//       }));
// }
//
// class _CopyWithStubImplVariablesQueryCategories<TRes>
//     implements CopyWithVariablesQueryCategories<TRes> {
//   _CopyWithStubImplVariablesQueryCategories(this._res);
//
//   TRes _res;
//
//   call({int? page}) => _res;
// }
//
// class QueryCategories {
//   QueryCategories({
//     this.categories,
//     this.$__typename = 'Query',
//   });
//
//   factory QueryCategories.fromJson(Map<String, dynamic> json) {
//     final l$categories = json['categories'];
//     final l$$__typename = json['__typename'];
//     return QueryCategories(
//       categories: l$categories == null
//           ? null
//           : QueryCategoriescategories.fromJson(
//               (l$categories as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryCategoriescategories? categories;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$categories = categories;
//     _resultData['categories'] = l$categories?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$categories = categories;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$categories,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCategories) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$categories = categories;
//     final lOther$categories = other.categories;
//     if (l$categories != lOther$categories) {
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
// extension UtilityExtensionQueryCategories on QueryCategories {
//   CopyWithQueryCategories<QueryCategories> get copyWith =>
//       CopyWithQueryCategories(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryCategories<TRes> {
//   factory CopyWithQueryCategories(
//     QueryCategories instance,
//     TRes Function(QueryCategories) then,
//   ) = _CopyWithImplQueryCategories;
//
//   factory CopyWithQueryCategories.stub(TRes res) =
//       _CopyWithStubImplQueryCategories;
//
//   TRes call({
//     QueryCategoriescategories? categories,
//     String? $__typename,
//   });
//   CopyWithQueryCategoriescategories<TRes> get categories;
// }
//
// class _CopyWithImplQueryCategories<TRes>
//     implements CopyWithQueryCategories<TRes> {
//   _CopyWithImplQueryCategories(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCategories _instance;
//
//   final TRes Function(QueryCategories) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? categories = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCategories(
//         categories: categories == _undefined
//             ? _instance.categories
//             : (categories as QueryCategoriescategories?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryCategoriescategories<TRes> get categories {
//     final local$categories = _instance.categories;
//     return local$categories == null
//         ? CopyWithQueryCategoriescategories.stub(_then(_instance))
//         : CopyWithQueryCategoriescategories(
//             local$categories, (e) => call(categories: e));
//   }
// }
//
// class _CopyWithStubImplQueryCategories<TRes>
//     implements CopyWithQueryCategories<TRes> {
//   _CopyWithStubImplQueryCategories(this._res);
//
//   TRes _res;
//
//   call({
//     QueryCategoriescategories? categories,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryCategoriescategories<TRes> get categories =>
//       CopyWithQueryCategoriescategories.stub(_res);
// }
//
// const documentNodeQueryCategories = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.query,
//     name: NameNode(value: 'Categories'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'page')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'Int'),
//           isNonNull: false,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       )
//     ],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'categories'),
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
//                 name: NameNode(value: 'title'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'image_path'),
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
// QueryCategories _parserFnQueryCategories(Map<String, dynamic> data) =>
//     QueryCategories.fromJson(data);
// typedef OnQueryCompleteQueryCategories = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   QueryCategories?,
// );
//
// class OptionsQueryCategories extends graphql.QueryOptions<QueryCategories> {
//   OptionsQueryCategories({
//     String? operationName,
//     VariablesQueryCategories? variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryCategories? typedOptimisticResult,
//     Duration? pollInterval,
//     graphql.Context? context,
//     OnQueryCompleteQueryCategories? onComplete,
//     graphql.OnQueryError? onError,
//   })  : onCompleteWithParsed = onComplete,
//         super(
//           variables: variables?.toJson() ?? {},
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
//                     data == null ? null : _parserFnQueryCategories(data),
//                   ),
//           onError: onError,
//           document: documentNodeQueryCategories,
//           parserFn: _parserFnQueryCategories,
//         );
//
//   final OnQueryCompleteQueryCategories? onCompleteWithParsed;
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
// class WatchOptionsQueryCategories
//     extends graphql.WatchQueryOptions<QueryCategories> {
//   WatchOptionsQueryCategories({
//     String? operationName,
//     VariablesQueryCategories? variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryCategories? typedOptimisticResult,
//     graphql.Context? context,
//     Duration? pollInterval,
//     bool? eagerlyFetchResults,
//     bool carryForwardDataOnException = true,
//     bool fetchResults = false,
//   }) : super(
//           variables: variables?.toJson() ?? {},
//           operationName: operationName,
//           fetchPolicy: fetchPolicy,
//           errorPolicy: errorPolicy,
//           cacheRereadPolicy: cacheRereadPolicy,
//           optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//           context: context,
//           document: documentNodeQueryCategories,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnQueryCategories,
//         );
// }
//
// class FetchMoreOptionsQueryCategories extends graphql.FetchMoreOptions {
//   FetchMoreOptionsQueryCategories({
//     required graphql.UpdateQuery updateQuery,
//     VariablesQueryCategories? variables,
//   }) : super(
//           updateQuery: updateQuery,
//           variables: variables?.toJson() ?? {},
//           document: documentNodeQueryCategories,
//         );
// }
//
// extension ClientExtensionQueryCategories on graphql.GraphQLClient {
//   Future<graphql.QueryResult<QueryCategories>> queryCategories(
//           [OptionsQueryCategories? options]) async =>
//       await this.query(options ?? OptionsQueryCategories());
//   graphql.ObservableQuery<QueryCategories> watchQueryCategories(
//           [WatchOptionsQueryCategories? options]) =>
//       this.watchQuery(options ?? WatchOptionsQueryCategories());
//   void writeQueryCategories({
//     required QueryCategories data,
//     VariablesQueryCategories? variables,
//     bool broadcast = true,
//   }) =>
//       this.writeQuery(
//         graphql.Request(
//           operation: graphql.Operation(document: documentNodeQueryCategories),
//           variables: variables?.toJson() ?? const {},
//         ),
//         data: data.toJson(),
//         broadcast: broadcast,
//       );
//   QueryCategories? readQueryCategories({
//     VariablesQueryCategories? variables,
//     bool optimistic = true,
//   }) {
//     final result = this.readQuery(
//       graphql.Request(
//         operation: graphql.Operation(document: documentNodeQueryCategories),
//         variables: variables?.toJson() ?? const {},
//       ),
//       optimistic: optimistic,
//     );
//     return result == null ? null : QueryCategories.fromJson(result);
//   }
// }
//
// graphql_flutter.QueryHookResult<QueryCategories> useQueryCategories(
//         [OptionsQueryCategories? options]) =>
//     graphql_flutter.useQuery(options ?? OptionsQueryCategories());
// graphql.ObservableQuery<QueryCategories> useWatchQueryCategories(
//         [WatchOptionsQueryCategories? options]) =>
//     graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryCategories());
//
// class QueryCategoriesWidget extends graphql_flutter.Query<QueryCategories> {
//   QueryCategoriesWidget({
//     widgets.Key? key,
//     OptionsQueryCategories? options,
//     required graphql_flutter.QueryBuilder<QueryCategories> builder,
//   }) : super(
//           key: key,
//           options: options ?? OptionsQueryCategories(),
//           builder: builder,
//         );
// }
//
// class QueryCategoriescategories {
//   QueryCategoriescategories({
//     required this.paginatorInfo,
//     required this.data,
//     this.$__typename = 'CategoryPaginator',
//   });
//
//   factory QueryCategoriescategories.fromJson(Map<String, dynamic> json) {
//     final l$paginatorInfo = json['paginatorInfo'];
//     final l$data = json['data'];
//     final l$$__typename = json['__typename'];
//     return QueryCategoriescategories(
//       paginatorInfo: QueryCategoriescategoriespaginatorInfo.fromJson(
//           (l$paginatorInfo as Map<String, dynamic>)),
//       data: (l$data as List<dynamic>)
//           .map((e) => QueryCategoriescategoriesdata.fromJson(
//               (e as Map<String, dynamic>)))
//           .toList(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryCategoriescategoriespaginatorInfo paginatorInfo;
//
//   final List<QueryCategoriescategoriesdata> data;
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
//     if (!(other is QueryCategoriescategories) ||
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
// extension UtilityExtensionQueryCategoriescategories
//     on QueryCategoriescategories {
//   CopyWithQueryCategoriescategories<QueryCategoriescategories> get copyWith =>
//       CopyWithQueryCategoriescategories(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryCategoriescategories<TRes> {
//   factory CopyWithQueryCategoriescategories(
//     QueryCategoriescategories instance,
//     TRes Function(QueryCategoriescategories) then,
//   ) = _CopyWithImplQueryCategoriescategories;
//
//   factory CopyWithQueryCategoriescategories.stub(TRes res) =
//       _CopyWithStubImplQueryCategoriescategories;
//
//   TRes call({
//     QueryCategoriescategoriespaginatorInfo? paginatorInfo,
//     List<QueryCategoriescategoriesdata>? data,
//     String? $__typename,
//   });
//   CopyWithQueryCategoriescategoriespaginatorInfo<TRes> get paginatorInfo;
//   TRes data(
//       Iterable<QueryCategoriescategoriesdata> Function(
//               Iterable<
//                   CopyWithQueryCategoriescategoriesdata<
//                       QueryCategoriescategoriesdata>>)
//           _fn);
// }
//
// class _CopyWithImplQueryCategoriescategories<TRes>
//     implements CopyWithQueryCategoriescategories<TRes> {
//   _CopyWithImplQueryCategoriescategories(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCategoriescategories _instance;
//
//   final TRes Function(QueryCategoriescategories) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? paginatorInfo = _undefined,
//     Object? data = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCategoriescategories(
//         paginatorInfo: paginatorInfo == _undefined || paginatorInfo == null
//             ? _instance.paginatorInfo
//             : (paginatorInfo as QueryCategoriescategoriespaginatorInfo),
//         data: data == _undefined || data == null
//             ? _instance.data
//             : (data as List<QueryCategoriescategoriesdata>),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryCategoriescategoriespaginatorInfo<TRes> get paginatorInfo {
//     final local$paginatorInfo = _instance.paginatorInfo;
//     return CopyWithQueryCategoriescategoriespaginatorInfo(
//         local$paginatorInfo, (e) => call(paginatorInfo: e));
//   }
//
//   TRes data(
//           Iterable<QueryCategoriescategoriesdata> Function(
//                   Iterable<
//                       CopyWithQueryCategoriescategoriesdata<
//                           QueryCategoriescategoriesdata>>)
//               _fn) =>
//       call(
//           data: _fn(
//               _instance.data.map((e) => CopyWithQueryCategoriescategoriesdata(
//                     e,
//                     (i) => i,
//                   ))).toList());
// }
//
// class _CopyWithStubImplQueryCategoriescategories<TRes>
//     implements CopyWithQueryCategoriescategories<TRes> {
//   _CopyWithStubImplQueryCategoriescategories(this._res);
//
//   TRes _res;
//
//   call({
//     QueryCategoriescategoriespaginatorInfo? paginatorInfo,
//     List<QueryCategoriescategoriesdata>? data,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryCategoriescategoriespaginatorInfo<TRes> get paginatorInfo =>
//       CopyWithQueryCategoriescategoriespaginatorInfo.stub(_res);
//
//   data(_fn) => _res;
// }
//
// class QueryCategoriescategoriespaginatorInfo {
//   QueryCategoriescategoriespaginatorInfo({
//     required this.count,
//     required this.currentPage,
//     required this.total,
//     required this.lastPage,
//     required this.hasMorePages,
//     this.$__typename = 'PaginatorInfo',
//   });
//
//   factory QueryCategoriescategoriespaginatorInfo.fromJson(
//       Map<String, dynamic> json) {
//     final l$count = json['count'];
//     final l$currentPage = json['currentPage'];
//     final l$total = json['total'];
//     final l$lastPage = json['lastPage'];
//     final l$hasMorePages = json['hasMorePages'];
//     final l$$__typename = json['__typename'];
//     return QueryCategoriescategoriespaginatorInfo(
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
//     if (!(other is QueryCategoriescategoriespaginatorInfo) ||
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
// extension UtilityExtensionQueryCategoriescategoriespaginatorInfo
//     on QueryCategoriescategoriespaginatorInfo {
//   CopyWithQueryCategoriescategoriespaginatorInfo<
//           QueryCategoriescategoriespaginatorInfo>
//       get copyWith => CopyWithQueryCategoriescategoriespaginatorInfo(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryCategoriescategoriespaginatorInfo<TRes> {
//   factory CopyWithQueryCategoriescategoriespaginatorInfo(
//     QueryCategoriescategoriespaginatorInfo instance,
//     TRes Function(QueryCategoriescategoriespaginatorInfo) then,
//   ) = _CopyWithImplQueryCategoriescategoriespaginatorInfo;
//
//   factory CopyWithQueryCategoriescategoriespaginatorInfo.stub(TRes res) =
//       _CopyWithStubImplQueryCategoriescategoriespaginatorInfo;
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
// class _CopyWithImplQueryCategoriescategoriespaginatorInfo<TRes>
//     implements CopyWithQueryCategoriescategoriespaginatorInfo<TRes> {
//   _CopyWithImplQueryCategoriescategoriespaginatorInfo(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCategoriescategoriespaginatorInfo _instance;
//
//   final TRes Function(QueryCategoriescategoriespaginatorInfo) _then;
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
//       _then(QueryCategoriescategoriespaginatorInfo(
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
// class _CopyWithStubImplQueryCategoriescategoriespaginatorInfo<TRes>
//     implements CopyWithQueryCategoriescategoriespaginatorInfo<TRes> {
//   _CopyWithStubImplQueryCategoriescategoriespaginatorInfo(this._res);
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
// class QueryCategoriescategoriesdata {
//   QueryCategoriescategoriesdata({
//     required this.id,
//     required this.title,
//     this.image_path,
//     this.$__typename = 'Category',
//   });
//
//   factory QueryCategoriescategoriesdata.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$image_path = json['image_path'];
//     final l$$__typename = json['__typename'];
//     return QueryCategoriescategoriesdata(
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
//     if (!(other is QueryCategoriescategoriesdata) ||
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
// extension UtilityExtensionQueryCategoriescategoriesdata
//     on QueryCategoriescategoriesdata {
//   CopyWithQueryCategoriescategoriesdata<QueryCategoriescategoriesdata>
//       get copyWith => CopyWithQueryCategoriescategoriesdata(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryCategoriescategoriesdata<TRes> {
//   factory CopyWithQueryCategoriescategoriesdata(
//     QueryCategoriescategoriesdata instance,
//     TRes Function(QueryCategoriescategoriesdata) then,
//   ) = _CopyWithImplQueryCategoriescategoriesdata;
//
//   factory CopyWithQueryCategoriescategoriesdata.stub(TRes res) =
//       _CopyWithStubImplQueryCategoriescategoriesdata;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? image_path,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryCategoriescategoriesdata<TRes>
//     implements CopyWithQueryCategoriescategoriesdata<TRes> {
//   _CopyWithImplQueryCategoriescategoriesdata(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCategoriescategoriesdata _instance;
//
//   final TRes Function(QueryCategoriescategoriesdata) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? image_path = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCategoriescategoriesdata(
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
// class _CopyWithStubImplQueryCategoriescategoriesdata<TRes>
//     implements CopyWithQueryCategoriescategoriesdata<TRes> {
//   _CopyWithStubImplQueryCategoriescategoriesdata(this._res);
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
// class VariablesMutationUpdateProduct {
//   factory VariablesMutationUpdateProduct({
//     required double price,
//     required String product_id,
//   }) =>
//       VariablesMutationUpdateProduct._({
//         r'price': price,
//         r'product_id': product_id,
//       });
//
//   VariablesMutationUpdateProduct._(this._$data);
//
//   factory VariablesMutationUpdateProduct.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$price = data['price'];
//     result$data['price'] = (l$price as num).toDouble();
//     final l$product_id = data['product_id'];
//     result$data['product_id'] = (l$product_id as String);
//     return VariablesMutationUpdateProduct._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   double get price => (_$data['price'] as double);
//
//   String get product_id => (_$data['product_id'] as String);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$price = price;
//     result$data['price'] = l$price;
//     final l$product_id = product_id;
//     result$data['product_id'] = l$product_id;
//     return result$data;
//   }
//
//   CopyWithVariablesMutationUpdateProduct<VariablesMutationUpdateProduct>
//       get copyWith => CopyWithVariablesMutationUpdateProduct(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationUpdateProduct) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$price = price;
//     final lOther$price = other.price;
//     if (l$price != lOther$price) {
//       return false;
//     }
//     final l$product_id = product_id;
//     final lOther$product_id = other.product_id;
//     if (l$product_id != lOther$product_id) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$price = price;
//     final l$product_id = product_id;
//     return Object.hashAll([
//       l$price,
//       l$product_id,
//     ]);
//   }
// }
//
// abstract class CopyWithVariablesMutationUpdateProduct<TRes> {
//   factory CopyWithVariablesMutationUpdateProduct(
//     VariablesMutationUpdateProduct instance,
//     TRes Function(VariablesMutationUpdateProduct) then,
//   ) = _CopyWithImplVariablesMutationUpdateProduct;
//
//   factory CopyWithVariablesMutationUpdateProduct.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationUpdateProduct;
//
//   TRes call({
//     double? price,
//     String? product_id,
//   });
// }
//
// class _CopyWithImplVariablesMutationUpdateProduct<TRes>
//     implements CopyWithVariablesMutationUpdateProduct<TRes> {
//   _CopyWithImplVariablesMutationUpdateProduct(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationUpdateProduct _instance;
//
//   final TRes Function(VariablesMutationUpdateProduct) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? price = _undefined,
//     Object? product_id = _undefined,
//   }) =>
//       _then(VariablesMutationUpdateProduct._({
//         ..._instance._$data,
//         if (price != _undefined && price != null) 'price': (price as double),
//         if (product_id != _undefined && product_id != null)
//           'product_id': (product_id as String),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationUpdateProduct<TRes>
//     implements CopyWithVariablesMutationUpdateProduct<TRes> {
//   _CopyWithStubImplVariablesMutationUpdateProduct(this._res);
//
//   TRes _res;
//
//   call({
//     double? price,
//     String? product_id,
//   }) =>
//       _res;
// }
//
// class MutationUpdateProduct {
//   MutationUpdateProduct({
//     required this.updateProduct,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationUpdateProduct.fromJson(Map<String, dynamic> json) {
//     final l$updateProduct = json['updateProduct'];
//     final l$$__typename = json['__typename'];
//     return MutationUpdateProduct(
//       updateProduct: MutationUpdateProductupdateProduct.fromJson(
//           (l$updateProduct as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationUpdateProductupdateProduct updateProduct;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$updateProduct = updateProduct;
//     _resultData['updateProduct'] = l$updateProduct.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$updateProduct = updateProduct;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$updateProduct,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationUpdateProduct) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$updateProduct = updateProduct;
//     final lOther$updateProduct = other.updateProduct;
//     if (l$updateProduct != lOther$updateProduct) {
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
// extension UtilityExtensionMutationUpdateProduct on MutationUpdateProduct {
//   CopyWithMutationUpdateProduct<MutationUpdateProduct> get copyWith =>
//       CopyWithMutationUpdateProduct(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationUpdateProduct<TRes> {
//   factory CopyWithMutationUpdateProduct(
//     MutationUpdateProduct instance,
//     TRes Function(MutationUpdateProduct) then,
//   ) = _CopyWithImplMutationUpdateProduct;
//
//   factory CopyWithMutationUpdateProduct.stub(TRes res) =
//       _CopyWithStubImplMutationUpdateProduct;
//
//   TRes call({
//     MutationUpdateProductupdateProduct? updateProduct,
//     String? $__typename,
//   });
//   CopyWithMutationUpdateProductupdateProduct<TRes> get updateProduct;
// }
//
// class _CopyWithImplMutationUpdateProduct<TRes>
//     implements CopyWithMutationUpdateProduct<TRes> {
//   _CopyWithImplMutationUpdateProduct(
//     this._instance,
//     this._then,
//   );
//
//   final MutationUpdateProduct _instance;
//
//   final TRes Function(MutationUpdateProduct) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? updateProduct = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationUpdateProduct(
//         updateProduct: updateProduct == _undefined || updateProduct == null
//             ? _instance.updateProduct
//             : (updateProduct as MutationUpdateProductupdateProduct),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationUpdateProductupdateProduct<TRes> get updateProduct {
//     final local$updateProduct = _instance.updateProduct;
//     return CopyWithMutationUpdateProductupdateProduct(
//         local$updateProduct, (e) => call(updateProduct: e));
//   }
// }
//
// class _CopyWithStubImplMutationUpdateProduct<TRes>
//     implements CopyWithMutationUpdateProduct<TRes> {
//   _CopyWithStubImplMutationUpdateProduct(this._res);
//
//   TRes _res;
//
//   call({
//     MutationUpdateProductupdateProduct? updateProduct,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationUpdateProductupdateProduct<TRes> get updateProduct =>
//       CopyWithMutationUpdateProductupdateProduct.stub(_res);
// }
//
// const documentNodeMutationUpdateProduct = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'UpdateProduct'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'price')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'Float'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'product_id')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//     ],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'updateProduct'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'price'),
//                 value: VariableNode(name: NameNode(value: 'price')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'product_id'),
//                 value: VariableNode(name: NameNode(value: 'product_id')),
//               ),
//             ]),
//           )
//         ],
//         directives: [],
//         selectionSet: SelectionSetNode(selections: [
//           FieldNode(
//             name: NameNode(value: 'error'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
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
//             name: NameNode(value: 'update'),
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
// MutationUpdateProduct _parserFnMutationUpdateProduct(
//         Map<String, dynamic> data) =>
//     MutationUpdateProduct.fromJson(data);
// typedef OnMutationCompletedMutationUpdateProduct = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationUpdateProduct?,
// );
//
// class OptionsMutationUpdateProduct
//     extends graphql.MutationOptions<MutationUpdateProduct> {
//   OptionsMutationUpdateProduct({
//     String? operationName,
//     required VariablesMutationUpdateProduct variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationUpdateProduct? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationUpdateProduct? onCompleted,
//     graphql.OnMutationUpdate<MutationUpdateProduct>? update,
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
//                     data == null ? null : _parserFnMutationUpdateProduct(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationUpdateProduct,
//           parserFn: _parserFnMutationUpdateProduct,
//         );
//
//   final OnMutationCompletedMutationUpdateProduct? onCompletedWithParsed;
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
// class WatchOptionsMutationUpdateProduct
//     extends graphql.WatchQueryOptions<MutationUpdateProduct> {
//   WatchOptionsMutationUpdateProduct({
//     String? operationName,
//     required VariablesMutationUpdateProduct variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationUpdateProduct? typedOptimisticResult,
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
//           document: documentNodeMutationUpdateProduct,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationUpdateProduct,
//         );
// }
//
// extension ClientExtensionMutationUpdateProduct on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationUpdateProduct>> mutateUpdateProduct(
//           OptionsMutationUpdateProduct options) async =>
//       await this.mutate(options);
//   graphql.ObservableQuery<MutationUpdateProduct> watchMutationUpdateProduct(
//           WatchOptionsMutationUpdateProduct options) =>
//       this.watchMutation(options);
// }
//
// class MutationUpdateProductHookResult {
//   MutationUpdateProductHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationUpdateProduct runMutation;
//
//   final graphql.QueryResult<MutationUpdateProduct> result;
// }
//
// MutationUpdateProductHookResult useMutationUpdateProduct(
//     [WidgetOptionsMutationUpdateProduct? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationUpdateProduct());
//   return MutationUpdateProductHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationUpdateProduct> useWatchMutationUpdateProduct(
//         WatchOptionsMutationUpdateProduct options) =>
//     graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationUpdateProduct
//     extends graphql.MutationOptions<MutationUpdateProduct> {
//   WidgetOptionsMutationUpdateProduct({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationUpdateProduct? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationUpdateProduct? onCompleted,
//     graphql.OnMutationUpdate<MutationUpdateProduct>? update,
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
//                     data == null ? null : _parserFnMutationUpdateProduct(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationUpdateProduct,
//           parserFn: _parserFnMutationUpdateProduct,
//         );
//
//   final OnMutationCompletedMutationUpdateProduct? onCompletedWithParsed;
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
// typedef RunMutationMutationUpdateProduct
//     = graphql.MultiSourceResult<MutationUpdateProduct> Function(
//   VariablesMutationUpdateProduct, {
//   Object? optimisticResult,
//   MutationUpdateProduct? typedOptimisticResult,
// });
// typedef BuilderMutationUpdateProduct = widgets.Widget Function(
//   RunMutationMutationUpdateProduct,
//   graphql.QueryResult<MutationUpdateProduct>?,
// );
//
// class MutationUpdateProductWidget
//     extends graphql_flutter.Mutation<MutationUpdateProduct> {
//   MutationUpdateProductWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationUpdateProduct? options,
//     required BuilderMutationUpdateProduct builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationUpdateProduct(),
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
// class MutationUpdateProductupdateProduct {
//   MutationUpdateProductupdateProduct({
//     required this.error,
//     required this.status,
//     this.message,
//     this.update,
//     this.$__typename = 'Result',
//   });
//
//   factory MutationUpdateProductupdateProduct.fromJson(
//       Map<String, dynamic> json) {
//     final l$error = json['error'];
//     final l$status = json['status'];
//     final l$message = json['message'];
//     final l$update = json['update'];
//     final l$$__typename = json['__typename'];
//     return MutationUpdateProductupdateProduct(
//       error: (l$error as int),
//       status: (l$status as String),
//       message: (l$message as String?),
//       update: (l$update as bool?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final int error;
//
//   final String status;
//
//   final String? message;
//
//   final bool? update;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$error = error;
//     _resultData['error'] = l$error;
//     final l$status = status;
//     _resultData['status'] = l$status;
//     final l$message = message;
//     _resultData['message'] = l$message;
//     final l$update = update;
//     _resultData['update'] = l$update;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$error = error;
//     final l$status = status;
//     final l$message = message;
//     final l$update = update;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$error,
//       l$status,
//       l$message,
//       l$update,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationUpdateProductupdateProduct) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$error = error;
//     final lOther$error = other.error;
//     if (l$error != lOther$error) {
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
//     final l$update = update;
//     final lOther$update = other.update;
//     if (l$update != lOther$update) {
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
// extension UtilityExtensionMutationUpdateProductupdateProduct
//     on MutationUpdateProductupdateProduct {
//   CopyWithMutationUpdateProductupdateProduct<MutationUpdateProductupdateProduct>
//       get copyWith => CopyWithMutationUpdateProductupdateProduct(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationUpdateProductupdateProduct<TRes> {
//   factory CopyWithMutationUpdateProductupdateProduct(
//     MutationUpdateProductupdateProduct instance,
//     TRes Function(MutationUpdateProductupdateProduct) then,
//   ) = _CopyWithImplMutationUpdateProductupdateProduct;
//
//   factory CopyWithMutationUpdateProductupdateProduct.stub(TRes res) =
//       _CopyWithStubImplMutationUpdateProductupdateProduct;
//
//   TRes call({
//     int? error,
//     String? status,
//     String? message,
//     bool? update,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationUpdateProductupdateProduct<TRes>
//     implements CopyWithMutationUpdateProductupdateProduct<TRes> {
//   _CopyWithImplMutationUpdateProductupdateProduct(
//     this._instance,
//     this._then,
//   );
//
//   final MutationUpdateProductupdateProduct _instance;
//
//   final TRes Function(MutationUpdateProductupdateProduct) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? error = _undefined,
//     Object? status = _undefined,
//     Object? message = _undefined,
//     Object? update = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationUpdateProductupdateProduct(
//         error: error == _undefined || error == null
//             ? _instance.error
//             : (error as int),
//         status: status == _undefined || status == null
//             ? _instance.status
//             : (status as String),
//         message:
//             message == _undefined ? _instance.message : (message as String?),
//         update: update == _undefined ? _instance.update : (update as bool?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplMutationUpdateProductupdateProduct<TRes>
//     implements CopyWithMutationUpdateProductupdateProduct<TRes> {
//   _CopyWithStubImplMutationUpdateProductupdateProduct(this._res);
//
//   TRes _res;
//
//   call({
//     int? error,
//     String? status,
//     String? message,
//     bool? update,
//     String? $__typename,
//   }) =>
//       _res;
// }
