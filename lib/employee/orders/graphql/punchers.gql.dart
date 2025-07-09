// import 'dart:async';
// import 'package:flutter/widgets.dart' as widgets;
// import 'package:gql/ast.dart';
// import 'package:graphql/client.dart' as graphql;
// import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
//
// class VariablesQueryPunchers {
//   factory VariablesQueryPunchers({
//     int? page,
//     String? latitude,
//     String? longitude,
//   }) =>
//       VariablesQueryPunchers._({
//         if (page != null) r'page': page,
//         if (latitude != null) r'latitude': latitude,
//         if (longitude != null) r'longitude': longitude,
//       });
//
//   VariablesQueryPunchers._(this._$data);
//
//   factory VariablesQueryPunchers.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     if (data.containsKey('page')) {
//       final l$page = data['page'];
//       result$data['page'] = (l$page as int?);
//     }
//     if (data.containsKey('latitude')) {
//       final l$latitude = data['latitude'];
//       result$data['latitude'] = (l$latitude as String?);
//     }
//     if (data.containsKey('longitude')) {
//       final l$longitude = data['longitude'];
//       result$data['longitude'] = (l$longitude as String?);
//     }
//     return VariablesQueryPunchers._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   int? get page => (_$data['page'] as int?);
//
//   String? get latitude => (_$data['latitude'] as String?);
//
//   String? get longitude => (_$data['longitude'] as String?);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     if (_$data.containsKey('page')) {
//       final l$page = page;
//       result$data['page'] = l$page;
//     }
//     if (_$data.containsKey('latitude')) {
//       final l$latitude = latitude;
//       result$data['latitude'] = l$latitude;
//     }
//     if (_$data.containsKey('longitude')) {
//       final l$longitude = longitude;
//       result$data['longitude'] = l$longitude;
//     }
//     return result$data;
//   }
//
//   CopyWithVariablesQueryPunchers<VariablesQueryPunchers> get copyWith =>
//       CopyWithVariablesQueryPunchers(
//         this,
//         (i) => i,
//       );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesQueryPunchers) ||
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
//     final l$latitude = latitude;
//     final lOther$latitude = other.latitude;
//     if (_$data.containsKey('latitude') !=
//         other._$data.containsKey('latitude')) {
//       return false;
//     }
//     if (l$latitude != lOther$latitude) {
//       return false;
//     }
//     final l$longitude = longitude;
//     final lOther$longitude = other.longitude;
//     if (_$data.containsKey('longitude') !=
//         other._$data.containsKey('longitude')) {
//       return false;
//     }
//     if (l$longitude != lOther$longitude) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$page = page;
//     final l$latitude = latitude;
//     final l$longitude = longitude;
//     return Object.hashAll([
//       _$data.containsKey('page') ? l$page : const {},
//       _$data.containsKey('latitude') ? l$latitude : const {},
//       _$data.containsKey('longitude') ? l$longitude : const {},
//     ]);
//   }
// }
//
// abstract class CopyWithVariablesQueryPunchers<TRes> {
//   factory CopyWithVariablesQueryPunchers(
//     VariablesQueryPunchers instance,
//     TRes Function(VariablesQueryPunchers) then,
//   ) = _CopyWithImplVariablesQueryPunchers;
//
//   factory CopyWithVariablesQueryPunchers.stub(TRes res) =
//       _CopyWithStubImplVariablesQueryPunchers;
//
//   TRes call({
//     int? page,
//     String? latitude,
//     String? longitude,
//   });
// }
//
// class _CopyWithImplVariablesQueryPunchers<TRes>
//     implements CopyWithVariablesQueryPunchers<TRes> {
//   _CopyWithImplVariablesQueryPunchers(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesQueryPunchers _instance;
//
//   final TRes Function(VariablesQueryPunchers) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? page = _undefined,
//     Object? latitude = _undefined,
//     Object? longitude = _undefined,
//   }) =>
//       _then(VariablesQueryPunchers._({
//         ..._instance._$data,
//         if (page != _undefined) 'page': (page as int?),
//         if (latitude != _undefined) 'latitude': (latitude as String?),
//         if (longitude != _undefined) 'longitude': (longitude as String?),
//       }));
// }
//
// class _CopyWithStubImplVariablesQueryPunchers<TRes>
//     implements CopyWithVariablesQueryPunchers<TRes> {
//   _CopyWithStubImplVariablesQueryPunchers(this._res);
//
//   TRes _res;
//
//   call({
//     int? page,
//     String? latitude,
//     String? longitude,
//   }) =>
//       _res;
// }
//
// class QueryPunchers {
//   QueryPunchers({
//     this.punchers,
//     this.$__typename = 'Query',
//   });
//
//   factory QueryPunchers.fromJson(Map<String, dynamic> json) {
//     final l$punchers = json['punchers'];
//     final l$$__typename = json['__typename'];
//     return QueryPunchers(
//       punchers: l$punchers == null
//           ? null
//           : QueryPuncherspunchers.fromJson(
//               (l$punchers as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryPuncherspunchers? punchers;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$punchers = punchers;
//     _resultData['punchers'] = l$punchers?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$punchers = punchers;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$punchers,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryPunchers) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$punchers = punchers;
//     final lOther$punchers = other.punchers;
//     if (l$punchers != lOther$punchers) {
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
// extension UtilityExtensionQueryPunchers on QueryPunchers {
//   CopyWithQueryPunchers<QueryPunchers> get copyWith => CopyWithQueryPunchers(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryPunchers<TRes> {
//   factory CopyWithQueryPunchers(
//     QueryPunchers instance,
//     TRes Function(QueryPunchers) then,
//   ) = _CopyWithImplQueryPunchers;
//
//   factory CopyWithQueryPunchers.stub(TRes res) = _CopyWithStubImplQueryPunchers;
//
//   TRes call({
//     QueryPuncherspunchers? punchers,
//     String? $__typename,
//   });
//   CopyWithQueryPuncherspunchers<TRes> get punchers;
// }
//
// class _CopyWithImplQueryPunchers<TRes> implements CopyWithQueryPunchers<TRes> {
//   _CopyWithImplQueryPunchers(
//     this._instance,
//     this._then,
//   );
//
//   final QueryPunchers _instance;
//
//   final TRes Function(QueryPunchers) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? punchers = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryPunchers(
//         punchers: punchers == _undefined
//             ? _instance.punchers
//             : (punchers as QueryPuncherspunchers?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryPuncherspunchers<TRes> get punchers {
//     final local$punchers = _instance.punchers;
//     return local$punchers == null
//         ? CopyWithQueryPuncherspunchers.stub(_then(_instance))
//         : CopyWithQueryPuncherspunchers(
//             local$punchers, (e) => call(punchers: e));
//   }
// }
//
// class _CopyWithStubImplQueryPunchers<TRes>
//     implements CopyWithQueryPunchers<TRes> {
//   _CopyWithStubImplQueryPunchers(this._res);
//
//   TRes _res;
//
//   call({
//     QueryPuncherspunchers? punchers,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryPuncherspunchers<TRes> get punchers =>
//       CopyWithQueryPuncherspunchers.stub(_res);
// }
//
// const documentNodeQueryPunchers = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.query,
//     name: NameNode(value: 'Punchers'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'page')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'Int'),
//           isNonNull: false,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'latitude')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: false,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'longitude')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: false,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//     ],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'punchers'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'page'),
//             value: VariableNode(name: NameNode(value: 'page')),
//           ),
//           ArgumentNode(
//             name: NameNode(value: 'latitude'),
//             value: VariableNode(name: NameNode(value: 'latitude')),
//           ),
//           ArgumentNode(
//             name: NameNode(value: 'longitude'),
//             value: VariableNode(name: NameNode(value: 'longitude')),
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
//                 name: NameNode(value: 'address'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'latitude'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'longitude'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'city'),
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
//                     name: NameNode(value: 'active'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'position'),
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
//                 name: NameNode(value: 'distance'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'puncher'),
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
//                     name: NameNode(value: 'name'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'imageUrl'),
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
// QueryPunchers _parserFnQueryPunchers(Map<String, dynamic> data) =>
//     QueryPunchers.fromJson(data);
// typedef OnQueryCompleteQueryPunchers = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   QueryPunchers?,
// );
//
// class OptionsQueryPunchers extends graphql.QueryOptions<QueryPunchers> {
//   OptionsQueryPunchers({
//     String? operationName,
//     VariablesQueryPunchers? variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryPunchers? typedOptimisticResult,
//     Duration? pollInterval,
//     graphql.Context? context,
//     OnQueryCompleteQueryPunchers? onComplete,
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
//                     data == null ? null : _parserFnQueryPunchers(data),
//                   ),
//           onError: onError,
//           document: documentNodeQueryPunchers,
//           parserFn: _parserFnQueryPunchers,
//         );
//
//   final OnQueryCompleteQueryPunchers? onCompleteWithParsed;
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
// class WatchOptionsQueryPunchers
//     extends graphql.WatchQueryOptions<QueryPunchers> {
//   WatchOptionsQueryPunchers({
//     String? operationName,
//     VariablesQueryPunchers? variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryPunchers? typedOptimisticResult,
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
//           document: documentNodeQueryPunchers,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnQueryPunchers,
//         );
// }
//
// class FetchMoreOptionsQueryPunchers extends graphql.FetchMoreOptions {
//   FetchMoreOptionsQueryPunchers({
//     required graphql.UpdateQuery updateQuery,
//     VariablesQueryPunchers? variables,
//   }) : super(
//           updateQuery: updateQuery,
//           variables: variables?.toJson() ?? {},
//           document: documentNodeQueryPunchers,
//         );
// }
//
// extension ClientExtensionQueryPunchers on graphql.GraphQLClient {
//   Future<graphql.QueryResult<QueryPunchers>> queryPunchers(
//           [OptionsQueryPunchers? options]) async =>
//       await this.query(options ?? OptionsQueryPunchers());
//   graphql.ObservableQuery<QueryPunchers> watchQueryPunchers(
//           [WatchOptionsQueryPunchers? options]) =>
//       this.watchQuery(options ?? WatchOptionsQueryPunchers());
//   void writeQueryPunchers({
//     required QueryPunchers data,
//     VariablesQueryPunchers? variables,
//     bool broadcast = true,
//   }) =>
//       this.writeQuery(
//         graphql.Request(
//           operation: graphql.Operation(document: documentNodeQueryPunchers),
//           variables: variables?.toJson() ?? const {},
//         ),
//         data: data.toJson(),
//         broadcast: broadcast,
//       );
//   QueryPunchers? readQueryPunchers({
//     VariablesQueryPunchers? variables,
//     bool optimistic = true,
//   }) {
//     final result = this.readQuery(
//       graphql.Request(
//         operation: graphql.Operation(document: documentNodeQueryPunchers),
//         variables: variables?.toJson() ?? const {},
//       ),
//       optimistic: optimistic,
//     );
//     return result == null ? null : QueryPunchers.fromJson(result);
//   }
// }
//
// graphql_flutter.QueryHookResult<QueryPunchers> useQueryPunchers(
//         [OptionsQueryPunchers? options]) =>
//     graphql_flutter.useQuery(options ?? OptionsQueryPunchers());
// graphql.ObservableQuery<QueryPunchers> useWatchQueryPunchers(
//         [WatchOptionsQueryPunchers? options]) =>
//     graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryPunchers());
//
// class QueryPunchersWidget extends graphql_flutter.Query<QueryPunchers> {
//   QueryPunchersWidget({
//     widgets.Key? key,
//     OptionsQueryPunchers? options,
//     required graphql_flutter.QueryBuilder<QueryPunchers> builder,
//   }) : super(
//           key: key,
//           options: options ?? OptionsQueryPunchers(),
//           builder: builder,
//         );
// }
//
// class QueryPuncherspunchers {
//   QueryPuncherspunchers({
//     required this.paginatorInfo,
//     required this.data,
//     this.$__typename = 'BranchPaginator',
//   });
//
//   factory QueryPuncherspunchers.fromJson(Map<String, dynamic> json) {
//     final l$paginatorInfo = json['paginatorInfo'];
//     final l$data = json['data'];
//     final l$$__typename = json['__typename'];
//     return QueryPuncherspunchers(
//       paginatorInfo: QueryPuncherspuncherspaginatorInfo.fromJson(
//           (l$paginatorInfo as Map<String, dynamic>)),
//       data: (l$data as List<dynamic>)
//           .map((e) =>
//               QueryPuncherspunchersdata.fromJson((e as Map<String, dynamic>)))
//           .toList(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryPuncherspuncherspaginatorInfo paginatorInfo;
//
//   final List<QueryPuncherspunchersdata> data;
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
//     if (!(other is QueryPuncherspunchers) || runtimeType != other.runtimeType) {
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
// extension UtilityExtensionQueryPuncherspunchers on QueryPuncherspunchers {
//   CopyWithQueryPuncherspunchers<QueryPuncherspunchers> get copyWith =>
//       CopyWithQueryPuncherspunchers(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryPuncherspunchers<TRes> {
//   factory CopyWithQueryPuncherspunchers(
//     QueryPuncherspunchers instance,
//     TRes Function(QueryPuncherspunchers) then,
//   ) = _CopyWithImplQueryPuncherspunchers;
//
//   factory CopyWithQueryPuncherspunchers.stub(TRes res) =
//       _CopyWithStubImplQueryPuncherspunchers;
//
//   TRes call({
//     QueryPuncherspuncherspaginatorInfo? paginatorInfo,
//     List<QueryPuncherspunchersdata>? data,
//     String? $__typename,
//   });
//   CopyWithQueryPuncherspuncherspaginatorInfo<TRes> get paginatorInfo;
//   TRes data(
//       Iterable<QueryPuncherspunchersdata> Function(
//               Iterable<
//                   CopyWithQueryPuncherspunchersdata<QueryPuncherspunchersdata>>)
//           _fn);
// }
//
// class _CopyWithImplQueryPuncherspunchers<TRes>
//     implements CopyWithQueryPuncherspunchers<TRes> {
//   _CopyWithImplQueryPuncherspunchers(
//     this._instance,
//     this._then,
//   );
//
//   final QueryPuncherspunchers _instance;
//
//   final TRes Function(QueryPuncherspunchers) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? paginatorInfo = _undefined,
//     Object? data = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryPuncherspunchers(
//         paginatorInfo: paginatorInfo == _undefined || paginatorInfo == null
//             ? _instance.paginatorInfo
//             : (paginatorInfo as QueryPuncherspuncherspaginatorInfo),
//         data: data == _undefined || data == null
//             ? _instance.data
//             : (data as List<QueryPuncherspunchersdata>),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryPuncherspuncherspaginatorInfo<TRes> get paginatorInfo {
//     final local$paginatorInfo = _instance.paginatorInfo;
//     return CopyWithQueryPuncherspuncherspaginatorInfo(
//         local$paginatorInfo, (e) => call(paginatorInfo: e));
//   }
//
//   TRes data(
//           Iterable<QueryPuncherspunchersdata> Function(
//                   Iterable<
//                       CopyWithQueryPuncherspunchersdata<
//                           QueryPuncherspunchersdata>>)
//               _fn) =>
//       call(
//           data: _fn(_instance.data.map((e) => CopyWithQueryPuncherspunchersdata(
//                 e,
//                 (i) => i,
//               ))).toList());
// }
//
// class _CopyWithStubImplQueryPuncherspunchers<TRes>
//     implements CopyWithQueryPuncherspunchers<TRes> {
//   _CopyWithStubImplQueryPuncherspunchers(this._res);
//
//   TRes _res;
//
//   call({
//     QueryPuncherspuncherspaginatorInfo? paginatorInfo,
//     List<QueryPuncherspunchersdata>? data,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryPuncherspuncherspaginatorInfo<TRes> get paginatorInfo =>
//       CopyWithQueryPuncherspuncherspaginatorInfo.stub(_res);
//
//   data(_fn) => _res;
// }
//
// class QueryPuncherspuncherspaginatorInfo {
//   QueryPuncherspuncherspaginatorInfo({
//     required this.count,
//     required this.currentPage,
//     required this.total,
//     required this.lastPage,
//     required this.hasMorePages,
//     this.$__typename = 'PaginatorInfo',
//   });
//
//   factory QueryPuncherspuncherspaginatorInfo.fromJson(
//       Map<String, dynamic> json) {
//     final l$count = json['count'];
//     final l$currentPage = json['currentPage'];
//     final l$total = json['total'];
//     final l$lastPage = json['lastPage'];
//     final l$hasMorePages = json['hasMorePages'];
//     final l$$__typename = json['__typename'];
//     return QueryPuncherspuncherspaginatorInfo(
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
//     if (!(other is QueryPuncherspuncherspaginatorInfo) ||
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
// extension UtilityExtensionQueryPuncherspuncherspaginatorInfo
//     on QueryPuncherspuncherspaginatorInfo {
//   CopyWithQueryPuncherspuncherspaginatorInfo<QueryPuncherspuncherspaginatorInfo>
//       get copyWith => CopyWithQueryPuncherspuncherspaginatorInfo(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryPuncherspuncherspaginatorInfo<TRes> {
//   factory CopyWithQueryPuncherspuncherspaginatorInfo(
//     QueryPuncherspuncherspaginatorInfo instance,
//     TRes Function(QueryPuncherspuncherspaginatorInfo) then,
//   ) = _CopyWithImplQueryPuncherspuncherspaginatorInfo;
//
//   factory CopyWithQueryPuncherspuncherspaginatorInfo.stub(TRes res) =
//       _CopyWithStubImplQueryPuncherspuncherspaginatorInfo;
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
// class _CopyWithImplQueryPuncherspuncherspaginatorInfo<TRes>
//     implements CopyWithQueryPuncherspuncherspaginatorInfo<TRes> {
//   _CopyWithImplQueryPuncherspuncherspaginatorInfo(
//     this._instance,
//     this._then,
//   );
//
//   final QueryPuncherspuncherspaginatorInfo _instance;
//
//   final TRes Function(QueryPuncherspuncherspaginatorInfo) _then;
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
//       _then(QueryPuncherspuncherspaginatorInfo(
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
// class _CopyWithStubImplQueryPuncherspuncherspaginatorInfo<TRes>
//     implements CopyWithQueryPuncherspuncherspaginatorInfo<TRes> {
//   _CopyWithStubImplQueryPuncherspuncherspaginatorInfo(this._res);
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
// class QueryPuncherspunchersdata {
//   QueryPuncherspunchersdata({
//     this.id,
//     this.title,
//     this.address,
//     this.latitude,
//     this.longitude,
//     this.city,
//     this.distance,
//     this.puncher,
//     this.$__typename = 'Branch',
//   });
//
//   factory QueryPuncherspunchersdata.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$address = json['address'];
//     final l$latitude = json['latitude'];
//     final l$longitude = json['longitude'];
//     final l$city = json['city'];
//     final l$distance = json['distance'];
//     final l$puncher = json['puncher'];
//     final l$$__typename = json['__typename'];
//     return QueryPuncherspunchersdata(
//       id: (l$id as String?),
//       title: (l$title as String?),
//       address: (l$address as String?),
//       latitude: (l$latitude as String?),
//       longitude: (l$longitude as String?),
//       city: l$city == null
//           ? null
//           : QueryPuncherspunchersdatacity.fromJson(
//               (l$city as Map<String, dynamic>)),
//       distance: (l$distance as num?)?.toDouble(),
//       puncher: l$puncher == null
//           ? null
//           : QueryPuncherspunchersdatapuncher.fromJson(
//               (l$puncher as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String? id;
//
//   final String? title;
//
//   final String? address;
//
//   final String? latitude;
//
//   final String? longitude;
//
//   final QueryPuncherspunchersdatacity? city;
//
//   final double? distance;
//
//   final QueryPuncherspunchersdatapuncher? puncher;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$title = title;
//     _resultData['title'] = l$title;
//     final l$address = address;
//     _resultData['address'] = l$address;
//     final l$latitude = latitude;
//     _resultData['latitude'] = l$latitude;
//     final l$longitude = longitude;
//     _resultData['longitude'] = l$longitude;
//     final l$city = city;
//     _resultData['city'] = l$city?.toJson();
//     final l$distance = distance;
//     _resultData['distance'] = l$distance;
//     final l$puncher = puncher;
//     _resultData['puncher'] = l$puncher?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$title = title;
//     final l$address = address;
//     final l$latitude = latitude;
//     final l$longitude = longitude;
//     final l$city = city;
//     final l$distance = distance;
//     final l$puncher = puncher;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$address,
//       l$latitude,
//       l$longitude,
//       l$city,
//       l$distance,
//       l$puncher,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryPuncherspunchersdata) ||
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
//     final l$address = address;
//     final lOther$address = other.address;
//     if (l$address != lOther$address) {
//       return false;
//     }
//     final l$latitude = latitude;
//     final lOther$latitude = other.latitude;
//     if (l$latitude != lOther$latitude) {
//       return false;
//     }
//     final l$longitude = longitude;
//     final lOther$longitude = other.longitude;
//     if (l$longitude != lOther$longitude) {
//       return false;
//     }
//     final l$city = city;
//     final lOther$city = other.city;
//     if (l$city != lOther$city) {
//       return false;
//     }
//     final l$distance = distance;
//     final lOther$distance = other.distance;
//     if (l$distance != lOther$distance) {
//       return false;
//     }
//     final l$puncher = puncher;
//     final lOther$puncher = other.puncher;
//     if (l$puncher != lOther$puncher) {
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
// extension UtilityExtensionQueryPuncherspunchersdata
//     on QueryPuncherspunchersdata {
//   CopyWithQueryPuncherspunchersdata<QueryPuncherspunchersdata> get copyWith =>
//       CopyWithQueryPuncherspunchersdata(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryPuncherspunchersdata<TRes> {
//   factory CopyWithQueryPuncherspunchersdata(
//     QueryPuncherspunchersdata instance,
//     TRes Function(QueryPuncherspunchersdata) then,
//   ) = _CopyWithImplQueryPuncherspunchersdata;
//
//   factory CopyWithQueryPuncherspunchersdata.stub(TRes res) =
//       _CopyWithStubImplQueryPuncherspunchersdata;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? address,
//     String? latitude,
//     String? longitude,
//     QueryPuncherspunchersdatacity? city,
//     double? distance,
//     QueryPuncherspunchersdatapuncher? puncher,
//     String? $__typename,
//   });
//   CopyWithQueryPuncherspunchersdatacity<TRes> get city;
//   CopyWithQueryPuncherspunchersdatapuncher<TRes> get puncher;
// }
//
// class _CopyWithImplQueryPuncherspunchersdata<TRes>
//     implements CopyWithQueryPuncherspunchersdata<TRes> {
//   _CopyWithImplQueryPuncherspunchersdata(
//     this._instance,
//     this._then,
//   );
//
//   final QueryPuncherspunchersdata _instance;
//
//   final TRes Function(QueryPuncherspunchersdata) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? address = _undefined,
//     Object? latitude = _undefined,
//     Object? longitude = _undefined,
//     Object? city = _undefined,
//     Object? distance = _undefined,
//     Object? puncher = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryPuncherspunchersdata(
//         id: id == _undefined ? _instance.id : (id as String?),
//         title: title == _undefined ? _instance.title : (title as String?),
//         address:
//             address == _undefined ? _instance.address : (address as String?),
//         latitude:
//             latitude == _undefined ? _instance.latitude : (latitude as String?),
//         longitude: longitude == _undefined
//             ? _instance.longitude
//             : (longitude as String?),
//         city: city == _undefined
//             ? _instance.city
//             : (city as QueryPuncherspunchersdatacity?),
//         distance:
//             distance == _undefined ? _instance.distance : (distance as double?),
//         puncher: puncher == _undefined
//             ? _instance.puncher
//             : (puncher as QueryPuncherspunchersdatapuncher?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryPuncherspunchersdatacity<TRes> get city {
//     final local$city = _instance.city;
//     return local$city == null
//         ? CopyWithQueryPuncherspunchersdatacity.stub(_then(_instance))
//         : CopyWithQueryPuncherspunchersdatacity(
//             local$city, (e) => call(city: e));
//   }
//
//   CopyWithQueryPuncherspunchersdatapuncher<TRes> get puncher {
//     final local$puncher = _instance.puncher;
//     return local$puncher == null
//         ? CopyWithQueryPuncherspunchersdatapuncher.stub(_then(_instance))
//         : CopyWithQueryPuncherspunchersdatapuncher(
//             local$puncher, (e) => call(puncher: e));
//   }
// }
//
// class _CopyWithStubImplQueryPuncherspunchersdata<TRes>
//     implements CopyWithQueryPuncherspunchersdata<TRes> {
//   _CopyWithStubImplQueryPuncherspunchersdata(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     String? address,
//     String? latitude,
//     String? longitude,
//     QueryPuncherspunchersdatacity? city,
//     double? distance,
//     QueryPuncherspunchersdatapuncher? puncher,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryPuncherspunchersdatacity<TRes> get city =>
//       CopyWithQueryPuncherspunchersdatacity.stub(_res);
//
//   CopyWithQueryPuncherspunchersdatapuncher<TRes> get puncher =>
//       CopyWithQueryPuncherspunchersdatapuncher.stub(_res);
// }
//
// class QueryPuncherspunchersdatacity {
//   QueryPuncherspunchersdatacity({
//     required this.id,
//     required this.title,
//     required this.active,
//     required this.position,
//     this.$__typename = 'City',
//   });
//
//   factory QueryPuncherspunchersdatacity.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$active = json['active'];
//     final l$position = json['position'];
//     final l$$__typename = json['__typename'];
//     return QueryPuncherspunchersdatacity(
//       id: (l$id as String),
//       title: (l$title as String),
//       active: (l$active as int),
//       position: (l$position as int),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String title;
//
//   final int active;
//
//   final int position;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$title = title;
//     _resultData['title'] = l$title;
//     final l$active = active;
//     _resultData['active'] = l$active;
//     final l$position = position;
//     _resultData['position'] = l$position;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$title = title;
//     final l$active = active;
//     final l$position = position;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$active,
//       l$position,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryPuncherspunchersdatacity) ||
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
//     final l$active = active;
//     final lOther$active = other.active;
//     if (l$active != lOther$active) {
//       return false;
//     }
//     final l$position = position;
//     final lOther$position = other.position;
//     if (l$position != lOther$position) {
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
// extension UtilityExtensionQueryPuncherspunchersdatacity
//     on QueryPuncherspunchersdatacity {
//   CopyWithQueryPuncherspunchersdatacity<QueryPuncherspunchersdatacity>
//       get copyWith => CopyWithQueryPuncherspunchersdatacity(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryPuncherspunchersdatacity<TRes> {
//   factory CopyWithQueryPuncherspunchersdatacity(
//     QueryPuncherspunchersdatacity instance,
//     TRes Function(QueryPuncherspunchersdatacity) then,
//   ) = _CopyWithImplQueryPuncherspunchersdatacity;
//
//   factory CopyWithQueryPuncherspunchersdatacity.stub(TRes res) =
//       _CopyWithStubImplQueryPuncherspunchersdatacity;
//
//   TRes call({
//     String? id,
//     String? title,
//     int? active,
//     int? position,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryPuncherspunchersdatacity<TRes>
//     implements CopyWithQueryPuncherspunchersdatacity<TRes> {
//   _CopyWithImplQueryPuncherspunchersdatacity(
//     this._instance,
//     this._then,
//   );
//
//   final QueryPuncherspunchersdatacity _instance;
//
//   final TRes Function(QueryPuncherspunchersdatacity) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? active = _undefined,
//     Object? position = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryPuncherspunchersdatacity(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined || title == null
//             ? _instance.title
//             : (title as String),
//         active: active == _undefined || active == null
//             ? _instance.active
//             : (active as int),
//         position: position == _undefined || position == null
//             ? _instance.position
//             : (position as int),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryPuncherspunchersdatacity<TRes>
//     implements CopyWithQueryPuncherspunchersdatacity<TRes> {
//   _CopyWithStubImplQueryPuncherspunchersdatacity(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     int? active,
//     int? position,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryPuncherspunchersdatapuncher {
//   QueryPuncherspunchersdatapuncher({
//     required this.id,
//     this.name,
//     this.imageUrl,
//     this.$__typename = 'PuncherSimple',
//   });
//
//   factory QueryPuncherspunchersdatapuncher.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$imageUrl = json['imageUrl'];
//     final l$$__typename = json['__typename'];
//     return QueryPuncherspunchersdatapuncher(
//       id: (l$id as String),
//       name: (l$name as String?),
//       imageUrl: (l$imageUrl as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String? name;
//
//   final String? imageUrl;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$name = name;
//     _resultData['name'] = l$name;
//     final l$imageUrl = imageUrl;
//     _resultData['imageUrl'] = l$imageUrl;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$name = name;
//     final l$imageUrl = imageUrl;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$name,
//       l$imageUrl,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryPuncherspunchersdatapuncher) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     final l$name = name;
//     final lOther$name = other.name;
//     if (l$name != lOther$name) {
//       return false;
//     }
//     final l$imageUrl = imageUrl;
//     final lOther$imageUrl = other.imageUrl;
//     if (l$imageUrl != lOther$imageUrl) {
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
// extension UtilityExtensionQueryPuncherspunchersdatapuncher
//     on QueryPuncherspunchersdatapuncher {
//   CopyWithQueryPuncherspunchersdatapuncher<QueryPuncherspunchersdatapuncher>
//       get copyWith => CopyWithQueryPuncherspunchersdatapuncher(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryPuncherspunchersdatapuncher<TRes> {
//   factory CopyWithQueryPuncherspunchersdatapuncher(
//     QueryPuncherspunchersdatapuncher instance,
//     TRes Function(QueryPuncherspunchersdatapuncher) then,
//   ) = _CopyWithImplQueryPuncherspunchersdatapuncher;
//
//   factory CopyWithQueryPuncherspunchersdatapuncher.stub(TRes res) =
//       _CopyWithStubImplQueryPuncherspunchersdatapuncher;
//
//   TRes call({
//     String? id,
//     String? name,
//     String? imageUrl,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryPuncherspunchersdatapuncher<TRes>
//     implements CopyWithQueryPuncherspunchersdatapuncher<TRes> {
//   _CopyWithImplQueryPuncherspunchersdatapuncher(
//     this._instance,
//     this._then,
//   );
//
//   final QueryPuncherspunchersdatapuncher _instance;
//
//   final TRes Function(QueryPuncherspunchersdatapuncher) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? name = _undefined,
//     Object? imageUrl = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryPuncherspunchersdatapuncher(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         name: name == _undefined ? _instance.name : (name as String?),
//         imageUrl:
//             imageUrl == _undefined ? _instance.imageUrl : (imageUrl as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryPuncherspunchersdatapuncher<TRes>
//     implements CopyWithQueryPuncherspunchersdatapuncher<TRes> {
//   _CopyWithStubImplQueryPuncherspunchersdatapuncher(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? name,
//     String? imageUrl,
//     String? $__typename,
//   }) =>
//       _res;
// }
