// import 'dart:async';
// import 'package:flutter/widgets.dart' as widgets;
// import 'package:gql/ast.dart';
// import 'package:graphql/client.dart' as graphql;
// import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
//
// class VariablesQueryCoupons {
//   factory VariablesQueryCoupons({int? page}) => VariablesQueryCoupons._({
//         if (page != null) r'page': page,
//       });
//
//   VariablesQueryCoupons._(this._$data);
//
//   factory VariablesQueryCoupons.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     if (data.containsKey('page')) {
//       final l$page = data['page'];
//       result$data['page'] = (l$page as int?);
//     }
//     return VariablesQueryCoupons._(result$data);
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
//   CopyWithVariablesQueryCoupons<VariablesQueryCoupons> get copyWith =>
//       CopyWithVariablesQueryCoupons(
//         this,
//         (i) => i,
//       );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesQueryCoupons) || runtimeType != other.runtimeType) {
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
// abstract class CopyWithVariablesQueryCoupons<TRes> {
//   factory CopyWithVariablesQueryCoupons(
//     VariablesQueryCoupons instance,
//     TRes Function(VariablesQueryCoupons) then,
//   ) = _CopyWithImplVariablesQueryCoupons;
//
//   factory CopyWithVariablesQueryCoupons.stub(TRes res) =
//       _CopyWithStubImplVariablesQueryCoupons;
//
//   TRes call({int? page});
// }
//
// class _CopyWithImplVariablesQueryCoupons<TRes>
//     implements CopyWithVariablesQueryCoupons<TRes> {
//   _CopyWithImplVariablesQueryCoupons(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesQueryCoupons _instance;
//
//   final TRes Function(VariablesQueryCoupons) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? page = _undefined}) => _then(VariablesQueryCoupons._({
//         ..._instance._$data,
//         if (page != _undefined) 'page': (page as int?),
//       }));
// }
//
// class _CopyWithStubImplVariablesQueryCoupons<TRes>
//     implements CopyWithVariablesQueryCoupons<TRes> {
//   _CopyWithStubImplVariablesQueryCoupons(this._res);
//
//   TRes _res;
//
//   call({int? page}) => _res;
// }
//
// class QueryCoupons {
//   QueryCoupons({
//     this.coupons,
//     this.$__typename = 'Query',
//   });
//
//   factory QueryCoupons.fromJson(Map<String, dynamic> json) {
//     final l$coupons = json['coupons'];
//     final l$$__typename = json['__typename'];
//     return QueryCoupons(
//       coupons: l$coupons == null
//           ? null
//           : QueryCouponscoupons.fromJson((l$coupons as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryCouponscoupons? coupons;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$coupons = coupons;
//     _resultData['coupons'] = l$coupons?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$coupons = coupons;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$coupons,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCoupons) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$coupons = coupons;
//     final lOther$coupons = other.coupons;
//     if (l$coupons != lOther$coupons) {
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
// extension UtilityExtensionQueryCoupons on QueryCoupons {
//   CopyWithQueryCoupons<QueryCoupons> get copyWith => CopyWithQueryCoupons(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryCoupons<TRes> {
//   factory CopyWithQueryCoupons(
//     QueryCoupons instance,
//     TRes Function(QueryCoupons) then,
//   ) = _CopyWithImplQueryCoupons;
//
//   factory CopyWithQueryCoupons.stub(TRes res) = _CopyWithStubImplQueryCoupons;
//
//   TRes call({
//     QueryCouponscoupons? coupons,
//     String? $__typename,
//   });
//   CopyWithQueryCouponscoupons<TRes> get coupons;
// }
//
// class _CopyWithImplQueryCoupons<TRes> implements CopyWithQueryCoupons<TRes> {
//   _CopyWithImplQueryCoupons(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCoupons _instance;
//
//   final TRes Function(QueryCoupons) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? coupons = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCoupons(
//         coupons: coupons == _undefined
//             ? _instance.coupons
//             : (coupons as QueryCouponscoupons?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryCouponscoupons<TRes> get coupons {
//     final local$coupons = _instance.coupons;
//     return local$coupons == null
//         ? CopyWithQueryCouponscoupons.stub(_then(_instance))
//         : CopyWithQueryCouponscoupons(local$coupons, (e) => call(coupons: e));
//   }
// }
//
// class _CopyWithStubImplQueryCoupons<TRes>
//     implements CopyWithQueryCoupons<TRes> {
//   _CopyWithStubImplQueryCoupons(this._res);
//
//   TRes _res;
//
//   call({
//     QueryCouponscoupons? coupons,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryCouponscoupons<TRes> get coupons =>
//       CopyWithQueryCouponscoupons.stub(_res);
// }
//
// const documentNodeQueryCoupons = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.query,
//     name: NameNode(value: 'Coupons'),
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
//         name: NameNode(value: 'coupons'),
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
//                 name: NameNode(value: 'code'),
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
//                 name: NameNode(value: 'discount_type'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'expire_at'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'start_at'),
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
// QueryCoupons _parserFnQueryCoupons(Map<String, dynamic> data) =>
//     QueryCoupons.fromJson(data);
// typedef OnQueryCompleteQueryCoupons = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   QueryCoupons?,
// );
//
// class OptionsQueryCoupons extends graphql.QueryOptions<QueryCoupons> {
//   OptionsQueryCoupons({
//     String? operationName,
//     VariablesQueryCoupons? variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryCoupons? typedOptimisticResult,
//     Duration? pollInterval,
//     graphql.Context? context,
//     OnQueryCompleteQueryCoupons? onComplete,
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
//                     data == null ? null : _parserFnQueryCoupons(data),
//                   ),
//           onError: onError,
//           document: documentNodeQueryCoupons,
//           parserFn: _parserFnQueryCoupons,
//         );
//
//   final OnQueryCompleteQueryCoupons? onCompleteWithParsed;
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
// class WatchOptionsQueryCoupons extends graphql.WatchQueryOptions<QueryCoupons> {
//   WatchOptionsQueryCoupons({
//     String? operationName,
//     VariablesQueryCoupons? variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryCoupons? typedOptimisticResult,
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
//           document: documentNodeQueryCoupons,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnQueryCoupons,
//         );
// }
//
// class FetchMoreOptionsQueryCoupons extends graphql.FetchMoreOptions {
//   FetchMoreOptionsQueryCoupons({
//     required graphql.UpdateQuery updateQuery,
//     VariablesQueryCoupons? variables,
//   }) : super(
//           updateQuery: updateQuery,
//           variables: variables?.toJson() ?? {},
//           document: documentNodeQueryCoupons,
//         );
// }
//
// extension ClientExtensionQueryCoupons on graphql.GraphQLClient {
//   Future<graphql.QueryResult<QueryCoupons>> queryCoupons(
//           [OptionsQueryCoupons? options]) async =>
//       await this.query(options ?? OptionsQueryCoupons());
//   graphql.ObservableQuery<QueryCoupons> watchQueryCoupons(
//           [WatchOptionsQueryCoupons? options]) =>
//       this.watchQuery(options ?? WatchOptionsQueryCoupons());
//   void writeQueryCoupons({
//     required QueryCoupons data,
//     VariablesQueryCoupons? variables,
//     bool broadcast = true,
//   }) =>
//       this.writeQuery(
//         graphql.Request(
//           operation: graphql.Operation(document: documentNodeQueryCoupons),
//           variables: variables?.toJson() ?? const {},
//         ),
//         data: data.toJson(),
//         broadcast: broadcast,
//       );
//   QueryCoupons? readQueryCoupons({
//     VariablesQueryCoupons? variables,
//     bool optimistic = true,
//   }) {
//     final result = this.readQuery(
//       graphql.Request(
//         operation: graphql.Operation(document: documentNodeQueryCoupons),
//         variables: variables?.toJson() ?? const {},
//       ),
//       optimistic: optimistic,
//     );
//     return result == null ? null : QueryCoupons.fromJson(result);
//   }
// }
//
// graphql_flutter.QueryHookResult<QueryCoupons> useQueryCoupons(
//         [OptionsQueryCoupons? options]) =>
//     graphql_flutter.useQuery(options ?? OptionsQueryCoupons());
// graphql.ObservableQuery<QueryCoupons> useWatchQueryCoupons(
//         [WatchOptionsQueryCoupons? options]) =>
//     graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryCoupons());
//
// class QueryCouponsWidget extends graphql_flutter.Query<QueryCoupons> {
//   QueryCouponsWidget({
//     widgets.Key? key,
//     OptionsQueryCoupons? options,
//     required graphql_flutter.QueryBuilder<QueryCoupons> builder,
//   }) : super(
//           key: key,
//           options: options ?? OptionsQueryCoupons(),
//           builder: builder,
//         );
// }
//
// class QueryCouponscoupons {
//   QueryCouponscoupons({
//     required this.paginatorInfo,
//     required this.data,
//     this.$__typename = 'CouponPaginator',
//   });
//
//   factory QueryCouponscoupons.fromJson(Map<String, dynamic> json) {
//     final l$paginatorInfo = json['paginatorInfo'];
//     final l$data = json['data'];
//     final l$$__typename = json['__typename'];
//     return QueryCouponscoupons(
//       paginatorInfo: QueryCouponscouponspaginatorInfo.fromJson(
//           (l$paginatorInfo as Map<String, dynamic>)),
//       data: (l$data as List<dynamic>)
//           .map((e) =>
//               QueryCouponscouponsdata.fromJson((e as Map<String, dynamic>)))
//           .toList(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryCouponscouponspaginatorInfo paginatorInfo;
//
//   final List<QueryCouponscouponsdata> data;
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
//     if (!(other is QueryCouponscoupons) || runtimeType != other.runtimeType) {
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
// extension UtilityExtensionQueryCouponscoupons on QueryCouponscoupons {
//   CopyWithQueryCouponscoupons<QueryCouponscoupons> get copyWith =>
//       CopyWithQueryCouponscoupons(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryCouponscoupons<TRes> {
//   factory CopyWithQueryCouponscoupons(
//     QueryCouponscoupons instance,
//     TRes Function(QueryCouponscoupons) then,
//   ) = _CopyWithImplQueryCouponscoupons;
//
//   factory CopyWithQueryCouponscoupons.stub(TRes res) =
//       _CopyWithStubImplQueryCouponscoupons;
//
//   TRes call({
//     QueryCouponscouponspaginatorInfo? paginatorInfo,
//     List<QueryCouponscouponsdata>? data,
//     String? $__typename,
//   });
//   CopyWithQueryCouponscouponspaginatorInfo<TRes> get paginatorInfo;
//   TRes data(
//       Iterable<QueryCouponscouponsdata> Function(
//               Iterable<
//                   CopyWithQueryCouponscouponsdata<QueryCouponscouponsdata>>)
//           _fn);
// }
//
// class _CopyWithImplQueryCouponscoupons<TRes>
//     implements CopyWithQueryCouponscoupons<TRes> {
//   _CopyWithImplQueryCouponscoupons(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCouponscoupons _instance;
//
//   final TRes Function(QueryCouponscoupons) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? paginatorInfo = _undefined,
//     Object? data = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCouponscoupons(
//         paginatorInfo: paginatorInfo == _undefined || paginatorInfo == null
//             ? _instance.paginatorInfo
//             : (paginatorInfo as QueryCouponscouponspaginatorInfo),
//         data: data == _undefined || data == null
//             ? _instance.data
//             : (data as List<QueryCouponscouponsdata>),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryCouponscouponspaginatorInfo<TRes> get paginatorInfo {
//     final local$paginatorInfo = _instance.paginatorInfo;
//     return CopyWithQueryCouponscouponspaginatorInfo(
//         local$paginatorInfo, (e) => call(paginatorInfo: e));
//   }
//
//   TRes data(
//           Iterable<QueryCouponscouponsdata> Function(
//                   Iterable<
//                       CopyWithQueryCouponscouponsdata<QueryCouponscouponsdata>>)
//               _fn) =>
//       call(
//           data: _fn(_instance.data.map((e) => CopyWithQueryCouponscouponsdata(
//                 e,
//                 (i) => i,
//               ))).toList());
// }
//
// class _CopyWithStubImplQueryCouponscoupons<TRes>
//     implements CopyWithQueryCouponscoupons<TRes> {
//   _CopyWithStubImplQueryCouponscoupons(this._res);
//
//   TRes _res;
//
//   call({
//     QueryCouponscouponspaginatorInfo? paginatorInfo,
//     List<QueryCouponscouponsdata>? data,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryCouponscouponspaginatorInfo<TRes> get paginatorInfo =>
//       CopyWithQueryCouponscouponspaginatorInfo.stub(_res);
//
//   data(_fn) => _res;
// }
//
// class QueryCouponscouponspaginatorInfo {
//   QueryCouponscouponspaginatorInfo({
//     required this.count,
//     required this.currentPage,
//     required this.total,
//     required this.lastPage,
//     required this.hasMorePages,
//     this.$__typename = 'PaginatorInfo',
//   });
//
//   factory QueryCouponscouponspaginatorInfo.fromJson(Map<String, dynamic> json) {
//     final l$count = json['count'];
//     final l$currentPage = json['currentPage'];
//     final l$total = json['total'];
//     final l$lastPage = json['lastPage'];
//     final l$hasMorePages = json['hasMorePages'];
//     final l$$__typename = json['__typename'];
//     return QueryCouponscouponspaginatorInfo(
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
//     if (!(other is QueryCouponscouponspaginatorInfo) ||
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
// extension UtilityExtensionQueryCouponscouponspaginatorInfo
//     on QueryCouponscouponspaginatorInfo {
//   CopyWithQueryCouponscouponspaginatorInfo<QueryCouponscouponspaginatorInfo>
//       get copyWith => CopyWithQueryCouponscouponspaginatorInfo(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryCouponscouponspaginatorInfo<TRes> {
//   factory CopyWithQueryCouponscouponspaginatorInfo(
//     QueryCouponscouponspaginatorInfo instance,
//     TRes Function(QueryCouponscouponspaginatorInfo) then,
//   ) = _CopyWithImplQueryCouponscouponspaginatorInfo;
//
//   factory CopyWithQueryCouponscouponspaginatorInfo.stub(TRes res) =
//       _CopyWithStubImplQueryCouponscouponspaginatorInfo;
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
// class _CopyWithImplQueryCouponscouponspaginatorInfo<TRes>
//     implements CopyWithQueryCouponscouponspaginatorInfo<TRes> {
//   _CopyWithImplQueryCouponscouponspaginatorInfo(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCouponscouponspaginatorInfo _instance;
//
//   final TRes Function(QueryCouponscouponspaginatorInfo) _then;
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
//       _then(QueryCouponscouponspaginatorInfo(
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
// class _CopyWithStubImplQueryCouponscouponspaginatorInfo<TRes>
//     implements CopyWithQueryCouponscouponspaginatorInfo<TRes> {
//   _CopyWithStubImplQueryCouponscouponspaginatorInfo(this._res);
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
// class QueryCouponscouponsdata {
//   QueryCouponscouponsdata({
//     required this.id,
//     required this.title,
//     this.code,
//     required this.discount,
//     required this.discount_type,
//     this.expire_at,
//     this.start_at,
//     this.$__typename = 'Coupon',
//   });
//
//   factory QueryCouponscouponsdata.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$code = json['code'];
//     final l$discount = json['discount'];
//     final l$discount_type = json['discount_type'];
//     final l$expire_at = json['expire_at'];
//     final l$start_at = json['start_at'];
//     final l$$__typename = json['__typename'];
//     return QueryCouponscouponsdata(
//       id: (l$id as String),
//       title: (l$title as String),
//       code: (l$code as String?),
//       discount: (l$discount as num).toDouble(),
//       discount_type: (l$discount_type as int),
//       expire_at: (l$expire_at as String?),
//       start_at: (l$start_at as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String title;
//
//   final String? code;
//
//   final double discount;
//
//   final int discount_type;
//
//   final String? expire_at;
//
//   final String? start_at;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$title = title;
//     _resultData['title'] = l$title;
//     final l$code = code;
//     _resultData['code'] = l$code;
//     final l$discount = discount;
//     _resultData['discount'] = l$discount;
//     final l$discount_type = discount_type;
//     _resultData['discount_type'] = l$discount_type;
//     final l$expire_at = expire_at;
//     _resultData['expire_at'] = l$expire_at;
//     final l$start_at = start_at;
//     _resultData['start_at'] = l$start_at;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$title = title;
//     final l$code = code;
//     final l$discount = discount;
//     final l$discount_type = discount_type;
//     final l$expire_at = expire_at;
//     final l$start_at = start_at;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$code,
//       l$discount,
//       l$discount_type,
//       l$expire_at,
//       l$start_at,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryCouponscouponsdata) ||
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
//     final l$code = code;
//     final lOther$code = other.code;
//     if (l$code != lOther$code) {
//       return false;
//     }
//     final l$discount = discount;
//     final lOther$discount = other.discount;
//     if (l$discount != lOther$discount) {
//       return false;
//     }
//     final l$discount_type = discount_type;
//     final lOther$discount_type = other.discount_type;
//     if (l$discount_type != lOther$discount_type) {
//       return false;
//     }
//     final l$expire_at = expire_at;
//     final lOther$expire_at = other.expire_at;
//     if (l$expire_at != lOther$expire_at) {
//       return false;
//     }
//     final l$start_at = start_at;
//     final lOther$start_at = other.start_at;
//     if (l$start_at != lOther$start_at) {
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
// extension UtilityExtensionQueryCouponscouponsdata on QueryCouponscouponsdata {
//   CopyWithQueryCouponscouponsdata<QueryCouponscouponsdata> get copyWith =>
//       CopyWithQueryCouponscouponsdata(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryCouponscouponsdata<TRes> {
//   factory CopyWithQueryCouponscouponsdata(
//     QueryCouponscouponsdata instance,
//     TRes Function(QueryCouponscouponsdata) then,
//   ) = _CopyWithImplQueryCouponscouponsdata;
//
//   factory CopyWithQueryCouponscouponsdata.stub(TRes res) =
//       _CopyWithStubImplQueryCouponscouponsdata;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? code,
//     double? discount,
//     int? discount_type,
//     String? expire_at,
//     String? start_at,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryCouponscouponsdata<TRes>
//     implements CopyWithQueryCouponscouponsdata<TRes> {
//   _CopyWithImplQueryCouponscouponsdata(
//     this._instance,
//     this._then,
//   );
//
//   final QueryCouponscouponsdata _instance;
//
//   final TRes Function(QueryCouponscouponsdata) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? code = _undefined,
//     Object? discount = _undefined,
//     Object? discount_type = _undefined,
//     Object? expire_at = _undefined,
//     Object? start_at = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryCouponscouponsdata(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined || title == null
//             ? _instance.title
//             : (title as String),
//         code: code == _undefined ? _instance.code : (code as String?),
//         discount: discount == _undefined || discount == null
//             ? _instance.discount
//             : (discount as double),
//         discount_type: discount_type == _undefined || discount_type == null
//             ? _instance.discount_type
//             : (discount_type as int),
//         expire_at: expire_at == _undefined
//             ? _instance.expire_at
//             : (expire_at as String?),
//         start_at:
//             start_at == _undefined ? _instance.start_at : (start_at as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryCouponscouponsdata<TRes>
//     implements CopyWithQueryCouponscouponsdata<TRes> {
//   _CopyWithStubImplQueryCouponscouponsdata(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     String? code,
//     double? discount,
//     int? discount_type,
//     String? expire_at,
//     String? start_at,
//     String? $__typename,
//   }) =>
//       _res;
// }
