// import '../../../common/graphql/schema.gql.dart';
// import 'dart:async';
// import 'package:flutter/widgets.dart' as widgets;
// import 'package:gql/ast.dart';
// import 'package:graphql/client.dart' as graphql;
// import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
//
// class VariablesQueryEmployees {
//   factory VariablesQueryEmployees({int? page}) => VariablesQueryEmployees._({
//         if (page != null) r'page': page,
//       });
//
//   VariablesQueryEmployees._(this._$data);
//
//   factory VariablesQueryEmployees.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     if (data.containsKey('page')) {
//       final l$page = data['page'];
//       result$data['page'] = (l$page as int?);
//     }
//     return VariablesQueryEmployees._(result$data);
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
//   CopyWithVariablesQueryEmployees<VariablesQueryEmployees> get copyWith =>
//       CopyWithVariablesQueryEmployees(
//         this,
//         (i) => i,
//       );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesQueryEmployees) ||
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
// abstract class CopyWithVariablesQueryEmployees<TRes> {
//   factory CopyWithVariablesQueryEmployees(
//     VariablesQueryEmployees instance,
//     TRes Function(VariablesQueryEmployees) then,
//   ) = _CopyWithImplVariablesQueryEmployees;
//
//   factory CopyWithVariablesQueryEmployees.stub(TRes res) =
//       _CopyWithStubImplVariablesQueryEmployees;
//
//   TRes call({int? page});
// }
//
// class _CopyWithImplVariablesQueryEmployees<TRes>
//     implements CopyWithVariablesQueryEmployees<TRes> {
//   _CopyWithImplVariablesQueryEmployees(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesQueryEmployees _instance;
//
//   final TRes Function(VariablesQueryEmployees) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? page = _undefined}) => _then(VariablesQueryEmployees._({
//         ..._instance._$data,
//         if (page != _undefined) 'page': (page as int?),
//       }));
// }
//
// class _CopyWithStubImplVariablesQueryEmployees<TRes>
//     implements CopyWithVariablesQueryEmployees<TRes> {
//   _CopyWithStubImplVariablesQueryEmployees(this._res);
//
//   TRes _res;
//
//   call({int? page}) => _res;
// }
//
// class QueryEmployees {
//   QueryEmployees({
//     this.employees,
//     this.$__typename = 'Query',
//   });
//
//   factory QueryEmployees.fromJson(Map<String, dynamic> json) {
//     final l$employees = json['employees'];
//     final l$$__typename = json['__typename'];
//     return QueryEmployees(
//       employees: l$employees == null
//           ? null
//           : QueryEmployeesemployees.fromJson(
//               (l$employees as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryEmployeesemployees? employees;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$employees = employees;
//     _resultData['employees'] = l$employees?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$employees = employees;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$employees,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryEmployees) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$employees = employees;
//     final lOther$employees = other.employees;
//     if (l$employees != lOther$employees) {
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
// extension UtilityExtensionQueryEmployees on QueryEmployees {
//   CopyWithQueryEmployees<QueryEmployees> get copyWith => CopyWithQueryEmployees(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryEmployees<TRes> {
//   factory CopyWithQueryEmployees(
//     QueryEmployees instance,
//     TRes Function(QueryEmployees) then,
//   ) = _CopyWithImplQueryEmployees;
//
//   factory CopyWithQueryEmployees.stub(TRes res) =
//       _CopyWithStubImplQueryEmployees;
//
//   TRes call({
//     QueryEmployeesemployees? employees,
//     String? $__typename,
//   });
//   CopyWithQueryEmployeesemployees<TRes> get employees;
// }
//
// class _CopyWithImplQueryEmployees<TRes>
//     implements CopyWithQueryEmployees<TRes> {
//   _CopyWithImplQueryEmployees(
//     this._instance,
//     this._then,
//   );
//
//   final QueryEmployees _instance;
//
//   final TRes Function(QueryEmployees) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? employees = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryEmployees(
//         employees: employees == _undefined
//             ? _instance.employees
//             : (employees as QueryEmployeesemployees?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryEmployeesemployees<TRes> get employees {
//     final local$employees = _instance.employees;
//     return local$employees == null
//         ? CopyWithQueryEmployeesemployees.stub(_then(_instance))
//         : CopyWithQueryEmployeesemployees(
//             local$employees, (e) => call(employees: e));
//   }
// }
//
// class _CopyWithStubImplQueryEmployees<TRes>
//     implements CopyWithQueryEmployees<TRes> {
//   _CopyWithStubImplQueryEmployees(this._res);
//
//   TRes _res;
//
//   call({
//     QueryEmployeesemployees? employees,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryEmployeesemployees<TRes> get employees =>
//       CopyWithQueryEmployeesemployees.stub(_res);
// }
//
// const documentNodeQueryEmployees = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.query,
//     name: NameNode(value: 'Employees'),
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
//         name: NameNode(value: 'employees'),
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
//                 name: NameNode(value: 'hasMorePages'),
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
//                 name: NameNode(value: 'name'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'email'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'mobile'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'type'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'active'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'national_id'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'wallet_limit'),
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
//                 name: NameNode(value: 'created_at'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'wallet'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'withdrawal'),
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
// QueryEmployees _parserFnQueryEmployees(Map<String, dynamic> data) =>
//     QueryEmployees.fromJson(data);
// typedef OnQueryCompleteQueryEmployees = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   QueryEmployees?,
// );
//
// class OptionsQueryEmployees extends graphql.QueryOptions<QueryEmployees> {
//   OptionsQueryEmployees({
//     String? operationName,
//     VariablesQueryEmployees? variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryEmployees? typedOptimisticResult,
//     Duration? pollInterval,
//     graphql.Context? context,
//     OnQueryCompleteQueryEmployees? onComplete,
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
//                     data == null ? null : _parserFnQueryEmployees(data),
//                   ),
//           onError: onError,
//           document: documentNodeQueryEmployees,
//           parserFn: _parserFnQueryEmployees,
//         );
//
//   final OnQueryCompleteQueryEmployees? onCompleteWithParsed;
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
// class WatchOptionsQueryEmployees
//     extends graphql.WatchQueryOptions<QueryEmployees> {
//   WatchOptionsQueryEmployees({
//     String? operationName,
//     VariablesQueryEmployees? variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryEmployees? typedOptimisticResult,
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
//           document: documentNodeQueryEmployees,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnQueryEmployees,
//         );
// }
//
// class FetchMoreOptionsQueryEmployees extends graphql.FetchMoreOptions {
//   FetchMoreOptionsQueryEmployees({
//     required graphql.UpdateQuery updateQuery,
//     VariablesQueryEmployees? variables,
//   }) : super(
//           updateQuery: updateQuery,
//           variables: variables?.toJson() ?? {},
//           document: documentNodeQueryEmployees,
//         );
// }
//
// extension ClientExtensionQueryEmployees on graphql.GraphQLClient {
//   Future<graphql.QueryResult<QueryEmployees>> queryEmployees(
//           [OptionsQueryEmployees? options]) async =>
//       await this.query(options ?? OptionsQueryEmployees());
//   graphql.ObservableQuery<QueryEmployees> watchQueryEmployees(
//           [WatchOptionsQueryEmployees? options]) =>
//       this.watchQuery(options ?? WatchOptionsQueryEmployees());
//   void writeQueryEmployees({
//     required QueryEmployees data,
//     VariablesQueryEmployees? variables,
//     bool broadcast = true,
//   }) =>
//       this.writeQuery(
//         graphql.Request(
//           operation: graphql.Operation(document: documentNodeQueryEmployees),
//           variables: variables?.toJson() ?? const {},
//         ),
//         data: data.toJson(),
//         broadcast: broadcast,
//       );
//   QueryEmployees? readQueryEmployees({
//     VariablesQueryEmployees? variables,
//     bool optimistic = true,
//   }) {
//     final result = this.readQuery(
//       graphql.Request(
//         operation: graphql.Operation(document: documentNodeQueryEmployees),
//         variables: variables?.toJson() ?? const {},
//       ),
//       optimistic: optimistic,
//     );
//     return result == null ? null : QueryEmployees.fromJson(result);
//   }
// }
//
// graphql_flutter.QueryHookResult<QueryEmployees> useQueryEmployees(
//         [OptionsQueryEmployees? options]) =>
//     graphql_flutter.useQuery(options ?? OptionsQueryEmployees());
// graphql.ObservableQuery<QueryEmployees> useWatchQueryEmployees(
//         [WatchOptionsQueryEmployees? options]) =>
//     graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryEmployees());
//
// class QueryEmployeesWidget extends graphql_flutter.Query<QueryEmployees> {
//   QueryEmployeesWidget({
//     widgets.Key? key,
//     OptionsQueryEmployees? options,
//     required graphql_flutter.QueryBuilder<QueryEmployees> builder,
//   }) : super(
//           key: key,
//           options: options ?? OptionsQueryEmployees(),
//           builder: builder,
//         );
// }
//
// class QueryEmployeesemployees {
//   QueryEmployeesemployees({
//     required this.paginatorInfo,
//     required this.data,
//     this.$__typename = 'UserPaginator',
//   });
//
//   factory QueryEmployeesemployees.fromJson(Map<String, dynamic> json) {
//     final l$paginatorInfo = json['paginatorInfo'];
//     final l$data = json['data'];
//     final l$$__typename = json['__typename'];
//     return QueryEmployeesemployees(
//       paginatorInfo: QueryEmployeesemployeespaginatorInfo.fromJson(
//           (l$paginatorInfo as Map<String, dynamic>)),
//       data: (l$data as List<dynamic>)
//           .map((e) =>
//               QueryEmployeesemployeesdata.fromJson((e as Map<String, dynamic>)))
//           .toList(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryEmployeesemployeespaginatorInfo paginatorInfo;
//
//   final List<QueryEmployeesemployeesdata> data;
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
//     if (!(other is QueryEmployeesemployees) ||
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
// extension UtilityExtensionQueryEmployeesemployees on QueryEmployeesemployees {
//   CopyWithQueryEmployeesemployees<QueryEmployeesemployees> get copyWith =>
//       CopyWithQueryEmployeesemployees(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryEmployeesemployees<TRes> {
//   factory CopyWithQueryEmployeesemployees(
//     QueryEmployeesemployees instance,
//     TRes Function(QueryEmployeesemployees) then,
//   ) = _CopyWithImplQueryEmployeesemployees;
//
//   factory CopyWithQueryEmployeesemployees.stub(TRes res) =
//       _CopyWithStubImplQueryEmployeesemployees;
//
//   TRes call({
//     QueryEmployeesemployeespaginatorInfo? paginatorInfo,
//     List<QueryEmployeesemployeesdata>? data,
//     String? $__typename,
//   });
//   CopyWithQueryEmployeesemployeespaginatorInfo<TRes> get paginatorInfo;
//   TRes data(
//       Iterable<QueryEmployeesemployeesdata> Function(
//               Iterable<
//                   CopyWithQueryEmployeesemployeesdata<
//                       QueryEmployeesemployeesdata>>)
//           _fn);
// }
//
// class _CopyWithImplQueryEmployeesemployees<TRes>
//     implements CopyWithQueryEmployeesemployees<TRes> {
//   _CopyWithImplQueryEmployeesemployees(
//     this._instance,
//     this._then,
//   );
//
//   final QueryEmployeesemployees _instance;
//
//   final TRes Function(QueryEmployeesemployees) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? paginatorInfo = _undefined,
//     Object? data = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryEmployeesemployees(
//         paginatorInfo: paginatorInfo == _undefined || paginatorInfo == null
//             ? _instance.paginatorInfo
//             : (paginatorInfo as QueryEmployeesemployeespaginatorInfo),
//         data: data == _undefined || data == null
//             ? _instance.data
//             : (data as List<QueryEmployeesemployeesdata>),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryEmployeesemployeespaginatorInfo<TRes> get paginatorInfo {
//     final local$paginatorInfo = _instance.paginatorInfo;
//     return CopyWithQueryEmployeesemployeespaginatorInfo(
//         local$paginatorInfo, (e) => call(paginatorInfo: e));
//   }
//
//   TRes data(
//           Iterable<QueryEmployeesemployeesdata> Function(
//                   Iterable<
//                       CopyWithQueryEmployeesemployeesdata<
//                           QueryEmployeesemployeesdata>>)
//               _fn) =>
//       call(
//           data:
//               _fn(_instance.data.map((e) => CopyWithQueryEmployeesemployeesdata(
//                     e,
//                     (i) => i,
//                   ))).toList());
// }
//
// class _CopyWithStubImplQueryEmployeesemployees<TRes>
//     implements CopyWithQueryEmployeesemployees<TRes> {
//   _CopyWithStubImplQueryEmployeesemployees(this._res);
//
//   TRes _res;
//
//   call({
//     QueryEmployeesemployeespaginatorInfo? paginatorInfo,
//     List<QueryEmployeesemployeesdata>? data,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryEmployeesemployeespaginatorInfo<TRes> get paginatorInfo =>
//       CopyWithQueryEmployeesemployeespaginatorInfo.stub(_res);
//
//   data(_fn) => _res;
// }
//
// class QueryEmployeesemployeespaginatorInfo {
//   QueryEmployeesemployeespaginatorInfo({
//     required this.hasMorePages,
//     required this.total,
//     this.$__typename = 'PaginatorInfo',
//   });
//
//   factory QueryEmployeesemployeespaginatorInfo.fromJson(
//       Map<String, dynamic> json) {
//     final l$hasMorePages = json['hasMorePages'];
//     final l$total = json['total'];
//     final l$$__typename = json['__typename'];
//     return QueryEmployeesemployeespaginatorInfo(
//       hasMorePages: (l$hasMorePages as bool),
//       total: (l$total as int),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final bool hasMorePages;
//
//   final int total;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$hasMorePages = hasMorePages;
//     _resultData['hasMorePages'] = l$hasMorePages;
//     final l$total = total;
//     _resultData['total'] = l$total;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$hasMorePages = hasMorePages;
//     final l$total = total;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$hasMorePages,
//       l$total,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryEmployeesemployeespaginatorInfo) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$hasMorePages = hasMorePages;
//     final lOther$hasMorePages = other.hasMorePages;
//     if (l$hasMorePages != lOther$hasMorePages) {
//       return false;
//     }
//     final l$total = total;
//     final lOther$total = other.total;
//     if (l$total != lOther$total) {
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
// extension UtilityExtensionQueryEmployeesemployeespaginatorInfo
//     on QueryEmployeesemployeespaginatorInfo {
//   CopyWithQueryEmployeesemployeespaginatorInfo<
//           QueryEmployeesemployeespaginatorInfo>
//       get copyWith => CopyWithQueryEmployeesemployeespaginatorInfo(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryEmployeesemployeespaginatorInfo<TRes> {
//   factory CopyWithQueryEmployeesemployeespaginatorInfo(
//     QueryEmployeesemployeespaginatorInfo instance,
//     TRes Function(QueryEmployeesemployeespaginatorInfo) then,
//   ) = _CopyWithImplQueryEmployeesemployeespaginatorInfo;
//
//   factory CopyWithQueryEmployeesemployeespaginatorInfo.stub(TRes res) =
//       _CopyWithStubImplQueryEmployeesemployeespaginatorInfo;
//
//   TRes call({
//     bool? hasMorePages,
//     int? total,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryEmployeesemployeespaginatorInfo<TRes>
//     implements CopyWithQueryEmployeesemployeespaginatorInfo<TRes> {
//   _CopyWithImplQueryEmployeesemployeespaginatorInfo(
//     this._instance,
//     this._then,
//   );
//
//   final QueryEmployeesemployeespaginatorInfo _instance;
//
//   final TRes Function(QueryEmployeesemployeespaginatorInfo) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? hasMorePages = _undefined,
//     Object? total = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryEmployeesemployeespaginatorInfo(
//         hasMorePages: hasMorePages == _undefined || hasMorePages == null
//             ? _instance.hasMorePages
//             : (hasMorePages as bool),
//         total: total == _undefined || total == null
//             ? _instance.total
//             : (total as int),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryEmployeesemployeespaginatorInfo<TRes>
//     implements CopyWithQueryEmployeesemployeespaginatorInfo<TRes> {
//   _CopyWithStubImplQueryEmployeesemployeespaginatorInfo(this._res);
//
//   TRes _res;
//
//   call({
//     bool? hasMorePages,
//     int? total,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryEmployeesemployeesdata {
//   QueryEmployeesemployeesdata({
//     required this.id,
//     this.name,
//     this.email,
//     this.mobile,
//     this.type,
//     this.active,
//     this.national_id,
//     this.wallet_limit,
//     this.image_path,
//     this.created_at,
//     this.wallet,
//     this.withdrawal,
//     this.$__typename = 'User',
//   });
//
//   factory QueryEmployeesemployeesdata.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$email = json['email'];
//     final l$mobile = json['mobile'];
//     final l$type = json['type'];
//     final l$active = json['active'];
//     final l$national_id = json['national_id'];
//     final l$wallet_limit = json['wallet_limit'];
//     final l$image_path = json['image_path'];
//     final l$created_at = json['created_at'];
//     final l$wallet = json['wallet'];
//     final l$withdrawal = json['withdrawal'];
//     final l$$__typename = json['__typename'];
//     return QueryEmployeesemployeesdata(
//       id: (l$id as String),
//       name: (l$name as String?),
//       email: (l$email as String?),
//       mobile: (l$mobile as String?),
//       type: (l$type as String?),
//       active: (l$active as int?),
//       national_id: (l$national_id as String?),
//       wallet_limit: (l$wallet_limit as num?)?.toDouble(),
//       image_path: (l$image_path as String?),
//       created_at: (l$created_at as String?),
//       wallet: (l$wallet as num?)?.toDouble(),
//       withdrawal: (l$withdrawal as num?)?.toDouble(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String? name;
//
//   final String? email;
//
//   final String? mobile;
//
//   final String? type;
//
//   final int? active;
//
//   final String? national_id;
//
//   final double? wallet_limit;
//
//   final String? image_path;
//
//   final String? created_at;
//
//   final double? wallet;
//
//   final double? withdrawal;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$name = name;
//     _resultData['name'] = l$name;
//     final l$email = email;
//     _resultData['email'] = l$email;
//     final l$mobile = mobile;
//     _resultData['mobile'] = l$mobile;
//     final l$type = type;
//     _resultData['type'] = l$type;
//     final l$active = active;
//     _resultData['active'] = l$active;
//     final l$national_id = national_id;
//     _resultData['national_id'] = l$national_id;
//     final l$wallet_limit = wallet_limit;
//     _resultData['wallet_limit'] = l$wallet_limit;
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$created_at = created_at;
//     _resultData['created_at'] = l$created_at;
//     final l$wallet = wallet;
//     _resultData['wallet'] = l$wallet;
//     final l$withdrawal = withdrawal;
//     _resultData['withdrawal'] = l$withdrawal;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$name = name;
//     final l$email = email;
//     final l$mobile = mobile;
//     final l$type = type;
//     final l$active = active;
//     final l$national_id = national_id;
//     final l$wallet_limit = wallet_limit;
//     final l$image_path = image_path;
//     final l$created_at = created_at;
//     final l$wallet = wallet;
//     final l$withdrawal = withdrawal;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$name,
//       l$email,
//       l$mobile,
//       l$type,
//       l$active,
//       l$national_id,
//       l$wallet_limit,
//       l$image_path,
//       l$created_at,
//       l$wallet,
//       l$withdrawal,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryEmployeesemployeesdata) ||
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
//     final l$email = email;
//     final lOther$email = other.email;
//     if (l$email != lOther$email) {
//       return false;
//     }
//     final l$mobile = mobile;
//     final lOther$mobile = other.mobile;
//     if (l$mobile != lOther$mobile) {
//       return false;
//     }
//     final l$type = type;
//     final lOther$type = other.type;
//     if (l$type != lOther$type) {
//       return false;
//     }
//     final l$active = active;
//     final lOther$active = other.active;
//     if (l$active != lOther$active) {
//       return false;
//     }
//     final l$national_id = national_id;
//     final lOther$national_id = other.national_id;
//     if (l$national_id != lOther$national_id) {
//       return false;
//     }
//     final l$wallet_limit = wallet_limit;
//     final lOther$wallet_limit = other.wallet_limit;
//     if (l$wallet_limit != lOther$wallet_limit) {
//       return false;
//     }
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
//       return false;
//     }
//     final l$created_at = created_at;
//     final lOther$created_at = other.created_at;
//     if (l$created_at != lOther$created_at) {
//       return false;
//     }
//     final l$wallet = wallet;
//     final lOther$wallet = other.wallet;
//     if (l$wallet != lOther$wallet) {
//       return false;
//     }
//     final l$withdrawal = withdrawal;
//     final lOther$withdrawal = other.withdrawal;
//     if (l$withdrawal != lOther$withdrawal) {
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
// extension UtilityExtensionQueryEmployeesemployeesdata
//     on QueryEmployeesemployeesdata {
//   CopyWithQueryEmployeesemployeesdata<QueryEmployeesemployeesdata>
//       get copyWith => CopyWithQueryEmployeesemployeesdata(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryEmployeesemployeesdata<TRes> {
//   factory CopyWithQueryEmployeesemployeesdata(
//     QueryEmployeesemployeesdata instance,
//     TRes Function(QueryEmployeesemployeesdata) then,
//   ) = _CopyWithImplQueryEmployeesemployeesdata;
//
//   factory CopyWithQueryEmployeesemployeesdata.stub(TRes res) =
//       _CopyWithStubImplQueryEmployeesemployeesdata;
//
//   TRes call({
//     String? id,
//     String? name,
//     String? email,
//     String? mobile,
//     String? type,
//     bool? active,
//     String? national_id,
//     double? wallet_limit,
//     String? image_path,
//     String? created_at,
//     double? wallet,
//     double? withdrawal,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryEmployeesemployeesdata<TRes>
//     implements CopyWithQueryEmployeesemployeesdata<TRes> {
//   _CopyWithImplQueryEmployeesemployeesdata(
//     this._instance,
//     this._then,
//   );
//
//   final QueryEmployeesemployeesdata _instance;
//
//   final TRes Function(QueryEmployeesemployeesdata) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? name = _undefined,
//     Object? email = _undefined,
//     Object? mobile = _undefined,
//     Object? type = _undefined,
//     Object? active = _undefined,
//     Object? national_id = _undefined,
//     Object? wallet_limit = _undefined,
//     Object? image_path = _undefined,
//     Object? created_at = _undefined,
//     Object? wallet = _undefined,
//     Object? withdrawal = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryEmployeesemployeesdata(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         name: name == _undefined ? _instance.name : (name as String?),
//         email: email == _undefined ? _instance.email : (email as String?),
//         mobile: mobile == _undefined ? _instance.mobile : (mobile as String?),
//         type: type == _undefined ? _instance.type : (type as String?),
//         active: active == _undefined ? _instance.active : (active as int?),
//         national_id: national_id == _undefined
//             ? _instance.national_id
//             : (national_id as String?),
//         wallet_limit: wallet_limit == _undefined
//             ? _instance.wallet_limit
//             : (wallet_limit as double?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         created_at: created_at == _undefined
//             ? _instance.created_at
//             : (created_at as String?),
//         wallet: wallet == _undefined ? _instance.wallet : (wallet as double?),
//         withdrawal: withdrawal == _undefined
//             ? _instance.withdrawal
//             : (withdrawal as double?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryEmployeesemployeesdata<TRes>
//     implements CopyWithQueryEmployeesemployeesdata<TRes> {
//   _CopyWithStubImplQueryEmployeesemployeesdata(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? name,
//     String? email,
//     String? mobile,
//     String? type,
//     bool? active,
//     String? national_id,
//     double? wallet_limit,
//     String? image_path,
//     String? created_at,
//     double? wallet,
//     double? withdrawal,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesMutationAddSingleEmployee {
//   factory VariablesMutationAddSingleEmployee({
//     required String name,
//     required String phone,
//     required String email,
//     required String idNumber,
//     double? limit,
//   }) =>
//       VariablesMutationAddSingleEmployee._({
//         r'name': name,
//         r'phone': phone,
//         r'email': email,
//         r'idNumber': idNumber,
//         if (limit != null) r'limit': limit,
//       });
//
//   VariablesMutationAddSingleEmployee._(this._$data);
//
//   factory VariablesMutationAddSingleEmployee.fromJson(
//       Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$name = data['name'];
//     result$data['name'] = (l$name as String);
//     final l$phone = data['phone'];
//     result$data['phone'] = (l$phone as String);
//     final l$email = data['email'];
//     result$data['email'] = (l$email as String);
//     final l$idNumber = data['idNumber'];
//     result$data['idNumber'] = (l$idNumber as String);
//     if (data.containsKey('limit')) {
//       final l$limit = data['limit'];
//       result$data['limit'] = (l$limit as num?)?.toDouble();
//     }
//     return VariablesMutationAddSingleEmployee._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   String get name => (_$data['name'] as String);
//
//   String get phone => (_$data['phone'] as String);
//
//   String get email => (_$data['email'] as String);
//
//   String get idNumber => (_$data['idNumber'] as String);
//
//   double? get limit => (_$data['limit'] as double?);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$name = name;
//     result$data['name'] = l$name;
//     final l$phone = phone;
//     result$data['phone'] = l$phone;
//     final l$email = email;
//     result$data['email'] = l$email;
//     final l$idNumber = idNumber;
//     result$data['idNumber'] = l$idNumber;
//     if (_$data.containsKey('limit')) {
//       final l$limit = limit;
//       result$data['limit'] = l$limit;
//     }
//     return result$data;
//   }
//
//   CopyWithVariablesMutationAddSingleEmployee<VariablesMutationAddSingleEmployee>
//       get copyWith => CopyWithVariablesMutationAddSingleEmployee(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationAddSingleEmployee) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$name = name;
//     final lOther$name = other.name;
//     if (l$name != lOther$name) {
//       return false;
//     }
//     final l$phone = phone;
//     final lOther$phone = other.phone;
//     if (l$phone != lOther$phone) {
//       return false;
//     }
//     final l$email = email;
//     final lOther$email = other.email;
//     if (l$email != lOther$email) {
//       return false;
//     }
//     final l$idNumber = idNumber;
//     final lOther$idNumber = other.idNumber;
//     if (l$idNumber != lOther$idNumber) {
//       return false;
//     }
//     final l$limit = limit;
//     final lOther$limit = other.limit;
//     if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
//       return false;
//     }
//     if (l$limit != lOther$limit) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$name = name;
//     final l$phone = phone;
//     final l$email = email;
//     final l$idNumber = idNumber;
//     final l$limit = limit;
//     return Object.hashAll([
//       l$name,
//       l$phone,
//       l$email,
//       l$idNumber,
//       _$data.containsKey('limit') ? l$limit : const {},
//     ]);
//   }
// }
//
// abstract class CopyWithVariablesMutationAddSingleEmployee<TRes> {
//   factory CopyWithVariablesMutationAddSingleEmployee(
//     VariablesMutationAddSingleEmployee instance,
//     TRes Function(VariablesMutationAddSingleEmployee) then,
//   ) = _CopyWithImplVariablesMutationAddSingleEmployee;
//
//   factory CopyWithVariablesMutationAddSingleEmployee.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationAddSingleEmployee;
//
//   TRes call({
//     String? name,
//     String? phone,
//     String? email,
//     String? idNumber,
//     double? limit,
//   });
// }
//
// class _CopyWithImplVariablesMutationAddSingleEmployee<TRes>
//     implements CopyWithVariablesMutationAddSingleEmployee<TRes> {
//   _CopyWithImplVariablesMutationAddSingleEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationAddSingleEmployee _instance;
//
//   final TRes Function(VariablesMutationAddSingleEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? name = _undefined,
//     Object? phone = _undefined,
//     Object? email = _undefined,
//     Object? idNumber = _undefined,
//     Object? limit = _undefined,
//   }) =>
//       _then(VariablesMutationAddSingleEmployee._({
//         ..._instance._$data,
//         if (name != _undefined && name != null) 'name': (name as String),
//         if (phone != _undefined && phone != null) 'phone': (phone as String),
//         if (email != _undefined && email != null) 'email': (email as String),
//         if (idNumber != _undefined && idNumber != null)
//           'idNumber': (idNumber as String),
//         if (limit != _undefined) 'limit': (limit as double?),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationAddSingleEmployee<TRes>
//     implements CopyWithVariablesMutationAddSingleEmployee<TRes> {
//   _CopyWithStubImplVariablesMutationAddSingleEmployee(this._res);
//
//   TRes _res;
//
//   call({
//     String? name,
//     String? phone,
//     String? email,
//     String? idNumber,
//     double? limit,
//   }) =>
//       _res;
// }
//
// class MutationAddSingleEmployee {
//   MutationAddSingleEmployee({
//     required this.createEmployee,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationAddSingleEmployee.fromJson(Map<String, dynamic> json) {
//     final l$createEmployee = json['createEmployee'];
//     final l$$__typename = json['__typename'];
//     return MutationAddSingleEmployee(
//       createEmployee: MutationAddSingleEmployeecreateEmployee.fromJson(
//           (l$createEmployee as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationAddSingleEmployeecreateEmployee createEmployee;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$createEmployee = createEmployee;
//     _resultData['createEmployee'] = l$createEmployee.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$createEmployee = createEmployee;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$createEmployee,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationAddSingleEmployee) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$createEmployee = createEmployee;
//     final lOther$createEmployee = other.createEmployee;
//     if (l$createEmployee != lOther$createEmployee) {
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
// extension UtilityExtensionMutationAddSingleEmployee
//     on MutationAddSingleEmployee {
//   CopyWithMutationAddSingleEmployee<MutationAddSingleEmployee> get copyWith =>
//       CopyWithMutationAddSingleEmployee(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationAddSingleEmployee<TRes> {
//   factory CopyWithMutationAddSingleEmployee(
//     MutationAddSingleEmployee instance,
//     TRes Function(MutationAddSingleEmployee) then,
//   ) = _CopyWithImplMutationAddSingleEmployee;
//
//   factory CopyWithMutationAddSingleEmployee.stub(TRes res) =
//       _CopyWithStubImplMutationAddSingleEmployee;
//
//   TRes call({
//     MutationAddSingleEmployeecreateEmployee? createEmployee,
//     String? $__typename,
//   });
//   CopyWithMutationAddSingleEmployeecreateEmployee<TRes> get createEmployee;
// }
//
// class _CopyWithImplMutationAddSingleEmployee<TRes>
//     implements CopyWithMutationAddSingleEmployee<TRes> {
//   _CopyWithImplMutationAddSingleEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final MutationAddSingleEmployee _instance;
//
//   final TRes Function(MutationAddSingleEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? createEmployee = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationAddSingleEmployee(
//         createEmployee: createEmployee == _undefined || createEmployee == null
//             ? _instance.createEmployee
//             : (createEmployee as MutationAddSingleEmployeecreateEmployee),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationAddSingleEmployeecreateEmployee<TRes> get createEmployee {
//     final local$createEmployee = _instance.createEmployee;
//     return CopyWithMutationAddSingleEmployeecreateEmployee(
//         local$createEmployee, (e) => call(createEmployee: e));
//   }
// }
//
// class _CopyWithStubImplMutationAddSingleEmployee<TRes>
//     implements CopyWithMutationAddSingleEmployee<TRes> {
//   _CopyWithStubImplMutationAddSingleEmployee(this._res);
//
//   TRes _res;
//
//   call({
//     MutationAddSingleEmployeecreateEmployee? createEmployee,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationAddSingleEmployeecreateEmployee<TRes> get createEmployee =>
//       CopyWithMutationAddSingleEmployeecreateEmployee.stub(_res);
// }
//
// const documentNodeMutationAddSingleEmployee = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'AddSingleEmployee'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'name')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'phone')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'email')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'idNumber')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'limit')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'Float'),
//           isNonNull: false,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//     ],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'createEmployee'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'name'),
//                 value: VariableNode(name: NameNode(value: 'name')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'mobile'),
//                 value: VariableNode(name: NameNode(value: 'phone')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'national_id'),
//                 value: VariableNode(name: NameNode(value: 'idNumber')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'email'),
//                 value: VariableNode(name: NameNode(value: 'email')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'wallet_limit'),
//                 value: VariableNode(name: NameNode(value: 'limit')),
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
//             name: NameNode(value: 'user'),
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
//                 name: NameNode(value: 'name'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'email'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'mobile'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'type'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'active'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'national_id'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'wallet_limit'),
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
//                 name: NameNode(value: 'created_at'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'wallet'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'withdrawal'),
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
// MutationAddSingleEmployee _parserFnMutationAddSingleEmployee(
//         Map<String, dynamic> data) =>
//     MutationAddSingleEmployee.fromJson(data);
// typedef OnMutationCompletedMutationAddSingleEmployee = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationAddSingleEmployee?,
// );
//
// class OptionsMutationAddSingleEmployee
//     extends graphql.MutationOptions<MutationAddSingleEmployee> {
//   OptionsMutationAddSingleEmployee({
//     String? operationName,
//     required VariablesMutationAddSingleEmployee variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationAddSingleEmployee? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationAddSingleEmployee? onCompleted,
//     graphql.OnMutationUpdate<MutationAddSingleEmployee>? update,
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
//                         : _parserFnMutationAddSingleEmployee(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationAddSingleEmployee,
//           parserFn: _parserFnMutationAddSingleEmployee,
//         );
//
//   final OnMutationCompletedMutationAddSingleEmployee? onCompletedWithParsed;
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
// class WatchOptionsMutationAddSingleEmployee
//     extends graphql.WatchQueryOptions<MutationAddSingleEmployee> {
//   WatchOptionsMutationAddSingleEmployee({
//     String? operationName,
//     required VariablesMutationAddSingleEmployee variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationAddSingleEmployee? typedOptimisticResult,
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
//           document: documentNodeMutationAddSingleEmployee,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationAddSingleEmployee,
//         );
// }
//
// extension ClientExtensionMutationAddSingleEmployee on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationAddSingleEmployee>>
//       mutateAddSingleEmployee(OptionsMutationAddSingleEmployee options) async =>
//           await this.mutate(options);
//   graphql.ObservableQuery<MutationAddSingleEmployee>
//       watchMutationAddSingleEmployee(
//               WatchOptionsMutationAddSingleEmployee options) =>
//           this.watchMutation(options);
// }
//
// class MutationAddSingleEmployeeHookResult {
//   MutationAddSingleEmployeeHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationAddSingleEmployee runMutation;
//
//   final graphql.QueryResult<MutationAddSingleEmployee> result;
// }
//
// MutationAddSingleEmployeeHookResult useMutationAddSingleEmployee(
//     [WidgetOptionsMutationAddSingleEmployee? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationAddSingleEmployee());
//   return MutationAddSingleEmployeeHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationAddSingleEmployee>
//     useWatchMutationAddSingleEmployee(
//             WatchOptionsMutationAddSingleEmployee options) =>
//         graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationAddSingleEmployee
//     extends graphql.MutationOptions<MutationAddSingleEmployee> {
//   WidgetOptionsMutationAddSingleEmployee({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationAddSingleEmployee? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationAddSingleEmployee? onCompleted,
//     graphql.OnMutationUpdate<MutationAddSingleEmployee>? update,
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
//                         : _parserFnMutationAddSingleEmployee(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationAddSingleEmployee,
//           parserFn: _parserFnMutationAddSingleEmployee,
//         );
//
//   final OnMutationCompletedMutationAddSingleEmployee? onCompletedWithParsed;
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
// typedef RunMutationMutationAddSingleEmployee
//     = graphql.MultiSourceResult<MutationAddSingleEmployee> Function(
//   VariablesMutationAddSingleEmployee, {
//   Object? optimisticResult,
//   MutationAddSingleEmployee? typedOptimisticResult,
// });
// typedef BuilderMutationAddSingleEmployee = widgets.Widget Function(
//   RunMutationMutationAddSingleEmployee,
//   graphql.QueryResult<MutationAddSingleEmployee>?,
// );
//
// class MutationAddSingleEmployeeWidget
//     extends graphql_flutter.Mutation<MutationAddSingleEmployee> {
//   MutationAddSingleEmployeeWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationAddSingleEmployee? options,
//     required BuilderMutationAddSingleEmployee builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationAddSingleEmployee(),
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
// class MutationAddSingleEmployeecreateEmployee {
//   MutationAddSingleEmployeecreateEmployee({
//     required this.error,
//     required this.status,
//     this.message,
//     this.user,
//     this.$__typename = 'Employee',
//   });
//
//   factory MutationAddSingleEmployeecreateEmployee.fromJson(
//       Map<String, dynamic> json) {
//     final l$error = json['error'];
//     final l$status = json['status'];
//     final l$message = json['message'];
//     final l$user = json['user'];
//     final l$$__typename = json['__typename'];
//     return MutationAddSingleEmployeecreateEmployee(
//       error: (l$error as int),
//       status: (l$status as String),
//       message: (l$message as String?),
//       user: l$user == null
//           ? null
//           : MutationAddSingleEmployeecreateEmployeeuser.fromJson(
//               (l$user as Map<String, dynamic>)),
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
//   final MutationAddSingleEmployeecreateEmployeeuser? user;
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
//     final l$user = user;
//     _resultData['user'] = l$user?.toJson();
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
//     final l$user = user;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$error,
//       l$status,
//       l$message,
//       l$user,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationAddSingleEmployeecreateEmployee) ||
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
//     final l$user = user;
//     final lOther$user = other.user;
//     if (l$user != lOther$user) {
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
// extension UtilityExtensionMutationAddSingleEmployeecreateEmployee
//     on MutationAddSingleEmployeecreateEmployee {
//   CopyWithMutationAddSingleEmployeecreateEmployee<
//           MutationAddSingleEmployeecreateEmployee>
//       get copyWith => CopyWithMutationAddSingleEmployeecreateEmployee(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationAddSingleEmployeecreateEmployee<TRes> {
//   factory CopyWithMutationAddSingleEmployeecreateEmployee(
//     MutationAddSingleEmployeecreateEmployee instance,
//     TRes Function(MutationAddSingleEmployeecreateEmployee) then,
//   ) = _CopyWithImplMutationAddSingleEmployeecreateEmployee;
//
//   factory CopyWithMutationAddSingleEmployeecreateEmployee.stub(TRes res) =
//       _CopyWithStubImplMutationAddSingleEmployeecreateEmployee;
//
//   TRes call({
//     int? error,
//     String? status,
//     String? message,
//     MutationAddSingleEmployeecreateEmployeeuser? user,
//     String? $__typename,
//   });
//   CopyWithMutationAddSingleEmployeecreateEmployeeuser<TRes> get user;
// }
//
// class _CopyWithImplMutationAddSingleEmployeecreateEmployee<TRes>
//     implements CopyWithMutationAddSingleEmployeecreateEmployee<TRes> {
//   _CopyWithImplMutationAddSingleEmployeecreateEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final MutationAddSingleEmployeecreateEmployee _instance;
//
//   final TRes Function(MutationAddSingleEmployeecreateEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? error = _undefined,
//     Object? status = _undefined,
//     Object? message = _undefined,
//     Object? user = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationAddSingleEmployeecreateEmployee(
//         error: error == _undefined || error == null
//             ? _instance.error
//             : (error as int),
//         status: status == _undefined || status == null
//             ? _instance.status
//             : (status as String),
//         message:
//             message == _undefined ? _instance.message : (message as String?),
//         user: user == _undefined
//             ? _instance.user
//             : (user as MutationAddSingleEmployeecreateEmployeeuser?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationAddSingleEmployeecreateEmployeeuser<TRes> get user {
//     final local$user = _instance.user;
//     return local$user == null
//         ? CopyWithMutationAddSingleEmployeecreateEmployeeuser.stub(
//             _then(_instance))
//         : CopyWithMutationAddSingleEmployeecreateEmployeeuser(
//             local$user, (e) => call(user: e));
//   }
// }
//
// class _CopyWithStubImplMutationAddSingleEmployeecreateEmployee<TRes>
//     implements CopyWithMutationAddSingleEmployeecreateEmployee<TRes> {
//   _CopyWithStubImplMutationAddSingleEmployeecreateEmployee(this._res);
//
//   TRes _res;
//
//   call({
//     int? error,
//     String? status,
//     String? message,
//     MutationAddSingleEmployeecreateEmployeeuser? user,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationAddSingleEmployeecreateEmployeeuser<TRes> get user =>
//       CopyWithMutationAddSingleEmployeecreateEmployeeuser.stub(_res);
// }
//
// class MutationAddSingleEmployeecreateEmployeeuser {
//   MutationAddSingleEmployeecreateEmployeeuser({
//     required this.id,
//     this.name,
//     this.email,
//     this.mobile,
//     this.type,
//     this.active,
//     this.national_id,
//     this.wallet_limit,
//     this.image_path,
//     this.created_at,
//     this.wallet,
//     this.withdrawal,
//     this.$__typename = 'User',
//   });
//
//   factory MutationAddSingleEmployeecreateEmployeeuser.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$email = json['email'];
//     final l$mobile = json['mobile'];
//     final l$type = json['type'];
//     final l$active = json['active'];
//     final l$national_id = json['national_id'];
//     final l$wallet_limit = json['wallet_limit'];
//     final l$image_path = json['image_path'];
//     final l$created_at = json['created_at'];
//     final l$wallet = json['wallet'];
//     final l$withdrawal = json['withdrawal'];
//     final l$$__typename = json['__typename'];
//     return MutationAddSingleEmployeecreateEmployeeuser(
//       id: (l$id as String),
//       name: (l$name as String?),
//       email: (l$email as String?),
//       mobile: (l$mobile as String?),
//       type: (l$type as String?),
//       active: (l$active as int?),
//       national_id: (l$national_id as String?),
//       wallet_limit: (l$wallet_limit as num?)?.toDouble(),
//       image_path: (l$image_path as String?),
//       created_at: (l$created_at as String?),
//       wallet: (l$wallet as num?)?.toDouble(),
//       withdrawal: (l$withdrawal as num?)?.toDouble(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String? name;
//
//   final String? email;
//
//   final String? mobile;
//
//   final String? type;
//
//   final int? active;
//
//   final String? national_id;
//
//   final double? wallet_limit;
//
//   final String? image_path;
//
//   final String? created_at;
//
//   final double? wallet;
//
//   final double? withdrawal;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$name = name;
//     _resultData['name'] = l$name;
//     final l$email = email;
//     _resultData['email'] = l$email;
//     final l$mobile = mobile;
//     _resultData['mobile'] = l$mobile;
//     final l$type = type;
//     _resultData['type'] = l$type;
//     final l$active = active;
//     _resultData['active'] = l$active;
//     final l$national_id = national_id;
//     _resultData['national_id'] = l$national_id;
//     final l$wallet_limit = wallet_limit;
//     _resultData['wallet_limit'] = l$wallet_limit;
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$created_at = created_at;
//     _resultData['created_at'] = l$created_at;
//     final l$wallet = wallet;
//     _resultData['wallet'] = l$wallet;
//     final l$withdrawal = withdrawal;
//     _resultData['withdrawal'] = l$withdrawal;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$name = name;
//     final l$email = email;
//     final l$mobile = mobile;
//     final l$type = type;
//     final l$active = active;
//     final l$national_id = national_id;
//     final l$wallet_limit = wallet_limit;
//     final l$image_path = image_path;
//     final l$created_at = created_at;
//     final l$wallet = wallet;
//     final l$withdrawal = withdrawal;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$name,
//       l$email,
//       l$mobile,
//       l$type,
//       l$active,
//       l$national_id,
//       l$wallet_limit,
//       l$image_path,
//       l$created_at,
//       l$wallet,
//       l$withdrawal,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationAddSingleEmployeecreateEmployeeuser) ||
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
//     final l$email = email;
//     final lOther$email = other.email;
//     if (l$email != lOther$email) {
//       return false;
//     }
//     final l$mobile = mobile;
//     final lOther$mobile = other.mobile;
//     if (l$mobile != lOther$mobile) {
//       return false;
//     }
//     final l$type = type;
//     final lOther$type = other.type;
//     if (l$type != lOther$type) {
//       return false;
//     }
//     final l$active = active;
//     final lOther$active = other.active;
//     if (l$active != lOther$active) {
//       return false;
//     }
//     final l$national_id = national_id;
//     final lOther$national_id = other.national_id;
//     if (l$national_id != lOther$national_id) {
//       return false;
//     }
//     final l$wallet_limit = wallet_limit;
//     final lOther$wallet_limit = other.wallet_limit;
//     if (l$wallet_limit != lOther$wallet_limit) {
//       return false;
//     }
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
//       return false;
//     }
//     final l$created_at = created_at;
//     final lOther$created_at = other.created_at;
//     if (l$created_at != lOther$created_at) {
//       return false;
//     }
//     final l$wallet = wallet;
//     final lOther$wallet = other.wallet;
//     if (l$wallet != lOther$wallet) {
//       return false;
//     }
//     final l$withdrawal = withdrawal;
//     final lOther$withdrawal = other.withdrawal;
//     if (l$withdrawal != lOther$withdrawal) {
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
// extension UtilityExtensionMutationAddSingleEmployeecreateEmployeeuser
//     on MutationAddSingleEmployeecreateEmployeeuser {
//   CopyWithMutationAddSingleEmployeecreateEmployeeuser<
//           MutationAddSingleEmployeecreateEmployeeuser>
//       get copyWith => CopyWithMutationAddSingleEmployeecreateEmployeeuser(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationAddSingleEmployeecreateEmployeeuser<TRes> {
//   factory CopyWithMutationAddSingleEmployeecreateEmployeeuser(
//     MutationAddSingleEmployeecreateEmployeeuser instance,
//     TRes Function(MutationAddSingleEmployeecreateEmployeeuser) then,
//   ) = _CopyWithImplMutationAddSingleEmployeecreateEmployeeuser;
//
//   factory CopyWithMutationAddSingleEmployeecreateEmployeeuser.stub(TRes res) =
//       _CopyWithStubImplMutationAddSingleEmployeecreateEmployeeuser;
//
//   TRes call({
//     String? id,
//     String? name,
//     String? email,
//     String? mobile,
//     String? type,
//     bool? active,
//     String? national_id,
//     double? wallet_limit,
//     String? image_path,
//     String? created_at,
//     double? wallet,
//     double? withdrawal,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationAddSingleEmployeecreateEmployeeuser<TRes>
//     implements CopyWithMutationAddSingleEmployeecreateEmployeeuser<TRes> {
//   _CopyWithImplMutationAddSingleEmployeecreateEmployeeuser(
//     this._instance,
//     this._then,
//   );
//
//   final MutationAddSingleEmployeecreateEmployeeuser _instance;
//
//   final TRes Function(MutationAddSingleEmployeecreateEmployeeuser) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? name = _undefined,
//     Object? email = _undefined,
//     Object? mobile = _undefined,
//     Object? type = _undefined,
//     Object? active = _undefined,
//     Object? national_id = _undefined,
//     Object? wallet_limit = _undefined,
//     Object? image_path = _undefined,
//     Object? created_at = _undefined,
//     Object? wallet = _undefined,
//     Object? withdrawal = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationAddSingleEmployeecreateEmployeeuser(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         name: name == _undefined ? _instance.name : (name as String?),
//         email: email == _undefined ? _instance.email : (email as String?),
//         mobile: mobile == _undefined ? _instance.mobile : (mobile as String?),
//         type: type == _undefined ? _instance.type : (type as String?),
//         active: active == _undefined ? _instance.active : (active as int?),
//         national_id: national_id == _undefined
//             ? _instance.national_id
//             : (national_id as String?),
//         wallet_limit: wallet_limit == _undefined
//             ? _instance.wallet_limit
//             : (wallet_limit as double?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         created_at: created_at == _undefined
//             ? _instance.created_at
//             : (created_at as String?),
//         wallet: wallet == _undefined ? _instance.wallet : (wallet as double?),
//         withdrawal: withdrawal == _undefined
//             ? _instance.withdrawal
//             : (withdrawal as double?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplMutationAddSingleEmployeecreateEmployeeuser<TRes>
//     implements CopyWithMutationAddSingleEmployeecreateEmployeeuser<TRes> {
//   _CopyWithStubImplMutationAddSingleEmployeecreateEmployeeuser(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? name,
//     String? email,
//     String? mobile,
//     String? type,
//     bool? active,
//     String? national_id,
//     double? wallet_limit,
//     String? image_path,
//     String? created_at,
//     double? wallet,
//     double? withdrawal,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesMutationAddEmployeeFile {
//   factory VariablesMutationAddEmployeeFile({required String file}) =>
//       VariablesMutationAddEmployeeFile._({
//         r'file': file,
//       });
//
//   VariablesMutationAddEmployeeFile._(this._$data);
//
//   factory VariablesMutationAddEmployeeFile.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$file = data['file'];
//     result$data['file'] = (l$file as String);
//     return VariablesMutationAddEmployeeFile._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   String get file => (_$data['file'] as String);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$file = file;
//     result$data['file'] = l$file;
//     return result$data;
//   }
//
//   CopyWithVariablesMutationAddEmployeeFile<VariablesMutationAddEmployeeFile>
//       get copyWith => CopyWithVariablesMutationAddEmployeeFile(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationAddEmployeeFile) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$file = file;
//     final lOther$file = other.file;
//     if (l$file != lOther$file) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$file = file;
//     return Object.hashAll([l$file]);
//   }
// }
//
// abstract class CopyWithVariablesMutationAddEmployeeFile<TRes> {
//   factory CopyWithVariablesMutationAddEmployeeFile(
//     VariablesMutationAddEmployeeFile instance,
//     TRes Function(VariablesMutationAddEmployeeFile) then,
//   ) = _CopyWithImplVariablesMutationAddEmployeeFile;
//
//   factory CopyWithVariablesMutationAddEmployeeFile.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationAddEmployeeFile;
//
//   TRes call({String? file});
// }
//
// class _CopyWithImplVariablesMutationAddEmployeeFile<TRes>
//     implements CopyWithVariablesMutationAddEmployeeFile<TRes> {
//   _CopyWithImplVariablesMutationAddEmployeeFile(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationAddEmployeeFile _instance;
//
//   final TRes Function(VariablesMutationAddEmployeeFile) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? file = _undefined}) =>
//       _then(VariablesMutationAddEmployeeFile._({
//         ..._instance._$data,
//         if (file != _undefined && file != null) 'file': (file as String),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationAddEmployeeFile<TRes>
//     implements CopyWithVariablesMutationAddEmployeeFile<TRes> {
//   _CopyWithStubImplVariablesMutationAddEmployeeFile(this._res);
//
//   TRes _res;
//
//   call({String? file}) => _res;
// }
//
// class MutationAddEmployeeFile {
//   MutationAddEmployeeFile({
//     required this.uploadEmployee,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationAddEmployeeFile.fromJson(Map<String, dynamic> json) {
//     final l$uploadEmployee = json['uploadEmployee'];
//     final l$$__typename = json['__typename'];
//     return MutationAddEmployeeFile(
//       uploadEmployee: MutationAddEmployeeFileuploadEmployee.fromJson(
//           (l$uploadEmployee as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationAddEmployeeFileuploadEmployee uploadEmployee;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$uploadEmployee = uploadEmployee;
//     _resultData['uploadEmployee'] = l$uploadEmployee.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$uploadEmployee = uploadEmployee;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$uploadEmployee,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationAddEmployeeFile) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$uploadEmployee = uploadEmployee;
//     final lOther$uploadEmployee = other.uploadEmployee;
//     if (l$uploadEmployee != lOther$uploadEmployee) {
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
// extension UtilityExtensionMutationAddEmployeeFile on MutationAddEmployeeFile {
//   CopyWithMutationAddEmployeeFile<MutationAddEmployeeFile> get copyWith =>
//       CopyWithMutationAddEmployeeFile(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationAddEmployeeFile<TRes> {
//   factory CopyWithMutationAddEmployeeFile(
//     MutationAddEmployeeFile instance,
//     TRes Function(MutationAddEmployeeFile) then,
//   ) = _CopyWithImplMutationAddEmployeeFile;
//
//   factory CopyWithMutationAddEmployeeFile.stub(TRes res) =
//       _CopyWithStubImplMutationAddEmployeeFile;
//
//   TRes call({
//     MutationAddEmployeeFileuploadEmployee? uploadEmployee,
//     String? $__typename,
//   });
//   CopyWithMutationAddEmployeeFileuploadEmployee<TRes> get uploadEmployee;
// }
//
// class _CopyWithImplMutationAddEmployeeFile<TRes>
//     implements CopyWithMutationAddEmployeeFile<TRes> {
//   _CopyWithImplMutationAddEmployeeFile(
//     this._instance,
//     this._then,
//   );
//
//   final MutationAddEmployeeFile _instance;
//
//   final TRes Function(MutationAddEmployeeFile) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? uploadEmployee = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationAddEmployeeFile(
//         uploadEmployee: uploadEmployee == _undefined || uploadEmployee == null
//             ? _instance.uploadEmployee
//             : (uploadEmployee as MutationAddEmployeeFileuploadEmployee),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationAddEmployeeFileuploadEmployee<TRes> get uploadEmployee {
//     final local$uploadEmployee = _instance.uploadEmployee;
//     return CopyWithMutationAddEmployeeFileuploadEmployee(
//         local$uploadEmployee, (e) => call(uploadEmployee: e));
//   }
// }
//
// class _CopyWithStubImplMutationAddEmployeeFile<TRes>
//     implements CopyWithMutationAddEmployeeFile<TRes> {
//   _CopyWithStubImplMutationAddEmployeeFile(this._res);
//
//   TRes _res;
//
//   call({
//     MutationAddEmployeeFileuploadEmployee? uploadEmployee,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationAddEmployeeFileuploadEmployee<TRes> get uploadEmployee =>
//       CopyWithMutationAddEmployeeFileuploadEmployee.stub(_res);
// }
//
// const documentNodeMutationAddEmployeeFile = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'AddEmployeeFile'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'file')),
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
//         name: NameNode(value: 'uploadEmployee'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'file'),
//                 value: VariableNode(name: NameNode(value: 'file')),
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
// MutationAddEmployeeFile _parserFnMutationAddEmployeeFile(
//         Map<String, dynamic> data) =>
//     MutationAddEmployeeFile.fromJson(data);
// typedef OnMutationCompletedMutationAddEmployeeFile = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationAddEmployeeFile?,
// );
//
// class OptionsMutationAddEmployeeFile
//     extends graphql.MutationOptions<MutationAddEmployeeFile> {
//   OptionsMutationAddEmployeeFile({
//     String? operationName,
//     required VariablesMutationAddEmployeeFile variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationAddEmployeeFile? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationAddEmployeeFile? onCompleted,
//     graphql.OnMutationUpdate<MutationAddEmployeeFile>? update,
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
//                         : _parserFnMutationAddEmployeeFile(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationAddEmployeeFile,
//           parserFn: _parserFnMutationAddEmployeeFile,
//         );
//
//   final OnMutationCompletedMutationAddEmployeeFile? onCompletedWithParsed;
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
// class WatchOptionsMutationAddEmployeeFile
//     extends graphql.WatchQueryOptions<MutationAddEmployeeFile> {
//   WatchOptionsMutationAddEmployeeFile({
//     String? operationName,
//     required VariablesMutationAddEmployeeFile variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationAddEmployeeFile? typedOptimisticResult,
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
//           document: documentNodeMutationAddEmployeeFile,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationAddEmployeeFile,
//         );
// }
//
// extension ClientExtensionMutationAddEmployeeFile on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationAddEmployeeFile>> mutateAddEmployeeFile(
//           OptionsMutationAddEmployeeFile options) async =>
//       await this.mutate(options);
//   graphql.ObservableQuery<MutationAddEmployeeFile> watchMutationAddEmployeeFile(
//           WatchOptionsMutationAddEmployeeFile options) =>
//       this.watchMutation(options);
// }
//
// class MutationAddEmployeeFileHookResult {
//   MutationAddEmployeeFileHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationAddEmployeeFile runMutation;
//
//   final graphql.QueryResult<MutationAddEmployeeFile> result;
// }
//
// MutationAddEmployeeFileHookResult useMutationAddEmployeeFile(
//     [WidgetOptionsMutationAddEmployeeFile? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationAddEmployeeFile());
//   return MutationAddEmployeeFileHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationAddEmployeeFile>
//     useWatchMutationAddEmployeeFile(
//             WatchOptionsMutationAddEmployeeFile options) =>
//         graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationAddEmployeeFile
//     extends graphql.MutationOptions<MutationAddEmployeeFile> {
//   WidgetOptionsMutationAddEmployeeFile({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationAddEmployeeFile? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationAddEmployeeFile? onCompleted,
//     graphql.OnMutationUpdate<MutationAddEmployeeFile>? update,
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
//                         : _parserFnMutationAddEmployeeFile(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationAddEmployeeFile,
//           parserFn: _parserFnMutationAddEmployeeFile,
//         );
//
//   final OnMutationCompletedMutationAddEmployeeFile? onCompletedWithParsed;
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
// typedef RunMutationMutationAddEmployeeFile
//     = graphql.MultiSourceResult<MutationAddEmployeeFile> Function(
//   VariablesMutationAddEmployeeFile, {
//   Object? optimisticResult,
//   MutationAddEmployeeFile? typedOptimisticResult,
// });
// typedef BuilderMutationAddEmployeeFile = widgets.Widget Function(
//   RunMutationMutationAddEmployeeFile,
//   graphql.QueryResult<MutationAddEmployeeFile>?,
// );
//
// class MutationAddEmployeeFileWidget
//     extends graphql_flutter.Mutation<MutationAddEmployeeFile> {
//   MutationAddEmployeeFileWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationAddEmployeeFile? options,
//     required BuilderMutationAddEmployeeFile builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationAddEmployeeFile(),
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
// class MutationAddEmployeeFileuploadEmployee {
//   MutationAddEmployeeFileuploadEmployee({
//     required this.status,
//     this.message,
//     required this.error,
//     this.$__typename = 'Result',
//   });
//
//   factory MutationAddEmployeeFileuploadEmployee.fromJson(
//       Map<String, dynamic> json) {
//     final l$status = json['status'];
//     final l$message = json['message'];
//     final l$error = json['error'];
//     final l$$__typename = json['__typename'];
//     return MutationAddEmployeeFileuploadEmployee(
//       status: (l$status as String),
//       message: (l$message as String?),
//       error: (l$error as int),
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
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$status,
//       l$message,
//       l$error,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationAddEmployeeFileuploadEmployee) ||
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
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionMutationAddEmployeeFileuploadEmployee
//     on MutationAddEmployeeFileuploadEmployee {
//   CopyWithMutationAddEmployeeFileuploadEmployee<
//           MutationAddEmployeeFileuploadEmployee>
//       get copyWith => CopyWithMutationAddEmployeeFileuploadEmployee(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationAddEmployeeFileuploadEmployee<TRes> {
//   factory CopyWithMutationAddEmployeeFileuploadEmployee(
//     MutationAddEmployeeFileuploadEmployee instance,
//     TRes Function(MutationAddEmployeeFileuploadEmployee) then,
//   ) = _CopyWithImplMutationAddEmployeeFileuploadEmployee;
//
//   factory CopyWithMutationAddEmployeeFileuploadEmployee.stub(TRes res) =
//       _CopyWithStubImplMutationAddEmployeeFileuploadEmployee;
//
//   TRes call({
//     String? status,
//     String? message,
//     int? error,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationAddEmployeeFileuploadEmployee<TRes>
//     implements CopyWithMutationAddEmployeeFileuploadEmployee<TRes> {
//   _CopyWithImplMutationAddEmployeeFileuploadEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final MutationAddEmployeeFileuploadEmployee _instance;
//
//   final TRes Function(MutationAddEmployeeFileuploadEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? status = _undefined,
//     Object? message = _undefined,
//     Object? error = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationAddEmployeeFileuploadEmployee(
//         status: status == _undefined || status == null
//             ? _instance.status
//             : (status as String),
//         message:
//             message == _undefined ? _instance.message : (message as String?),
//         error: error == _undefined || error == null
//             ? _instance.error
//             : (error as int),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplMutationAddEmployeeFileuploadEmployee<TRes>
//     implements CopyWithMutationAddEmployeeFileuploadEmployee<TRes> {
//   _CopyWithStubImplMutationAddEmployeeFileuploadEmployee(this._res);
//
//   TRes _res;
//
//   call({
//     String? status,
//     String? message,
//     int? error,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesMutationStopEmployee {
//   factory VariablesMutationStopEmployee({required int id}) =>
//       VariablesMutationStopEmployee._({
//         r'id': id,
//       });
//
//   VariablesMutationStopEmployee._(this._$data);
//
//   factory VariablesMutationStopEmployee.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$id = data['id'];
//     result$data['id'] = (l$id as int);
//     return VariablesMutationStopEmployee._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   int get id => (_$data['id'] as int);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$id = id;
//     result$data['id'] = l$id;
//     return result$data;
//   }
//
//   CopyWithVariablesMutationStopEmployee<VariablesMutationStopEmployee>
//       get copyWith => CopyWithVariablesMutationStopEmployee(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationStopEmployee) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     return Object.hashAll([l$id]);
//   }
// }
//
// abstract class CopyWithVariablesMutationStopEmployee<TRes> {
//   factory CopyWithVariablesMutationStopEmployee(
//     VariablesMutationStopEmployee instance,
//     TRes Function(VariablesMutationStopEmployee) then,
//   ) = _CopyWithImplVariablesMutationStopEmployee;
//
//   factory CopyWithVariablesMutationStopEmployee.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationStopEmployee;
//
//   TRes call({int? id});
// }
//
// class _CopyWithImplVariablesMutationStopEmployee<TRes>
//     implements CopyWithVariablesMutationStopEmployee<TRes> {
//   _CopyWithImplVariablesMutationStopEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationStopEmployee _instance;
//
//   final TRes Function(VariablesMutationStopEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? id = _undefined}) =>
//       _then(VariablesMutationStopEmployee._({
//         ..._instance._$data,
//         if (id != _undefined && id != null) 'id': (id as int),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationStopEmployee<TRes>
//     implements CopyWithVariablesMutationStopEmployee<TRes> {
//   _CopyWithStubImplVariablesMutationStopEmployee(this._res);
//
//   TRes _res;
//
//   call({int? id}) => _res;
// }
//
// class MutationStopEmployee {
//   MutationStopEmployee({
//     required this.stopEmployee,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationStopEmployee.fromJson(Map<String, dynamic> json) {
//     final l$stopEmployee = json['stopEmployee'];
//     final l$$__typename = json['__typename'];
//     return MutationStopEmployee(
//       stopEmployee: MutationStopEmployeestopEmployee.fromJson(
//           (l$stopEmployee as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationStopEmployeestopEmployee stopEmployee;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$stopEmployee = stopEmployee;
//     _resultData['stopEmployee'] = l$stopEmployee.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$stopEmployee = stopEmployee;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$stopEmployee,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationStopEmployee) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$stopEmployee = stopEmployee;
//     final lOther$stopEmployee = other.stopEmployee;
//     if (l$stopEmployee != lOther$stopEmployee) {
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
// extension UtilityExtensionMutationStopEmployee on MutationStopEmployee {
//   CopyWithMutationStopEmployee<MutationStopEmployee> get copyWith =>
//       CopyWithMutationStopEmployee(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationStopEmployee<TRes> {
//   factory CopyWithMutationStopEmployee(
//     MutationStopEmployee instance,
//     TRes Function(MutationStopEmployee) then,
//   ) = _CopyWithImplMutationStopEmployee;
//
//   factory CopyWithMutationStopEmployee.stub(TRes res) =
//       _CopyWithStubImplMutationStopEmployee;
//
//   TRes call({
//     MutationStopEmployeestopEmployee? stopEmployee,
//     String? $__typename,
//   });
//   CopyWithMutationStopEmployeestopEmployee<TRes> get stopEmployee;
// }
//
// class _CopyWithImplMutationStopEmployee<TRes>
//     implements CopyWithMutationStopEmployee<TRes> {
//   _CopyWithImplMutationStopEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final MutationStopEmployee _instance;
//
//   final TRes Function(MutationStopEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? stopEmployee = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationStopEmployee(
//         stopEmployee: stopEmployee == _undefined || stopEmployee == null
//             ? _instance.stopEmployee
//             : (stopEmployee as MutationStopEmployeestopEmployee),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationStopEmployeestopEmployee<TRes> get stopEmployee {
//     final local$stopEmployee = _instance.stopEmployee;
//     return CopyWithMutationStopEmployeestopEmployee(
//         local$stopEmployee, (e) => call(stopEmployee: e));
//   }
// }
//
// class _CopyWithStubImplMutationStopEmployee<TRes>
//     implements CopyWithMutationStopEmployee<TRes> {
//   _CopyWithStubImplMutationStopEmployee(this._res);
//
//   TRes _res;
//
//   call({
//     MutationStopEmployeestopEmployee? stopEmployee,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationStopEmployeestopEmployee<TRes> get stopEmployee =>
//       CopyWithMutationStopEmployeestopEmployee.stub(_res);
// }
//
// const documentNodeMutationStopEmployee = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'StopEmployee'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'id')),
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
//         name: NameNode(value: 'stopEmployee'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'employee_id'),
//                 value: VariableNode(name: NameNode(value: 'id')),
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
//             name: NameNode(value: 'error'),
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
// MutationStopEmployee _parserFnMutationStopEmployee(Map<String, dynamic> data) =>
//     MutationStopEmployee.fromJson(data);
// typedef OnMutationCompletedMutationStopEmployee = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationStopEmployee?,
// );
//
// class OptionsMutationStopEmployee
//     extends graphql.MutationOptions<MutationStopEmployee> {
//   OptionsMutationStopEmployee({
//     String? operationName,
//     required VariablesMutationStopEmployee variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationStopEmployee? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationStopEmployee? onCompleted,
//     graphql.OnMutationUpdate<MutationStopEmployee>? update,
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
//                     data == null ? null : _parserFnMutationStopEmployee(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationStopEmployee,
//           parserFn: _parserFnMutationStopEmployee,
//         );
//
//   final OnMutationCompletedMutationStopEmployee? onCompletedWithParsed;
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
// class WatchOptionsMutationStopEmployee
//     extends graphql.WatchQueryOptions<MutationStopEmployee> {
//   WatchOptionsMutationStopEmployee({
//     String? operationName,
//     required VariablesMutationStopEmployee variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationStopEmployee? typedOptimisticResult,
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
//           document: documentNodeMutationStopEmployee,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationStopEmployee,
//         );
// }
//
// extension ClientExtensionMutationStopEmployee on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationStopEmployee>> mutateStopEmployee(
//           OptionsMutationStopEmployee options) async =>
//       await this.mutate(options);
//   graphql.ObservableQuery<MutationStopEmployee> watchMutationStopEmployee(
//           WatchOptionsMutationStopEmployee options) =>
//       this.watchMutation(options);
// }
//
// class MutationStopEmployeeHookResult {
//   MutationStopEmployeeHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationStopEmployee runMutation;
//
//   final graphql.QueryResult<MutationStopEmployee> result;
// }
//
// MutationStopEmployeeHookResult useMutationStopEmployee(
//     [WidgetOptionsMutationStopEmployee? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationStopEmployee());
//   return MutationStopEmployeeHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationStopEmployee> useWatchMutationStopEmployee(
//         WatchOptionsMutationStopEmployee options) =>
//     graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationStopEmployee
//     extends graphql.MutationOptions<MutationStopEmployee> {
//   WidgetOptionsMutationStopEmployee({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationStopEmployee? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationStopEmployee? onCompleted,
//     graphql.OnMutationUpdate<MutationStopEmployee>? update,
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
//                     data == null ? null : _parserFnMutationStopEmployee(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationStopEmployee,
//           parserFn: _parserFnMutationStopEmployee,
//         );
//
//   final OnMutationCompletedMutationStopEmployee? onCompletedWithParsed;
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
// typedef RunMutationMutationStopEmployee
//     = graphql.MultiSourceResult<MutationStopEmployee> Function(
//   VariablesMutationStopEmployee, {
//   Object? optimisticResult,
//   MutationStopEmployee? typedOptimisticResult,
// });
// typedef BuilderMutationStopEmployee = widgets.Widget Function(
//   RunMutationMutationStopEmployee,
//   graphql.QueryResult<MutationStopEmployee>?,
// );
//
// class MutationStopEmployeeWidget
//     extends graphql_flutter.Mutation<MutationStopEmployee> {
//   MutationStopEmployeeWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationStopEmployee? options,
//     required BuilderMutationStopEmployee builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationStopEmployee(),
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
// class MutationStopEmployeestopEmployee {
//   MutationStopEmployeestopEmployee({
//     required this.status,
//     required this.error,
//     this.message,
//     this.$__typename = 'Result',
//   });
//
//   factory MutationStopEmployeestopEmployee.fromJson(Map<String, dynamic> json) {
//     final l$status = json['status'];
//     final l$error = json['error'];
//     final l$message = json['message'];
//     final l$$__typename = json['__typename'];
//     return MutationStopEmployeestopEmployee(
//       status: (l$status as String),
//       error: (l$error as int),
//       message: (l$message as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String status;
//
//   final int error;
//
//   final String? message;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$status = status;
//     _resultData['status'] = l$status;
//     final l$error = error;
//     _resultData['error'] = l$error;
//     final l$message = message;
//     _resultData['message'] = l$message;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$status = status;
//     final l$error = error;
//     final l$message = message;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$status,
//       l$error,
//       l$message,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationStopEmployeestopEmployee) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$status = status;
//     final lOther$status = other.status;
//     if (l$status != lOther$status) {
//       return false;
//     }
//     final l$error = error;
//     final lOther$error = other.error;
//     if (l$error != lOther$error) {
//       return false;
//     }
//     final l$message = message;
//     final lOther$message = other.message;
//     if (l$message != lOther$message) {
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
// extension UtilityExtensionMutationStopEmployeestopEmployee
//     on MutationStopEmployeestopEmployee {
//   CopyWithMutationStopEmployeestopEmployee<MutationStopEmployeestopEmployee>
//       get copyWith => CopyWithMutationStopEmployeestopEmployee(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationStopEmployeestopEmployee<TRes> {
//   factory CopyWithMutationStopEmployeestopEmployee(
//     MutationStopEmployeestopEmployee instance,
//     TRes Function(MutationStopEmployeestopEmployee) then,
//   ) = _CopyWithImplMutationStopEmployeestopEmployee;
//
//   factory CopyWithMutationStopEmployeestopEmployee.stub(TRes res) =
//       _CopyWithStubImplMutationStopEmployeestopEmployee;
//
//   TRes call({
//     String? status,
//     int? error,
//     String? message,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationStopEmployeestopEmployee<TRes>
//     implements CopyWithMutationStopEmployeestopEmployee<TRes> {
//   _CopyWithImplMutationStopEmployeestopEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final MutationStopEmployeestopEmployee _instance;
//
//   final TRes Function(MutationStopEmployeestopEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? status = _undefined,
//     Object? error = _undefined,
//     Object? message = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationStopEmployeestopEmployee(
//         status: status == _undefined || status == null
//             ? _instance.status
//             : (status as String),
//         error: error == _undefined || error == null
//             ? _instance.error
//             : (error as int),
//         message:
//             message == _undefined ? _instance.message : (message as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplMutationStopEmployeestopEmployee<TRes>
//     implements CopyWithMutationStopEmployeestopEmployee<TRes> {
//   _CopyWithStubImplMutationStopEmployeestopEmployee(this._res);
//
//   TRes _res;
//
//   call({
//     String? status,
//     int? error,
//     String? message,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesMutationEditEmployee {
//   factory VariablesMutationEditEmployee({
//     required String name,
//     required String phone,
//     required String email,
//     required String idNumber,
//     double? limit,
//     required int id,
//     String? image,
//   }) =>
//       VariablesMutationEditEmployee._({
//         r'name': name,
//         r'phone': phone,
//         r'email': email,
//         r'idNumber': idNumber,
//         if (limit != null) r'limit': limit,
//         r'id': id,
//         if (image != null) r'image': image,
//       });
//
//   VariablesMutationEditEmployee._(this._$data);
//
//   factory VariablesMutationEditEmployee.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$name = data['name'];
//     result$data['name'] = (l$name as String);
//     final l$phone = data['phone'];
//     result$data['phone'] = (l$phone as String);
//     final l$email = data['email'];
//     result$data['email'] = (l$email as String);
//     final l$idNumber = data['idNumber'];
//     result$data['idNumber'] = (l$idNumber as String);
//     if (data.containsKey('limit')) {
//       final l$limit = data['limit'];
//       result$data['limit'] = (l$limit as num?)?.toDouble();
//     }
//     final l$id = data['id'];
//     result$data['id'] = (l$id as int);
//     if (data.containsKey('image')) {
//       final l$image = data['image'];
//       result$data['image'] = (l$image as String?);
//     }
//     return VariablesMutationEditEmployee._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   String get name => (_$data['name'] as String);
//
//   String get phone => (_$data['phone'] as String);
//
//   String get email => (_$data['email'] as String);
//
//   String get idNumber => (_$data['idNumber'] as String);
//
//   double? get limit => (_$data['limit'] as double?);
//
//   int get id => (_$data['id'] as int);
//
//   String? get image => (_$data['image'] as String?);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$name = name;
//     result$data['name'] = l$name;
//     final l$phone = phone;
//     result$data['phone'] = l$phone;
//     final l$email = email;
//     result$data['email'] = l$email;
//     final l$idNumber = idNumber;
//     result$data['idNumber'] = l$idNumber;
//     if (_$data.containsKey('limit')) {
//       final l$limit = limit;
//       result$data['limit'] = l$limit;
//     }
//     final l$id = id;
//     result$data['id'] = l$id;
//     if (_$data.containsKey('image')) {
//       final l$image = image;
//       result$data['image'] = l$image;
//     }
//     return result$data;
//   }
//
//   CopyWithVariablesMutationEditEmployee<VariablesMutationEditEmployee>
//       get copyWith => CopyWithVariablesMutationEditEmployee(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationEditEmployee) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$name = name;
//     final lOther$name = other.name;
//     if (l$name != lOther$name) {
//       return false;
//     }
//     final l$phone = phone;
//     final lOther$phone = other.phone;
//     if (l$phone != lOther$phone) {
//       return false;
//     }
//     final l$email = email;
//     final lOther$email = other.email;
//     if (l$email != lOther$email) {
//       return false;
//     }
//     final l$idNumber = idNumber;
//     final lOther$idNumber = other.idNumber;
//     if (l$idNumber != lOther$idNumber) {
//       return false;
//     }
//     final l$limit = limit;
//     final lOther$limit = other.limit;
//     if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
//       return false;
//     }
//     if (l$limit != lOther$limit) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     final l$image = image;
//     final lOther$image = other.image;
//     if (_$data.containsKey('image') != other._$data.containsKey('image')) {
//       return false;
//     }
//     if (l$image != lOther$image) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$name = name;
//     final l$phone = phone;
//     final l$email = email;
//     final l$idNumber = idNumber;
//     final l$limit = limit;
//     final l$id = id;
//     final l$image = image;
//     return Object.hashAll([
//       l$name,
//       l$phone,
//       l$email,
//       l$idNumber,
//       _$data.containsKey('limit') ? l$limit : const {},
//       l$id,
//       _$data.containsKey('image') ? l$image : const {},
//     ]);
//   }
// }
//
// abstract class CopyWithVariablesMutationEditEmployee<TRes> {
//   factory CopyWithVariablesMutationEditEmployee(
//     VariablesMutationEditEmployee instance,
//     TRes Function(VariablesMutationEditEmployee) then,
//   ) = _CopyWithImplVariablesMutationEditEmployee;
//
//   factory CopyWithVariablesMutationEditEmployee.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationEditEmployee;
//
//   TRes call({
//     String? name,
//     String? phone,
//     String? email,
//     String? idNumber,
//     double? limit,
//     int? id,
//     String? image,
//   });
// }
//
// class _CopyWithImplVariablesMutationEditEmployee<TRes>
//     implements CopyWithVariablesMutationEditEmployee<TRes> {
//   _CopyWithImplVariablesMutationEditEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationEditEmployee _instance;
//
//   final TRes Function(VariablesMutationEditEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? name = _undefined,
//     Object? phone = _undefined,
//     Object? email = _undefined,
//     Object? idNumber = _undefined,
//     Object? limit = _undefined,
//     Object? id = _undefined,
//     Object? image = _undefined,
//   }) =>
//       _then(VariablesMutationEditEmployee._({
//         ..._instance._$data,
//         if (name != _undefined && name != null) 'name': (name as String),
//         if (phone != _undefined && phone != null) 'phone': (phone as String),
//         if (email != _undefined && email != null) 'email': (email as String),
//         if (idNumber != _undefined && idNumber != null)
//           'idNumber': (idNumber as String),
//         if (limit != _undefined) 'limit': (limit as double?),
//         if (id != _undefined && id != null) 'id': (id as int),
//         if (image != _undefined) 'image': (image as String?),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationEditEmployee<TRes>
//     implements CopyWithVariablesMutationEditEmployee<TRes> {
//   _CopyWithStubImplVariablesMutationEditEmployee(this._res);
//
//   TRes _res;
//
//   call({
//     String? name,
//     String? phone,
//     String? email,
//     String? idNumber,
//     double? limit,
//     int? id,
//     String? image,
//   }) =>
//       _res;
// }
//
// class MutationEditEmployee {
//   MutationEditEmployee({
//     required this.updateEmployee,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationEditEmployee.fromJson(Map<String, dynamic> json) {
//     final l$updateEmployee = json['updateEmployee'];
//     final l$$__typename = json['__typename'];
//     return MutationEditEmployee(
//       updateEmployee: MutationEditEmployeeupdateEmployee.fromJson(
//           (l$updateEmployee as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationEditEmployeeupdateEmployee updateEmployee;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$updateEmployee = updateEmployee;
//     _resultData['updateEmployee'] = l$updateEmployee.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$updateEmployee = updateEmployee;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$updateEmployee,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationEditEmployee) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$updateEmployee = updateEmployee;
//     final lOther$updateEmployee = other.updateEmployee;
//     if (l$updateEmployee != lOther$updateEmployee) {
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
// extension UtilityExtensionMutationEditEmployee on MutationEditEmployee {
//   CopyWithMutationEditEmployee<MutationEditEmployee> get copyWith =>
//       CopyWithMutationEditEmployee(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationEditEmployee<TRes> {
//   factory CopyWithMutationEditEmployee(
//     MutationEditEmployee instance,
//     TRes Function(MutationEditEmployee) then,
//   ) = _CopyWithImplMutationEditEmployee;
//
//   factory CopyWithMutationEditEmployee.stub(TRes res) =
//       _CopyWithStubImplMutationEditEmployee;
//
//   TRes call({
//     MutationEditEmployeeupdateEmployee? updateEmployee,
//     String? $__typename,
//   });
//   CopyWithMutationEditEmployeeupdateEmployee<TRes> get updateEmployee;
// }
//
// class _CopyWithImplMutationEditEmployee<TRes>
//     implements CopyWithMutationEditEmployee<TRes> {
//   _CopyWithImplMutationEditEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final MutationEditEmployee _instance;
//
//   final TRes Function(MutationEditEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? updateEmployee = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationEditEmployee(
//         updateEmployee: updateEmployee == _undefined || updateEmployee == null
//             ? _instance.updateEmployee
//             : (updateEmployee as MutationEditEmployeeupdateEmployee),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationEditEmployeeupdateEmployee<TRes> get updateEmployee {
//     final local$updateEmployee = _instance.updateEmployee;
//     return CopyWithMutationEditEmployeeupdateEmployee(
//         local$updateEmployee, (e) => call(updateEmployee: e));
//   }
// }
//
// class _CopyWithStubImplMutationEditEmployee<TRes>
//     implements CopyWithMutationEditEmployee<TRes> {
//   _CopyWithStubImplMutationEditEmployee(this._res);
//
//   TRes _res;
//
//   call({
//     MutationEditEmployeeupdateEmployee? updateEmployee,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationEditEmployeeupdateEmployee<TRes> get updateEmployee =>
//       CopyWithMutationEditEmployeeupdateEmployee.stub(_res);
// }
//
// const documentNodeMutationEditEmployee = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'EditEmployee'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'name')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'phone')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'email')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'idNumber')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'limit')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'Float'),
//           isNonNull: false,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'id')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'Int'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'image')),
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
//         name: NameNode(value: 'updateEmployee'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'name'),
//                 value: VariableNode(name: NameNode(value: 'name')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'mobile'),
//                 value: VariableNode(name: NameNode(value: 'phone')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'national_id'),
//                 value: VariableNode(name: NameNode(value: 'idNumber')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'email'),
//                 value: VariableNode(name: NameNode(value: 'email')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'wallet_limit'),
//                 value: VariableNode(name: NameNode(value: 'limit')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'employee_id'),
//                 value: VariableNode(name: NameNode(value: 'id')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'image'),
//                 value: VariableNode(name: NameNode(value: 'image')),
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
// MutationEditEmployee _parserFnMutationEditEmployee(Map<String, dynamic> data) =>
//     MutationEditEmployee.fromJson(data);
// typedef OnMutationCompletedMutationEditEmployee = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationEditEmployee?,
// );
//
// class OptionsMutationEditEmployee
//     extends graphql.MutationOptions<MutationEditEmployee> {
//   OptionsMutationEditEmployee({
//     String? operationName,
//     required VariablesMutationEditEmployee variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationEditEmployee? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationEditEmployee? onCompleted,
//     graphql.OnMutationUpdate<MutationEditEmployee>? update,
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
//                     data == null ? null : _parserFnMutationEditEmployee(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationEditEmployee,
//           parserFn: _parserFnMutationEditEmployee,
//         );
//
//   final OnMutationCompletedMutationEditEmployee? onCompletedWithParsed;
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
// class WatchOptionsMutationEditEmployee
//     extends graphql.WatchQueryOptions<MutationEditEmployee> {
//   WatchOptionsMutationEditEmployee({
//     String? operationName,
//     required VariablesMutationEditEmployee variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationEditEmployee? typedOptimisticResult,
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
//           document: documentNodeMutationEditEmployee,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationEditEmployee,
//         );
// }
//
// extension ClientExtensionMutationEditEmployee on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationEditEmployee>> mutateEditEmployee(
//           OptionsMutationEditEmployee options) async =>
//       await this.mutate(options);
//   graphql.ObservableQuery<MutationEditEmployee> watchMutationEditEmployee(
//           WatchOptionsMutationEditEmployee options) =>
//       this.watchMutation(options);
// }
//
// class MutationEditEmployeeHookResult {
//   MutationEditEmployeeHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationEditEmployee runMutation;
//
//   final graphql.QueryResult<MutationEditEmployee> result;
// }
//
// MutationEditEmployeeHookResult useMutationEditEmployee(
//     [WidgetOptionsMutationEditEmployee? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationEditEmployee());
//   return MutationEditEmployeeHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationEditEmployee> useWatchMutationEditEmployee(
//         WatchOptionsMutationEditEmployee options) =>
//     graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationEditEmployee
//     extends graphql.MutationOptions<MutationEditEmployee> {
//   WidgetOptionsMutationEditEmployee({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationEditEmployee? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationEditEmployee? onCompleted,
//     graphql.OnMutationUpdate<MutationEditEmployee>? update,
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
//                     data == null ? null : _parserFnMutationEditEmployee(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationEditEmployee,
//           parserFn: _parserFnMutationEditEmployee,
//         );
//
//   final OnMutationCompletedMutationEditEmployee? onCompletedWithParsed;
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
// typedef RunMutationMutationEditEmployee
//     = graphql.MultiSourceResult<MutationEditEmployee> Function(
//   VariablesMutationEditEmployee, {
//   Object? optimisticResult,
//   MutationEditEmployee? typedOptimisticResult,
// });
// typedef BuilderMutationEditEmployee = widgets.Widget Function(
//   RunMutationMutationEditEmployee,
//   graphql.QueryResult<MutationEditEmployee>?,
// );
//
// class MutationEditEmployeeWidget
//     extends graphql_flutter.Mutation<MutationEditEmployee> {
//   MutationEditEmployeeWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationEditEmployee? options,
//     required BuilderMutationEditEmployee builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationEditEmployee(),
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
// class MutationEditEmployeeupdateEmployee {
//   MutationEditEmployeeupdateEmployee({
//     required this.error,
//     required this.status,
//     this.message,
//     this.$__typename = 'Result',
//   });
//
//   factory MutationEditEmployeeupdateEmployee.fromJson(
//       Map<String, dynamic> json) {
//     final l$error = json['error'];
//     final l$status = json['status'];
//     final l$message = json['message'];
//     final l$$__typename = json['__typename'];
//     return MutationEditEmployeeupdateEmployee(
//       error: (l$error as int),
//       status: (l$status as String),
//       message: (l$message as String?),
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
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$error,
//       l$status,
//       l$message,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationEditEmployeeupdateEmployee) ||
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
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionMutationEditEmployeeupdateEmployee
//     on MutationEditEmployeeupdateEmployee {
//   CopyWithMutationEditEmployeeupdateEmployee<MutationEditEmployeeupdateEmployee>
//       get copyWith => CopyWithMutationEditEmployeeupdateEmployee(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationEditEmployeeupdateEmployee<TRes> {
//   factory CopyWithMutationEditEmployeeupdateEmployee(
//     MutationEditEmployeeupdateEmployee instance,
//     TRes Function(MutationEditEmployeeupdateEmployee) then,
//   ) = _CopyWithImplMutationEditEmployeeupdateEmployee;
//
//   factory CopyWithMutationEditEmployeeupdateEmployee.stub(TRes res) =
//       _CopyWithStubImplMutationEditEmployeeupdateEmployee;
//
//   TRes call({
//     int? error,
//     String? status,
//     String? message,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationEditEmployeeupdateEmployee<TRes>
//     implements CopyWithMutationEditEmployeeupdateEmployee<TRes> {
//   _CopyWithImplMutationEditEmployeeupdateEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final MutationEditEmployeeupdateEmployee _instance;
//
//   final TRes Function(MutationEditEmployeeupdateEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? error = _undefined,
//     Object? status = _undefined,
//     Object? message = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationEditEmployeeupdateEmployee(
//         error: error == _undefined || error == null
//             ? _instance.error
//             : (error as int),
//         status: status == _undefined || status == null
//             ? _instance.status
//             : (status as String),
//         message:
//             message == _undefined ? _instance.message : (message as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplMutationEditEmployeeupdateEmployee<TRes>
//     implements CopyWithMutationEditEmployeeupdateEmployee<TRes> {
//   _CopyWithStubImplMutationEditEmployeeupdateEmployee(this._res);
//
//   TRes _res;
//
//   call({
//     int? error,
//     String? status,
//     String? message,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesMutationActivateEmployee {
//   factory VariablesMutationActivateEmployee({required int id}) =>
//       VariablesMutationActivateEmployee._({
//         r'id': id,
//       });
//
//   VariablesMutationActivateEmployee._(this._$data);
//
//   factory VariablesMutationActivateEmployee.fromJson(
//       Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$id = data['id'];
//     result$data['id'] = (l$id as int);
//     return VariablesMutationActivateEmployee._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   int get id => (_$data['id'] as int);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$id = id;
//     result$data['id'] = l$id;
//     return result$data;
//   }
//
//   CopyWithVariablesMutationActivateEmployee<VariablesMutationActivateEmployee>
//       get copyWith => CopyWithVariablesMutationActivateEmployee(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationActivateEmployee) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     return Object.hashAll([l$id]);
//   }
// }
//
// abstract class CopyWithVariablesMutationActivateEmployee<TRes> {
//   factory CopyWithVariablesMutationActivateEmployee(
//     VariablesMutationActivateEmployee instance,
//     TRes Function(VariablesMutationActivateEmployee) then,
//   ) = _CopyWithImplVariablesMutationActivateEmployee;
//
//   factory CopyWithVariablesMutationActivateEmployee.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationActivateEmployee;
//
//   TRes call({int? id});
// }
//
// class _CopyWithImplVariablesMutationActivateEmployee<TRes>
//     implements CopyWithVariablesMutationActivateEmployee<TRes> {
//   _CopyWithImplVariablesMutationActivateEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationActivateEmployee _instance;
//
//   final TRes Function(VariablesMutationActivateEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? id = _undefined}) =>
//       _then(VariablesMutationActivateEmployee._({
//         ..._instance._$data,
//         if (id != _undefined && id != null) 'id': (id as int),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationActivateEmployee<TRes>
//     implements CopyWithVariablesMutationActivateEmployee<TRes> {
//   _CopyWithStubImplVariablesMutationActivateEmployee(this._res);
//
//   TRes _res;
//
//   call({int? id}) => _res;
// }
//
// class MutationActivateEmployee {
//   MutationActivateEmployee({
//     required this.activeEmployee,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationActivateEmployee.fromJson(Map<String, dynamic> json) {
//     final l$activeEmployee = json['activeEmployee'];
//     final l$$__typename = json['__typename'];
//     return MutationActivateEmployee(
//       activeEmployee: MutationActivateEmployeeactiveEmployee.fromJson(
//           (l$activeEmployee as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationActivateEmployeeactiveEmployee activeEmployee;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$activeEmployee = activeEmployee;
//     _resultData['activeEmployee'] = l$activeEmployee.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$activeEmployee = activeEmployee;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$activeEmployee,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationActivateEmployee) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$activeEmployee = activeEmployee;
//     final lOther$activeEmployee = other.activeEmployee;
//     if (l$activeEmployee != lOther$activeEmployee) {
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
// extension UtilityExtensionMutationActivateEmployee on MutationActivateEmployee {
//   CopyWithMutationActivateEmployee<MutationActivateEmployee> get copyWith =>
//       CopyWithMutationActivateEmployee(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationActivateEmployee<TRes> {
//   factory CopyWithMutationActivateEmployee(
//     MutationActivateEmployee instance,
//     TRes Function(MutationActivateEmployee) then,
//   ) = _CopyWithImplMutationActivateEmployee;
//
//   factory CopyWithMutationActivateEmployee.stub(TRes res) =
//       _CopyWithStubImplMutationActivateEmployee;
//
//   TRes call({
//     MutationActivateEmployeeactiveEmployee? activeEmployee,
//     String? $__typename,
//   });
//   CopyWithMutationActivateEmployeeactiveEmployee<TRes> get activeEmployee;
// }
//
// class _CopyWithImplMutationActivateEmployee<TRes>
//     implements CopyWithMutationActivateEmployee<TRes> {
//   _CopyWithImplMutationActivateEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final MutationActivateEmployee _instance;
//
//   final TRes Function(MutationActivateEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? activeEmployee = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationActivateEmployee(
//         activeEmployee: activeEmployee == _undefined || activeEmployee == null
//             ? _instance.activeEmployee
//             : (activeEmployee as MutationActivateEmployeeactiveEmployee),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationActivateEmployeeactiveEmployee<TRes> get activeEmployee {
//     final local$activeEmployee = _instance.activeEmployee;
//     return CopyWithMutationActivateEmployeeactiveEmployee(
//         local$activeEmployee, (e) => call(activeEmployee: e));
//   }
// }
//
// class _CopyWithStubImplMutationActivateEmployee<TRes>
//     implements CopyWithMutationActivateEmployee<TRes> {
//   _CopyWithStubImplMutationActivateEmployee(this._res);
//
//   TRes _res;
//
//   call({
//     MutationActivateEmployeeactiveEmployee? activeEmployee,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationActivateEmployeeactiveEmployee<TRes> get activeEmployee =>
//       CopyWithMutationActivateEmployeeactiveEmployee.stub(_res);
// }
//
// const documentNodeMutationActivateEmployee = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'ActivateEmployee'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'id')),
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
//         name: NameNode(value: 'activeEmployee'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'employee_id'),
//                 value: VariableNode(name: NameNode(value: 'id')),
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
//             name: NameNode(value: 'error'),
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
// MutationActivateEmployee _parserFnMutationActivateEmployee(
//         Map<String, dynamic> data) =>
//     MutationActivateEmployee.fromJson(data);
// typedef OnMutationCompletedMutationActivateEmployee = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationActivateEmployee?,
// );
//
// class OptionsMutationActivateEmployee
//     extends graphql.MutationOptions<MutationActivateEmployee> {
//   OptionsMutationActivateEmployee({
//     String? operationName,
//     required VariablesMutationActivateEmployee variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationActivateEmployee? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationActivateEmployee? onCompleted,
//     graphql.OnMutationUpdate<MutationActivateEmployee>? update,
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
//                         : _parserFnMutationActivateEmployee(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationActivateEmployee,
//           parserFn: _parserFnMutationActivateEmployee,
//         );
//
//   final OnMutationCompletedMutationActivateEmployee? onCompletedWithParsed;
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
// class WatchOptionsMutationActivateEmployee
//     extends graphql.WatchQueryOptions<MutationActivateEmployee> {
//   WatchOptionsMutationActivateEmployee({
//     String? operationName,
//     required VariablesMutationActivateEmployee variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationActivateEmployee? typedOptimisticResult,
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
//           document: documentNodeMutationActivateEmployee,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationActivateEmployee,
//         );
// }
//
// extension ClientExtensionMutationActivateEmployee on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationActivateEmployee>> mutateActivateEmployee(
//           OptionsMutationActivateEmployee options) async =>
//       await this.mutate(options);
//   graphql.ObservableQuery<MutationActivateEmployee>
//       watchMutationActivateEmployee(
//               WatchOptionsMutationActivateEmployee options) =>
//           this.watchMutation(options);
// }
//
// class MutationActivateEmployeeHookResult {
//   MutationActivateEmployeeHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationActivateEmployee runMutation;
//
//   final graphql.QueryResult<MutationActivateEmployee> result;
// }
//
// MutationActivateEmployeeHookResult useMutationActivateEmployee(
//     [WidgetOptionsMutationActivateEmployee? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationActivateEmployee());
//   return MutationActivateEmployeeHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationActivateEmployee>
//     useWatchMutationActivateEmployee(
//             WatchOptionsMutationActivateEmployee options) =>
//         graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationActivateEmployee
//     extends graphql.MutationOptions<MutationActivateEmployee> {
//   WidgetOptionsMutationActivateEmployee({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationActivateEmployee? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationActivateEmployee? onCompleted,
//     graphql.OnMutationUpdate<MutationActivateEmployee>? update,
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
//                         : _parserFnMutationActivateEmployee(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationActivateEmployee,
//           parserFn: _parserFnMutationActivateEmployee,
//         );
//
//   final OnMutationCompletedMutationActivateEmployee? onCompletedWithParsed;
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
// typedef RunMutationMutationActivateEmployee
//     = graphql.MultiSourceResult<MutationActivateEmployee> Function(
//   VariablesMutationActivateEmployee, {
//   Object? optimisticResult,
//   MutationActivateEmployee? typedOptimisticResult,
// });
// typedef BuilderMutationActivateEmployee = widgets.Widget Function(
//   RunMutationMutationActivateEmployee,
//   graphql.QueryResult<MutationActivateEmployee>?,
// );
//
// class MutationActivateEmployeeWidget
//     extends graphql_flutter.Mutation<MutationActivateEmployee> {
//   MutationActivateEmployeeWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationActivateEmployee? options,
//     required BuilderMutationActivateEmployee builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationActivateEmployee(),
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
// class MutationActivateEmployeeactiveEmployee {
//   MutationActivateEmployeeactiveEmployee({
//     required this.status,
//     required this.error,
//     this.message,
//     this.$__typename = 'Result',
//   });
//
//   factory MutationActivateEmployeeactiveEmployee.fromJson(
//       Map<String, dynamic> json) {
//     final l$status = json['status'];
//     final l$error = json['error'];
//     final l$message = json['message'];
//     final l$$__typename = json['__typename'];
//     return MutationActivateEmployeeactiveEmployee(
//       status: (l$status as String),
//       error: (l$error as int),
//       message: (l$message as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String status;
//
//   final int error;
//
//   final String? message;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$status = status;
//     _resultData['status'] = l$status;
//     final l$error = error;
//     _resultData['error'] = l$error;
//     final l$message = message;
//     _resultData['message'] = l$message;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$status = status;
//     final l$error = error;
//     final l$message = message;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$status,
//       l$error,
//       l$message,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationActivateEmployeeactiveEmployee) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$status = status;
//     final lOther$status = other.status;
//     if (l$status != lOther$status) {
//       return false;
//     }
//     final l$error = error;
//     final lOther$error = other.error;
//     if (l$error != lOther$error) {
//       return false;
//     }
//     final l$message = message;
//     final lOther$message = other.message;
//     if (l$message != lOther$message) {
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
// extension UtilityExtensionMutationActivateEmployeeactiveEmployee
//     on MutationActivateEmployeeactiveEmployee {
//   CopyWithMutationActivateEmployeeactiveEmployee<
//           MutationActivateEmployeeactiveEmployee>
//       get copyWith => CopyWithMutationActivateEmployeeactiveEmployee(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationActivateEmployeeactiveEmployee<TRes> {
//   factory CopyWithMutationActivateEmployeeactiveEmployee(
//     MutationActivateEmployeeactiveEmployee instance,
//     TRes Function(MutationActivateEmployeeactiveEmployee) then,
//   ) = _CopyWithImplMutationActivateEmployeeactiveEmployee;
//
//   factory CopyWithMutationActivateEmployeeactiveEmployee.stub(TRes res) =
//       _CopyWithStubImplMutationActivateEmployeeactiveEmployee;
//
//   TRes call({
//     String? status,
//     int? error,
//     String? message,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationActivateEmployeeactiveEmployee<TRes>
//     implements CopyWithMutationActivateEmployeeactiveEmployee<TRes> {
//   _CopyWithImplMutationActivateEmployeeactiveEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final MutationActivateEmployeeactiveEmployee _instance;
//
//   final TRes Function(MutationActivateEmployeeactiveEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? status = _undefined,
//     Object? error = _undefined,
//     Object? message = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationActivateEmployeeactiveEmployee(
//         status: status == _undefined || status == null
//             ? _instance.status
//             : (status as String),
//         error: error == _undefined || error == null
//             ? _instance.error
//             : (error as int),
//         message:
//             message == _undefined ? _instance.message : (message as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplMutationActivateEmployeeactiveEmployee<TRes>
//     implements CopyWithMutationActivateEmployeeactiveEmployee<TRes> {
//   _CopyWithStubImplMutationActivateEmployeeactiveEmployee(this._res);
//
//   TRes _res;
//
//   call({
//     String? status,
//     int? error,
//     String? message,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesMutationDeleteEmployee {
//   factory VariablesMutationDeleteEmployee({required int id}) =>
//       VariablesMutationDeleteEmployee._({
//         r'id': id,
//       });
//
//   VariablesMutationDeleteEmployee._(this._$data);
//
//   factory VariablesMutationDeleteEmployee.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$id = data['id'];
//     result$data['id'] = (l$id as int);
//     return VariablesMutationDeleteEmployee._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   int get id => (_$data['id'] as int);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$id = id;
//     result$data['id'] = l$id;
//     return result$data;
//   }
//
//   CopyWithVariablesMutationDeleteEmployee<VariablesMutationDeleteEmployee>
//       get copyWith => CopyWithVariablesMutationDeleteEmployee(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationDeleteEmployee) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     return Object.hashAll([l$id]);
//   }
// }
//
// abstract class CopyWithVariablesMutationDeleteEmployee<TRes> {
//   factory CopyWithVariablesMutationDeleteEmployee(
//     VariablesMutationDeleteEmployee instance,
//     TRes Function(VariablesMutationDeleteEmployee) then,
//   ) = _CopyWithImplVariablesMutationDeleteEmployee;
//
//   factory CopyWithVariablesMutationDeleteEmployee.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationDeleteEmployee;
//
//   TRes call({int? id});
// }
//
// class _CopyWithImplVariablesMutationDeleteEmployee<TRes>
//     implements CopyWithVariablesMutationDeleteEmployee<TRes> {
//   _CopyWithImplVariablesMutationDeleteEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationDeleteEmployee _instance;
//
//   final TRes Function(VariablesMutationDeleteEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? id = _undefined}) =>
//       _then(VariablesMutationDeleteEmployee._({
//         ..._instance._$data,
//         if (id != _undefined && id != null) 'id': (id as int),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationDeleteEmployee<TRes>
//     implements CopyWithVariablesMutationDeleteEmployee<TRes> {
//   _CopyWithStubImplVariablesMutationDeleteEmployee(this._res);
//
//   TRes _res;
//
//   call({int? id}) => _res;
// }
//
// class MutationDeleteEmployee {
//   MutationDeleteEmployee({
//     required this.deleteEmployee,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationDeleteEmployee.fromJson(Map<String, dynamic> json) {
//     final l$deleteEmployee = json['deleteEmployee'];
//     final l$$__typename = json['__typename'];
//     return MutationDeleteEmployee(
//       deleteEmployee: MutationDeleteEmployeedeleteEmployee.fromJson(
//           (l$deleteEmployee as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationDeleteEmployeedeleteEmployee deleteEmployee;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$deleteEmployee = deleteEmployee;
//     _resultData['deleteEmployee'] = l$deleteEmployee.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$deleteEmployee = deleteEmployee;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$deleteEmployee,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationDeleteEmployee) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$deleteEmployee = deleteEmployee;
//     final lOther$deleteEmployee = other.deleteEmployee;
//     if (l$deleteEmployee != lOther$deleteEmployee) {
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
// extension UtilityExtensionMutationDeleteEmployee on MutationDeleteEmployee {
//   CopyWithMutationDeleteEmployee<MutationDeleteEmployee> get copyWith =>
//       CopyWithMutationDeleteEmployee(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationDeleteEmployee<TRes> {
//   factory CopyWithMutationDeleteEmployee(
//     MutationDeleteEmployee instance,
//     TRes Function(MutationDeleteEmployee) then,
//   ) = _CopyWithImplMutationDeleteEmployee;
//
//   factory CopyWithMutationDeleteEmployee.stub(TRes res) =
//       _CopyWithStubImplMutationDeleteEmployee;
//
//   TRes call({
//     MutationDeleteEmployeedeleteEmployee? deleteEmployee,
//     String? $__typename,
//   });
//   CopyWithMutationDeleteEmployeedeleteEmployee<TRes> get deleteEmployee;
// }
//
// class _CopyWithImplMutationDeleteEmployee<TRes>
//     implements CopyWithMutationDeleteEmployee<TRes> {
//   _CopyWithImplMutationDeleteEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final MutationDeleteEmployee _instance;
//
//   final TRes Function(MutationDeleteEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? deleteEmployee = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationDeleteEmployee(
//         deleteEmployee: deleteEmployee == _undefined || deleteEmployee == null
//             ? _instance.deleteEmployee
//             : (deleteEmployee as MutationDeleteEmployeedeleteEmployee),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationDeleteEmployeedeleteEmployee<TRes> get deleteEmployee {
//     final local$deleteEmployee = _instance.deleteEmployee;
//     return CopyWithMutationDeleteEmployeedeleteEmployee(
//         local$deleteEmployee, (e) => call(deleteEmployee: e));
//   }
// }
//
// class _CopyWithStubImplMutationDeleteEmployee<TRes>
//     implements CopyWithMutationDeleteEmployee<TRes> {
//   _CopyWithStubImplMutationDeleteEmployee(this._res);
//
//   TRes _res;
//
//   call({
//     MutationDeleteEmployeedeleteEmployee? deleteEmployee,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationDeleteEmployeedeleteEmployee<TRes> get deleteEmployee =>
//       CopyWithMutationDeleteEmployeedeleteEmployee.stub(_res);
// }
//
// const documentNodeMutationDeleteEmployee = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'DeleteEmployee'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'id')),
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
//         name: NameNode(value: 'deleteEmployee'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'employee_id'),
//                 value: VariableNode(name: NameNode(value: 'id')),
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
//             name: NameNode(value: 'error'),
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
// MutationDeleteEmployee _parserFnMutationDeleteEmployee(
//         Map<String, dynamic> data) =>
//     MutationDeleteEmployee.fromJson(data);
// typedef OnMutationCompletedMutationDeleteEmployee = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationDeleteEmployee?,
// );
//
// class OptionsMutationDeleteEmployee
//     extends graphql.MutationOptions<MutationDeleteEmployee> {
//   OptionsMutationDeleteEmployee({
//     String? operationName,
//     required VariablesMutationDeleteEmployee variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationDeleteEmployee? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationDeleteEmployee? onCompleted,
//     graphql.OnMutationUpdate<MutationDeleteEmployee>? update,
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
//                     data == null ? null : _parserFnMutationDeleteEmployee(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationDeleteEmployee,
//           parserFn: _parserFnMutationDeleteEmployee,
//         );
//
//   final OnMutationCompletedMutationDeleteEmployee? onCompletedWithParsed;
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
// class WatchOptionsMutationDeleteEmployee
//     extends graphql.WatchQueryOptions<MutationDeleteEmployee> {
//   WatchOptionsMutationDeleteEmployee({
//     String? operationName,
//     required VariablesMutationDeleteEmployee variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationDeleteEmployee? typedOptimisticResult,
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
//           document: documentNodeMutationDeleteEmployee,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationDeleteEmployee,
//         );
// }
//
// extension ClientExtensionMutationDeleteEmployee on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationDeleteEmployee>> mutateDeleteEmployee(
//           OptionsMutationDeleteEmployee options) async =>
//       await this.mutate(options);
//   graphql.ObservableQuery<MutationDeleteEmployee> watchMutationDeleteEmployee(
//           WatchOptionsMutationDeleteEmployee options) =>
//       this.watchMutation(options);
// }
//
// class MutationDeleteEmployeeHookResult {
//   MutationDeleteEmployeeHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationDeleteEmployee runMutation;
//
//   final graphql.QueryResult<MutationDeleteEmployee> result;
// }
//
// MutationDeleteEmployeeHookResult useMutationDeleteEmployee(
//     [WidgetOptionsMutationDeleteEmployee? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationDeleteEmployee());
//   return MutationDeleteEmployeeHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationDeleteEmployee> useWatchMutationDeleteEmployee(
//         WatchOptionsMutationDeleteEmployee options) =>
//     graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationDeleteEmployee
//     extends graphql.MutationOptions<MutationDeleteEmployee> {
//   WidgetOptionsMutationDeleteEmployee({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationDeleteEmployee? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationDeleteEmployee? onCompleted,
//     graphql.OnMutationUpdate<MutationDeleteEmployee>? update,
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
//                     data == null ? null : _parserFnMutationDeleteEmployee(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationDeleteEmployee,
//           parserFn: _parserFnMutationDeleteEmployee,
//         );
//
//   final OnMutationCompletedMutationDeleteEmployee? onCompletedWithParsed;
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
// typedef RunMutationMutationDeleteEmployee
//     = graphql.MultiSourceResult<MutationDeleteEmployee> Function(
//   VariablesMutationDeleteEmployee, {
//   Object? optimisticResult,
//   MutationDeleteEmployee? typedOptimisticResult,
// });
// typedef BuilderMutationDeleteEmployee = widgets.Widget Function(
//   RunMutationMutationDeleteEmployee,
//   graphql.QueryResult<MutationDeleteEmployee>?,
// );
//
// class MutationDeleteEmployeeWidget
//     extends graphql_flutter.Mutation<MutationDeleteEmployee> {
//   MutationDeleteEmployeeWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationDeleteEmployee? options,
//     required BuilderMutationDeleteEmployee builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationDeleteEmployee(),
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
// class MutationDeleteEmployeedeleteEmployee {
//   MutationDeleteEmployeedeleteEmployee({
//     required this.status,
//     required this.error,
//     this.message,
//     this.$__typename = 'Result',
//   });
//
//   factory MutationDeleteEmployeedeleteEmployee.fromJson(
//       Map<String, dynamic> json) {
//     final l$status = json['status'];
//     final l$error = json['error'];
//     final l$message = json['message'];
//     final l$$__typename = json['__typename'];
//     return MutationDeleteEmployeedeleteEmployee(
//       status: (l$status as String),
//       error: (l$error as int),
//       message: (l$message as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String status;
//
//   final int error;
//
//   final String? message;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$status = status;
//     _resultData['status'] = l$status;
//     final l$error = error;
//     _resultData['error'] = l$error;
//     final l$message = message;
//     _resultData['message'] = l$message;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$status = status;
//     final l$error = error;
//     final l$message = message;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$status,
//       l$error,
//       l$message,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationDeleteEmployeedeleteEmployee) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$status = status;
//     final lOther$status = other.status;
//     if (l$status != lOther$status) {
//       return false;
//     }
//     final l$error = error;
//     final lOther$error = other.error;
//     if (l$error != lOther$error) {
//       return false;
//     }
//     final l$message = message;
//     final lOther$message = other.message;
//     if (l$message != lOther$message) {
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
// extension UtilityExtensionMutationDeleteEmployeedeleteEmployee
//     on MutationDeleteEmployeedeleteEmployee {
//   CopyWithMutationDeleteEmployeedeleteEmployee<
//           MutationDeleteEmployeedeleteEmployee>
//       get copyWith => CopyWithMutationDeleteEmployeedeleteEmployee(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationDeleteEmployeedeleteEmployee<TRes> {
//   factory CopyWithMutationDeleteEmployeedeleteEmployee(
//     MutationDeleteEmployeedeleteEmployee instance,
//     TRes Function(MutationDeleteEmployeedeleteEmployee) then,
//   ) = _CopyWithImplMutationDeleteEmployeedeleteEmployee;
//
//   factory CopyWithMutationDeleteEmployeedeleteEmployee.stub(TRes res) =
//       _CopyWithStubImplMutationDeleteEmployeedeleteEmployee;
//
//   TRes call({
//     String? status,
//     int? error,
//     String? message,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationDeleteEmployeedeleteEmployee<TRes>
//     implements CopyWithMutationDeleteEmployeedeleteEmployee<TRes> {
//   _CopyWithImplMutationDeleteEmployeedeleteEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final MutationDeleteEmployeedeleteEmployee _instance;
//
//   final TRes Function(MutationDeleteEmployeedeleteEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? status = _undefined,
//     Object? error = _undefined,
//     Object? message = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationDeleteEmployeedeleteEmployee(
//         status: status == _undefined || status == null
//             ? _instance.status
//             : (status as String),
//         error: error == _undefined || error == null
//             ? _instance.error
//             : (error as int),
//         message:
//             message == _undefined ? _instance.message : (message as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplMutationDeleteEmployeedeleteEmployee<TRes>
//     implements CopyWithMutationDeleteEmployeedeleteEmployee<TRes> {
//   _CopyWithStubImplMutationDeleteEmployeedeleteEmployee(this._res);
//
//   TRes _res;
//
//   call({
//     String? status,
//     int? error,
//     String? message,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesMutationAddToEmployeeWallet {
//   factory VariablesMutationAddToEmployeeWallet({
//     required String id,
//     required double amount,
//     EnumPaymentMethod? payment_method,
//   }) =>
//       VariablesMutationAddToEmployeeWallet._({
//         r'id': id,
//         r'amount': amount,
//         if (payment_method != null) r'payment_method': payment_method,
//       });
//
//   VariablesMutationAddToEmployeeWallet._(this._$data);
//
//   factory VariablesMutationAddToEmployeeWallet.fromJson(
//       Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$id = data['id'];
//     result$data['id'] = (l$id as String);
//     final l$amount = data['amount'];
//     result$data['amount'] = (l$amount as num).toDouble();
//     if (data.containsKey('payment_method')) {
//       final l$payment_method = data['payment_method'];
//       result$data['payment_method'] = l$payment_method == null
//           ? null
//           : fromJsonEnumPaymentMethod((l$payment_method as String));
//     }
//     return VariablesMutationAddToEmployeeWallet._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   String get id => (_$data['id'] as String);
//
//   double get amount => (_$data['amount'] as double);
//
//   EnumPaymentMethod? get payment_method =>
//       (_$data['payment_method'] as EnumPaymentMethod?);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$id = id;
//     result$data['id'] = l$id;
//     final l$amount = amount;
//     result$data['amount'] = l$amount;
//     if (_$data.containsKey('payment_method')) {
//       final l$payment_method = payment_method;
//       result$data['payment_method'] = l$payment_method == null
//           ? null
//           : toJsonEnumPaymentMethod(l$payment_method);
//     }
//     return result$data;
//   }
//
//   CopyWithVariablesMutationAddToEmployeeWallet<
//           VariablesMutationAddToEmployeeWallet>
//       get copyWith => CopyWithVariablesMutationAddToEmployeeWallet(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationAddToEmployeeWallet) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     final l$amount = amount;
//     final lOther$amount = other.amount;
//     if (l$amount != lOther$amount) {
//       return false;
//     }
//     final l$payment_method = payment_method;
//     final lOther$payment_method = other.payment_method;
//     if (_$data.containsKey('payment_method') !=
//         other._$data.containsKey('payment_method')) {
//       return false;
//     }
//     if (l$payment_method != lOther$payment_method) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$amount = amount;
//     final l$payment_method = payment_method;
//     return Object.hashAll([
//       l$id,
//       l$amount,
//       _$data.containsKey('payment_method') ? l$payment_method : const {},
//     ]);
//   }
// }
//
// abstract class CopyWithVariablesMutationAddToEmployeeWallet<TRes> {
//   factory CopyWithVariablesMutationAddToEmployeeWallet(
//     VariablesMutationAddToEmployeeWallet instance,
//     TRes Function(VariablesMutationAddToEmployeeWallet) then,
//   ) = _CopyWithImplVariablesMutationAddToEmployeeWallet;
//
//   factory CopyWithVariablesMutationAddToEmployeeWallet.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationAddToEmployeeWallet;
//
//   TRes call({
//     String? id,
//     double? amount,
//     EnumPaymentMethod? payment_method,
//   });
// }
//
// class _CopyWithImplVariablesMutationAddToEmployeeWallet<TRes>
//     implements CopyWithVariablesMutationAddToEmployeeWallet<TRes> {
//   _CopyWithImplVariablesMutationAddToEmployeeWallet(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationAddToEmployeeWallet _instance;
//
//   final TRes Function(VariablesMutationAddToEmployeeWallet) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? amount = _undefined,
//     Object? payment_method = _undefined,
//   }) =>
//       _then(VariablesMutationAddToEmployeeWallet._({
//         ..._instance._$data,
//         if (id != _undefined && id != null) 'id': (id as String),
//         if (amount != _undefined && amount != null)
//           'amount': (amount as double),
//         if (payment_method != _undefined)
//           'payment_method': (payment_method as EnumPaymentMethod?),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationAddToEmployeeWallet<TRes>
//     implements CopyWithVariablesMutationAddToEmployeeWallet<TRes> {
//   _CopyWithStubImplVariablesMutationAddToEmployeeWallet(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     double? amount,
//     EnumPaymentMethod? payment_method,
//   }) =>
//       _res;
// }
//
// class MutationAddToEmployeeWallet {
//   MutationAddToEmployeeWallet({
//     required this.createWalletEmployee,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationAddToEmployeeWallet.fromJson(Map<String, dynamic> json) {
//     final l$createWalletEmployee = json['createWalletEmployee'];
//     final l$$__typename = json['__typename'];
//     return MutationAddToEmployeeWallet(
//       createWalletEmployee:
//           MutationAddToEmployeeWalletcreateWalletEmployee.fromJson(
//               (l$createWalletEmployee as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationAddToEmployeeWalletcreateWalletEmployee createWalletEmployee;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$createWalletEmployee = createWalletEmployee;
//     _resultData['createWalletEmployee'] = l$createWalletEmployee.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$createWalletEmployee = createWalletEmployee;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$createWalletEmployee,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationAddToEmployeeWallet) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$createWalletEmployee = createWalletEmployee;
//     final lOther$createWalletEmployee = other.createWalletEmployee;
//     if (l$createWalletEmployee != lOther$createWalletEmployee) {
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
// extension UtilityExtensionMutationAddToEmployeeWallet
//     on MutationAddToEmployeeWallet {
//   CopyWithMutationAddToEmployeeWallet<MutationAddToEmployeeWallet>
//       get copyWith => CopyWithMutationAddToEmployeeWallet(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationAddToEmployeeWallet<TRes> {
//   factory CopyWithMutationAddToEmployeeWallet(
//     MutationAddToEmployeeWallet instance,
//     TRes Function(MutationAddToEmployeeWallet) then,
//   ) = _CopyWithImplMutationAddToEmployeeWallet;
//
//   factory CopyWithMutationAddToEmployeeWallet.stub(TRes res) =
//       _CopyWithStubImplMutationAddToEmployeeWallet;
//
//   TRes call({
//     MutationAddToEmployeeWalletcreateWalletEmployee? createWalletEmployee,
//     String? $__typename,
//   });
//   CopyWithMutationAddToEmployeeWalletcreateWalletEmployee<TRes>
//       get createWalletEmployee;
// }
//
// class _CopyWithImplMutationAddToEmployeeWallet<TRes>
//     implements CopyWithMutationAddToEmployeeWallet<TRes> {
//   _CopyWithImplMutationAddToEmployeeWallet(
//     this._instance,
//     this._then,
//   );
//
//   final MutationAddToEmployeeWallet _instance;
//
//   final TRes Function(MutationAddToEmployeeWallet) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? createWalletEmployee = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationAddToEmployeeWallet(
//         createWalletEmployee:
//             createWalletEmployee == _undefined || createWalletEmployee == null
//                 ? _instance.createWalletEmployee
//                 : (createWalletEmployee
//                     as MutationAddToEmployeeWalletcreateWalletEmployee),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationAddToEmployeeWalletcreateWalletEmployee<TRes>
//       get createWalletEmployee {
//     final local$createWalletEmployee = _instance.createWalletEmployee;
//     return CopyWithMutationAddToEmployeeWalletcreateWalletEmployee(
//         local$createWalletEmployee, (e) => call(createWalletEmployee: e));
//   }
// }
//
// class _CopyWithStubImplMutationAddToEmployeeWallet<TRes>
//     implements CopyWithMutationAddToEmployeeWallet<TRes> {
//   _CopyWithStubImplMutationAddToEmployeeWallet(this._res);
//
//   TRes _res;
//
//   call({
//     MutationAddToEmployeeWalletcreateWalletEmployee? createWalletEmployee,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationAddToEmployeeWalletcreateWalletEmployee<TRes>
//       get createWalletEmployee =>
//           CopyWithMutationAddToEmployeeWalletcreateWalletEmployee.stub(_res);
// }
//
// const documentNodeMutationAddToEmployeeWallet = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'AddToEmployeeWallet'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'id')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'ID'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'amount')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'Float'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'payment_method')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'PaymentMethod'),
//           isNonNull: false,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//     ],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'createWalletEmployee'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'employee_id'),
//                 value: VariableNode(name: NameNode(value: 'id')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'amount'),
//                 value: VariableNode(name: NameNode(value: 'amount')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'payment_method'),
//                 value: VariableNode(name: NameNode(value: 'payment_method')),
//               ),
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
//             name: NameNode(value: 'wallet'),
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
//                 name: NameNode(value: 'wallet'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: SelectionSetNode(selections: [
//                   FieldNode(
//                     name: NameNode(value: 'customer'),
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
//                         name: NameNode(value: 'name'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'wallet'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'wallet_limit'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'withdrawal'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'created_at'),
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
//                 name: NameNode(value: 'transaction_number'),
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
//                 name: NameNode(value: 'status'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'payment_method'),
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
//                 name: NameNode(value: 'type'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'created_at'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'attachment'),
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
// MutationAddToEmployeeWallet _parserFnMutationAddToEmployeeWallet(
//         Map<String, dynamic> data) =>
//     MutationAddToEmployeeWallet.fromJson(data);
// typedef OnMutationCompletedMutationAddToEmployeeWallet = FutureOr<void>
//     Function(
//   Map<String, dynamic>?,
//   MutationAddToEmployeeWallet?,
// );
//
// class OptionsMutationAddToEmployeeWallet
//     extends graphql.MutationOptions<MutationAddToEmployeeWallet> {
//   OptionsMutationAddToEmployeeWallet({
//     String? operationName,
//     required VariablesMutationAddToEmployeeWallet variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationAddToEmployeeWallet? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationAddToEmployeeWallet? onCompleted,
//     graphql.OnMutationUpdate<MutationAddToEmployeeWallet>? update,
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
//                         : _parserFnMutationAddToEmployeeWallet(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationAddToEmployeeWallet,
//           parserFn: _parserFnMutationAddToEmployeeWallet,
//         );
//
//   final OnMutationCompletedMutationAddToEmployeeWallet? onCompletedWithParsed;
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
// class WatchOptionsMutationAddToEmployeeWallet
//     extends graphql.WatchQueryOptions<MutationAddToEmployeeWallet> {
//   WatchOptionsMutationAddToEmployeeWallet({
//     String? operationName,
//     required VariablesMutationAddToEmployeeWallet variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationAddToEmployeeWallet? typedOptimisticResult,
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
//           document: documentNodeMutationAddToEmployeeWallet,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationAddToEmployeeWallet,
//         );
// }
//
// extension ClientExtensionMutationAddToEmployeeWallet on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationAddToEmployeeWallet>>
//       mutateAddToEmployeeWallet(
//               OptionsMutationAddToEmployeeWallet options) async =>
//           await this.mutate(options);
//   graphql.ObservableQuery<MutationAddToEmployeeWallet>
//       watchMutationAddToEmployeeWallet(
//               WatchOptionsMutationAddToEmployeeWallet options) =>
//           this.watchMutation(options);
// }
//
// class MutationAddToEmployeeWalletHookResult {
//   MutationAddToEmployeeWalletHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationAddToEmployeeWallet runMutation;
//
//   final graphql.QueryResult<MutationAddToEmployeeWallet> result;
// }
//
// MutationAddToEmployeeWalletHookResult useMutationAddToEmployeeWallet(
//     [WidgetOptionsMutationAddToEmployeeWallet? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationAddToEmployeeWallet());
//   return MutationAddToEmployeeWalletHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationAddToEmployeeWallet>
//     useWatchMutationAddToEmployeeWallet(
//             WatchOptionsMutationAddToEmployeeWallet options) =>
//         graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationAddToEmployeeWallet
//     extends graphql.MutationOptions<MutationAddToEmployeeWallet> {
//   WidgetOptionsMutationAddToEmployeeWallet({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationAddToEmployeeWallet? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationAddToEmployeeWallet? onCompleted,
//     graphql.OnMutationUpdate<MutationAddToEmployeeWallet>? update,
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
//                         : _parserFnMutationAddToEmployeeWallet(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationAddToEmployeeWallet,
//           parserFn: _parserFnMutationAddToEmployeeWallet,
//         );
//
//   final OnMutationCompletedMutationAddToEmployeeWallet? onCompletedWithParsed;
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
// typedef RunMutationMutationAddToEmployeeWallet
//     = graphql.MultiSourceResult<MutationAddToEmployeeWallet> Function(
//   VariablesMutationAddToEmployeeWallet, {
//   Object? optimisticResult,
//   MutationAddToEmployeeWallet? typedOptimisticResult,
// });
// typedef BuilderMutationAddToEmployeeWallet = widgets.Widget Function(
//   RunMutationMutationAddToEmployeeWallet,
//   graphql.QueryResult<MutationAddToEmployeeWallet>?,
// );
//
// class MutationAddToEmployeeWalletWidget
//     extends graphql_flutter.Mutation<MutationAddToEmployeeWallet> {
//   MutationAddToEmployeeWalletWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationAddToEmployeeWallet? options,
//     required BuilderMutationAddToEmployeeWallet builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationAddToEmployeeWallet(),
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
// class MutationAddToEmployeeWalletcreateWalletEmployee {
//   MutationAddToEmployeeWalletcreateWalletEmployee({
//     required this.status,
//     this.message,
//     required this.error,
//     this.wallet,
//     this.$__typename = 'WalletResult',
//   });
//
//   factory MutationAddToEmployeeWalletcreateWalletEmployee.fromJson(
//       Map<String, dynamic> json) {
//     final l$status = json['status'];
//     final l$message = json['message'];
//     final l$error = json['error'];
//     final l$wallet = json['wallet'];
//     final l$$__typename = json['__typename'];
//     return MutationAddToEmployeeWalletcreateWalletEmployee(
//       status: (l$status as String),
//       message: (l$message as String?),
//       error: (l$error as int),
//       wallet: l$wallet == null
//           ? null
//           : MutationAddToEmployeeWalletcreateWalletEmployeewallet.fromJson(
//               (l$wallet as Map<String, dynamic>)),
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
//   final MutationAddToEmployeeWalletcreateWalletEmployeewallet? wallet;
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
//     final l$wallet = wallet;
//     _resultData['wallet'] = l$wallet?.toJson();
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
//     final l$wallet = wallet;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$status,
//       l$message,
//       l$error,
//       l$wallet,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationAddToEmployeeWalletcreateWalletEmployee) ||
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
//     final l$wallet = wallet;
//     final lOther$wallet = other.wallet;
//     if (l$wallet != lOther$wallet) {
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
// extension UtilityExtensionMutationAddToEmployeeWalletcreateWalletEmployee
//     on MutationAddToEmployeeWalletcreateWalletEmployee {
//   CopyWithMutationAddToEmployeeWalletcreateWalletEmployee<
//           MutationAddToEmployeeWalletcreateWalletEmployee>
//       get copyWith => CopyWithMutationAddToEmployeeWalletcreateWalletEmployee(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationAddToEmployeeWalletcreateWalletEmployee<TRes> {
//   factory CopyWithMutationAddToEmployeeWalletcreateWalletEmployee(
//     MutationAddToEmployeeWalletcreateWalletEmployee instance,
//     TRes Function(MutationAddToEmployeeWalletcreateWalletEmployee) then,
//   ) = _CopyWithImplMutationAddToEmployeeWalletcreateWalletEmployee;
//
//   factory CopyWithMutationAddToEmployeeWalletcreateWalletEmployee.stub(
//           TRes res) =
//       _CopyWithStubImplMutationAddToEmployeeWalletcreateWalletEmployee;
//
//   TRes call({
//     String? status,
//     String? message,
//     int? error,
//     MutationAddToEmployeeWalletcreateWalletEmployeewallet? wallet,
//     String? $__typename,
//   });
//   CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewallet<TRes>
//       get wallet;
// }
//
// class _CopyWithImplMutationAddToEmployeeWalletcreateWalletEmployee<TRes>
//     implements CopyWithMutationAddToEmployeeWalletcreateWalletEmployee<TRes> {
//   _CopyWithImplMutationAddToEmployeeWalletcreateWalletEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final MutationAddToEmployeeWalletcreateWalletEmployee _instance;
//
//   final TRes Function(MutationAddToEmployeeWalletcreateWalletEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? status = _undefined,
//     Object? message = _undefined,
//     Object? error = _undefined,
//     Object? wallet = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationAddToEmployeeWalletcreateWalletEmployee(
//         status: status == _undefined || status == null
//             ? _instance.status
//             : (status as String),
//         message:
//             message == _undefined ? _instance.message : (message as String?),
//         error: error == _undefined || error == null
//             ? _instance.error
//             : (error as int),
//         wallet: wallet == _undefined
//             ? _instance.wallet
//             : (wallet
//                 as MutationAddToEmployeeWalletcreateWalletEmployeewallet?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewallet<TRes>
//       get wallet {
//     final local$wallet = _instance.wallet;
//     return local$wallet == null
//         ? CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewallet.stub(
//             _then(_instance))
//         : CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewallet(
//             local$wallet, (e) => call(wallet: e));
//   }
// }
//
// class _CopyWithStubImplMutationAddToEmployeeWalletcreateWalletEmployee<TRes>
//     implements CopyWithMutationAddToEmployeeWalletcreateWalletEmployee<TRes> {
//   _CopyWithStubImplMutationAddToEmployeeWalletcreateWalletEmployee(this._res);
//
//   TRes _res;
//
//   call({
//     String? status,
//     String? message,
//     int? error,
//     MutationAddToEmployeeWalletcreateWalletEmployeewallet? wallet,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewallet<TRes>
//       get wallet =>
//           CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewallet.stub(
//               _res);
// }
//
// class MutationAddToEmployeeWalletcreateWalletEmployeewallet {
//   MutationAddToEmployeeWalletcreateWalletEmployeewallet({
//     required this.id,
//     this.wallet,
//     this.transaction_number,
//     this.amount,
//     this.status,
//     this.payment_method,
//     this.description,
//     this.type,
//     this.created_at,
//     this.attachment,
//     this.$__typename = 'WalletTransaction',
//   });
//
//   factory MutationAddToEmployeeWalletcreateWalletEmployeewallet.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$wallet = json['wallet'];
//     final l$transaction_number = json['transaction_number'];
//     final l$amount = json['amount'];
//     final l$status = json['status'];
//     final l$payment_method = json['payment_method'];
//     final l$description = json['description'];
//     final l$type = json['type'];
//     final l$created_at = json['created_at'];
//     final l$attachment = json['attachment'];
//     final l$$__typename = json['__typename'];
//     return MutationAddToEmployeeWalletcreateWalletEmployeewallet(
//       id: (l$id as String),
//       wallet: l$wallet == null
//           ? null
//           : MutationAddToEmployeeWalletcreateWalletEmployeewalletwallet
//               .fromJson((l$wallet as Map<String, dynamic>)),
//       transaction_number: (l$transaction_number as String?),
//       amount: (l$amount as String?),
//       status: (l$status as String?),
//       payment_method: (l$payment_method as String?),
//       description: (l$description as String?),
//       type: (l$type as String?),
//       created_at: (l$created_at as String?),
//       attachment: (l$attachment as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final MutationAddToEmployeeWalletcreateWalletEmployeewalletwallet? wallet;
//
//   final String? transaction_number;
//
//   final String? amount;
//
//   final String? status;
//
//   final String? payment_method;
//
//   final String? description;
//
//   final String? type;
//
//   final String? created_at;
//
//   final String? attachment;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$wallet = wallet;
//     _resultData['wallet'] = l$wallet?.toJson();
//     final l$transaction_number = transaction_number;
//     _resultData['transaction_number'] = l$transaction_number;
//     final l$amount = amount;
//     _resultData['amount'] = l$amount;
//     final l$status = status;
//     _resultData['status'] = l$status;
//     final l$payment_method = payment_method;
//     _resultData['payment_method'] = l$payment_method;
//     final l$description = description;
//     _resultData['description'] = l$description;
//     final l$type = type;
//     _resultData['type'] = l$type;
//     final l$created_at = created_at;
//     _resultData['created_at'] = l$created_at;
//     final l$attachment = attachment;
//     _resultData['attachment'] = l$attachment;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$wallet = wallet;
//     final l$transaction_number = transaction_number;
//     final l$amount = amount;
//     final l$status = status;
//     final l$payment_method = payment_method;
//     final l$description = description;
//     final l$type = type;
//     final l$created_at = created_at;
//     final l$attachment = attachment;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$wallet,
//       l$transaction_number,
//       l$amount,
//       l$status,
//       l$payment_method,
//       l$description,
//       l$type,
//       l$created_at,
//       l$attachment,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationAddToEmployeeWalletcreateWalletEmployeewallet) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
//       return false;
//     }
//     final l$wallet = wallet;
//     final lOther$wallet = other.wallet;
//     if (l$wallet != lOther$wallet) {
//       return false;
//     }
//     final l$transaction_number = transaction_number;
//     final lOther$transaction_number = other.transaction_number;
//     if (l$transaction_number != lOther$transaction_number) {
//       return false;
//     }
//     final l$amount = amount;
//     final lOther$amount = other.amount;
//     if (l$amount != lOther$amount) {
//       return false;
//     }
//     final l$status = status;
//     final lOther$status = other.status;
//     if (l$status != lOther$status) {
//       return false;
//     }
//     final l$payment_method = payment_method;
//     final lOther$payment_method = other.payment_method;
//     if (l$payment_method != lOther$payment_method) {
//       return false;
//     }
//     final l$description = description;
//     final lOther$description = other.description;
//     if (l$description != lOther$description) {
//       return false;
//     }
//     final l$type = type;
//     final lOther$type = other.type;
//     if (l$type != lOther$type) {
//       return false;
//     }
//     final l$created_at = created_at;
//     final lOther$created_at = other.created_at;
//     if (l$created_at != lOther$created_at) {
//       return false;
//     }
//     final l$attachment = attachment;
//     final lOther$attachment = other.attachment;
//     if (l$attachment != lOther$attachment) {
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
// extension UtilityExtensionMutationAddToEmployeeWalletcreateWalletEmployeewallet
//     on MutationAddToEmployeeWalletcreateWalletEmployeewallet {
//   CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewallet<
//           MutationAddToEmployeeWalletcreateWalletEmployeewallet>
//       get copyWith =>
//           CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewallet(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewallet<
//     TRes> {
//   factory CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewallet(
//     MutationAddToEmployeeWalletcreateWalletEmployeewallet instance,
//     TRes Function(MutationAddToEmployeeWalletcreateWalletEmployeewallet) then,
//   ) = _CopyWithImplMutationAddToEmployeeWalletcreateWalletEmployeewallet;
//
//   factory CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewallet.stub(
//           TRes res) =
//       _CopyWithStubImplMutationAddToEmployeeWalletcreateWalletEmployeewallet;
//
//   TRes call({
//     String? id,
//     MutationAddToEmployeeWalletcreateWalletEmployeewalletwallet? wallet,
//     String? transaction_number,
//     String? amount,
//     String? status,
//     String? payment_method,
//     String? description,
//     String? type,
//     String? created_at,
//     String? attachment,
//     String? $__typename,
//   });
//   CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet<TRes>
//       get wallet;
// }
//
// class _CopyWithImplMutationAddToEmployeeWalletcreateWalletEmployeewallet<TRes>
//     implements
//         CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewallet<TRes> {
//   _CopyWithImplMutationAddToEmployeeWalletcreateWalletEmployeewallet(
//     this._instance,
//     this._then,
//   );
//
//   final MutationAddToEmployeeWalletcreateWalletEmployeewallet _instance;
//
//   final TRes Function(MutationAddToEmployeeWalletcreateWalletEmployeewallet)
//       _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? wallet = _undefined,
//     Object? transaction_number = _undefined,
//     Object? amount = _undefined,
//     Object? status = _undefined,
//     Object? payment_method = _undefined,
//     Object? description = _undefined,
//     Object? type = _undefined,
//     Object? created_at = _undefined,
//     Object? attachment = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationAddToEmployeeWalletcreateWalletEmployeewallet(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         wallet: wallet == _undefined
//             ? _instance.wallet
//             : (wallet
//                 as MutationAddToEmployeeWalletcreateWalletEmployeewalletwallet?),
//         transaction_number: transaction_number == _undefined
//             ? _instance.transaction_number
//             : (transaction_number as String?),
//         amount: amount == _undefined ? _instance.amount : (amount as String?),
//         status: status == _undefined ? _instance.status : (status as String?),
//         payment_method: payment_method == _undefined
//             ? _instance.payment_method
//             : (payment_method as String?),
//         description: description == _undefined
//             ? _instance.description
//             : (description as String?),
//         type: type == _undefined ? _instance.type : (type as String?),
//         created_at: created_at == _undefined
//             ? _instance.created_at
//             : (created_at as String?),
//         attachment: attachment == _undefined
//             ? _instance.attachment
//             : (attachment as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet<TRes>
//       get wallet {
//     final local$wallet = _instance.wallet;
//     return local$wallet == null
//         ? CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet
//             .stub(_then(_instance))
//         : CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet(
//             local$wallet, (e) => call(wallet: e));
//   }
// }
//
// class _CopyWithStubImplMutationAddToEmployeeWalletcreateWalletEmployeewallet<
//         TRes>
//     implements
//         CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewallet<TRes> {
//   _CopyWithStubImplMutationAddToEmployeeWalletcreateWalletEmployeewallet(
//       this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     MutationAddToEmployeeWalletcreateWalletEmployeewalletwallet? wallet,
//     String? transaction_number,
//     String? amount,
//     String? status,
//     String? payment_method,
//     String? description,
//     String? type,
//     String? created_at,
//     String? attachment,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet<TRes>
//       get wallet =>
//           CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet
//               .stub(_res);
// }
//
// class MutationAddToEmployeeWalletcreateWalletEmployeewalletwallet {
//   MutationAddToEmployeeWalletcreateWalletEmployeewalletwallet({
//     this.customer,
//     this.$__typename = 'Wallet',
//   });
//
//   factory MutationAddToEmployeeWalletcreateWalletEmployeewalletwallet.fromJson(
//       Map<String, dynamic> json) {
//     final l$customer = json['customer'];
//     final l$$__typename = json['__typename'];
//     return MutationAddToEmployeeWalletcreateWalletEmployeewalletwallet(
//       customer: l$customer == null
//           ? null
//           : MutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer
//               .fromJson((l$customer as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer?
//       customer;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$customer = customer;
//     _resultData['customer'] = l$customer?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$customer = customer;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$customer,
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
//             is MutationAddToEmployeeWalletcreateWalletEmployeewalletwallet) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$customer = customer;
//     final lOther$customer = other.customer;
//     if (l$customer != lOther$customer) {
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
// extension UtilityExtensionMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet
//     on MutationAddToEmployeeWalletcreateWalletEmployeewalletwallet {
//   CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet<
//           MutationAddToEmployeeWalletcreateWalletEmployeewalletwallet>
//       get copyWith =>
//           CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet<
//     TRes> {
//   factory CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet(
//     MutationAddToEmployeeWalletcreateWalletEmployeewalletwallet instance,
//     TRes Function(MutationAddToEmployeeWalletcreateWalletEmployeewalletwallet)
//         then,
//   ) = _CopyWithImplMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet;
//
//   factory CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet.stub(
//           TRes res) =
//       _CopyWithStubImplMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet;
//
//   TRes call({
//     MutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer?
//         customer,
//     String? $__typename,
//   });
//   CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer<
//       TRes> get customer;
// }
//
// class _CopyWithImplMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet<
//         TRes>
//     implements
//         CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet<
//             TRes> {
//   _CopyWithImplMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet(
//     this._instance,
//     this._then,
//   );
//
//   final MutationAddToEmployeeWalletcreateWalletEmployeewalletwallet _instance;
//
//   final TRes Function(
//       MutationAddToEmployeeWalletcreateWalletEmployeewalletwallet) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? customer = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationAddToEmployeeWalletcreateWalletEmployeewalletwallet(
//         customer: customer == _undefined
//             ? _instance.customer
//             : (customer
//                 as MutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer<
//       TRes> get customer {
//     final local$customer = _instance.customer;
//     return local$customer == null
//         ? CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer
//             .stub(_then(_instance))
//         : CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer(
//             local$customer, (e) => call(customer: e));
//   }
// }
//
// class _CopyWithStubImplMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet<
//         TRes>
//     implements
//         CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet<
//             TRes> {
//   _CopyWithStubImplMutationAddToEmployeeWalletcreateWalletEmployeewalletwallet(
//       this._res);
//
//   TRes _res;
//
//   call({
//     MutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer?
//         customer,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer<
//           TRes>
//       get customer =>
//           CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer
//               .stub(_res);
// }
//
// class MutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer {
//   MutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer({
//     required this.id,
//     this.name,
//     this.wallet,
//     this.wallet_limit,
//     this.withdrawal,
//     this.created_at,
//     this.$__typename = 'User',
//   });
//
//   factory MutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$wallet = json['wallet'];
//     final l$wallet_limit = json['wallet_limit'];
//     final l$withdrawal = json['withdrawal'];
//     final l$created_at = json['created_at'];
//     final l$$__typename = json['__typename'];
//     return MutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer(
//       id: (l$id as String),
//       name: (l$name as String?),
//       wallet: (l$wallet as num?)?.toDouble(),
//       wallet_limit: (l$wallet_limit as num?)?.toDouble(),
//       withdrawal: (l$withdrawal as num?)?.toDouble(),
//       created_at: (l$created_at as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String? name;
//
//   final double? wallet;
//
//   final double? wallet_limit;
//
//   final double? withdrawal;
//
//   final String? created_at;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$name = name;
//     _resultData['name'] = l$name;
//     final l$wallet = wallet;
//     _resultData['wallet'] = l$wallet;
//     final l$wallet_limit = wallet_limit;
//     _resultData['wallet_limit'] = l$wallet_limit;
//     final l$withdrawal = withdrawal;
//     _resultData['withdrawal'] = l$withdrawal;
//     final l$created_at = created_at;
//     _resultData['created_at'] = l$created_at;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$name = name;
//     final l$wallet = wallet;
//     final l$wallet_limit = wallet_limit;
//     final l$withdrawal = withdrawal;
//     final l$created_at = created_at;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$name,
//       l$wallet,
//       l$wallet_limit,
//       l$withdrawal,
//       l$created_at,
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
//             is MutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer) ||
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
//     final l$wallet = wallet;
//     final lOther$wallet = other.wallet;
//     if (l$wallet != lOther$wallet) {
//       return false;
//     }
//     final l$wallet_limit = wallet_limit;
//     final lOther$wallet_limit = other.wallet_limit;
//     if (l$wallet_limit != lOther$wallet_limit) {
//       return false;
//     }
//     final l$withdrawal = withdrawal;
//     final lOther$withdrawal = other.withdrawal;
//     if (l$withdrawal != lOther$withdrawal) {
//       return false;
//     }
//     final l$created_at = created_at;
//     final lOther$created_at = other.created_at;
//     if (l$created_at != lOther$created_at) {
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
// extension UtilityExtensionMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer
//     on MutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer {
//   CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer<
//           MutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer>
//       get copyWith =>
//           CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer<
//     TRes> {
//   factory CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer(
//     MutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer
//         instance,
//     TRes Function(
//             MutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer)
//         then,
//   ) = _CopyWithImplMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer;
//
//   factory CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer.stub(
//           TRes res) =
//       _CopyWithStubImplMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer;
//
//   TRes call({
//     String? id,
//     String? name,
//     double? wallet,
//     double? wallet_limit,
//     double? withdrawal,
//     String? created_at,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer<
//         TRes>
//     implements
//         CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer<
//             TRes> {
//   _CopyWithImplMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer(
//     this._instance,
//     this._then,
//   );
//
//   final MutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer
//       _instance;
//
//   final TRes Function(
//           MutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer)
//       _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? name = _undefined,
//     Object? wallet = _undefined,
//     Object? wallet_limit = _undefined,
//     Object? withdrawal = _undefined,
//     Object? created_at = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         name: name == _undefined ? _instance.name : (name as String?),
//         wallet: wallet == _undefined ? _instance.wallet : (wallet as double?),
//         wallet_limit: wallet_limit == _undefined
//             ? _instance.wallet_limit
//             : (wallet_limit as double?),
//         withdrawal: withdrawal == _undefined
//             ? _instance.withdrawal
//             : (withdrawal as double?),
//         created_at: created_at == _undefined
//             ? _instance.created_at
//             : (created_at as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer<
//         TRes>
//     implements
//         CopyWithMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer<
//             TRes> {
//   _CopyWithStubImplMutationAddToEmployeeWalletcreateWalletEmployeewalletwalletcustomer(
//       this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? name,
//     double? wallet,
//     double? wallet_limit,
//     double? withdrawal,
//     String? created_at,
//     String? $__typename,
//   }) =>
//       _res;
// }
