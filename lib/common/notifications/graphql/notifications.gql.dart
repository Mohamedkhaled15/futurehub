// import 'dart:async';
// import 'package:flutter/widgets.dart' as widgets;
// import 'package:gql/ast.dart';
// import 'package:graphql/client.dart' as graphql;
// import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
//
// class VariablesQueryNotifications {
//   factory VariablesQueryNotifications({int? page}) =>
//       VariablesQueryNotifications._({
//         if (page != null) r'page': page,
//       });
//
//   VariablesQueryNotifications._(this._$data);
//
//   factory VariablesQueryNotifications.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     if (data.containsKey('page')) {
//       final l$page = data['page'];
//       result$data['page'] = (l$page as int?);
//     }
//     return VariablesQueryNotifications._(result$data);
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
//   CopyWithVariablesQueryNotifications<VariablesQueryNotifications>
//       get copyWith => CopyWithVariablesQueryNotifications(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesQueryNotifications) ||
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
// abstract class CopyWithVariablesQueryNotifications<TRes> {
//   factory CopyWithVariablesQueryNotifications(
//     VariablesQueryNotifications instance,
//     TRes Function(VariablesQueryNotifications) then,
//   ) = _CopyWithImplVariablesQueryNotifications;
//
//   factory CopyWithVariablesQueryNotifications.stub(TRes res) =
//       _CopyWithStubImplVariablesQueryNotifications;
//
//   TRes call({int? page});
// }
//
// class _CopyWithImplVariablesQueryNotifications<TRes>
//     implements CopyWithVariablesQueryNotifications<TRes> {
//   _CopyWithImplVariablesQueryNotifications(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesQueryNotifications _instance;
//
//   final TRes Function(VariablesQueryNotifications) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? page = _undefined}) =>
//       _then(VariablesQueryNotifications._({
//         ..._instance._$data,
//         if (page != _undefined) 'page': (page as int?),
//       }));
// }
//
// class _CopyWithStubImplVariablesQueryNotifications<TRes>
//     implements CopyWithVariablesQueryNotifications<TRes> {
//   _CopyWithStubImplVariablesQueryNotifications(this._res);
//
//   TRes _res;
//
//   call({int? page}) => _res;
// }
//
// class QueryNotifications {
//   QueryNotifications({
//     this.notifications,
//     this.$__typename = 'Query',
//   });
//
//   factory QueryNotifications.fromJson(Map<String, dynamic> json) {
//     final l$notifications = json['notifications'];
//     final l$$__typename = json['__typename'];
//     return QueryNotifications(
//       notifications: l$notifications == null
//           ? null
//           : QueryNotificationsnotifications.fromJson(
//               (l$notifications as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryNotificationsnotifications? notifications;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$notifications = notifications;
//     _resultData['notifications'] = l$notifications?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$notifications = notifications;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$notifications,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryNotifications) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$notifications = notifications;
//     final lOther$notifications = other.notifications;
//     if (l$notifications != lOther$notifications) {
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
// extension UtilityExtensionQueryNotifications on QueryNotifications {
//   CopyWithQueryNotifications<QueryNotifications> get copyWith =>
//       CopyWithQueryNotifications(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryNotifications<TRes> {
//   factory CopyWithQueryNotifications(
//     QueryNotifications instance,
//     TRes Function(QueryNotifications) then,
//   ) = _CopyWithImplQueryNotifications;
//
//   factory CopyWithQueryNotifications.stub(TRes res) =
//       _CopyWithStubImplQueryNotifications;
//
//   TRes call({
//     QueryNotificationsnotifications? notifications,
//     String? $__typename,
//   });
//   CopyWithQueryNotificationsnotifications<TRes> get notifications;
// }
//
// class _CopyWithImplQueryNotifications<TRes>
//     implements CopyWithQueryNotifications<TRes> {
//   _CopyWithImplQueryNotifications(
//     this._instance,
//     this._then,
//   );
//
//   final QueryNotifications _instance;
//
//   final TRes Function(QueryNotifications) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? notifications = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryNotifications(
//         notifications: notifications == _undefined
//             ? _instance.notifications
//             : (notifications as QueryNotificationsnotifications?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryNotificationsnotifications<TRes> get notifications {
//     final local$notifications = _instance.notifications;
//     return local$notifications == null
//         ? CopyWithQueryNotificationsnotifications.stub(_then(_instance))
//         : CopyWithQueryNotificationsnotifications(
//             local$notifications, (e) => call(notifications: e));
//   }
// }
//
// class _CopyWithStubImplQueryNotifications<TRes>
//     implements CopyWithQueryNotifications<TRes> {
//   _CopyWithStubImplQueryNotifications(this._res);
//
//   TRes _res;
//
//   call({
//     QueryNotificationsnotifications? notifications,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryNotificationsnotifications<TRes> get notifications =>
//       CopyWithQueryNotificationsnotifications.stub(_res);
// }
//
// const documentNodeQueryNotifications = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.query,
//     name: NameNode(value: 'Notifications'),
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
//         name: NameNode(value: 'notifications'),
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
//                 name: NameNode(value: 'title'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'message'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'seen'),
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
// QueryNotifications _parserFnQueryNotifications(Map<String, dynamic> data) =>
//     QueryNotifications.fromJson(data);
// typedef OnQueryCompleteQueryNotifications = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   QueryNotifications?,
// );
//
// class OptionsQueryNotifications
//     extends graphql.QueryOptions<QueryNotifications> {
//   OptionsQueryNotifications({
//     String? operationName,
//     VariablesQueryNotifications? variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryNotifications? typedOptimisticResult,
//     Duration? pollInterval,
//     graphql.Context? context,
//     OnQueryCompleteQueryNotifications? onComplete,
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
//                     data == null ? null : _parserFnQueryNotifications(data),
//                   ),
//           onError: onError,
//           document: documentNodeQueryNotifications,
//           parserFn: _parserFnQueryNotifications,
//         );
//
//   final OnQueryCompleteQueryNotifications? onCompleteWithParsed;
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
// class WatchOptionsQueryNotifications
//     extends graphql.WatchQueryOptions<QueryNotifications> {
//   WatchOptionsQueryNotifications({
//     String? operationName,
//     VariablesQueryNotifications? variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryNotifications? typedOptimisticResult,
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
//           document: documentNodeQueryNotifications,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnQueryNotifications,
//         );
// }
//
// class FetchMoreOptionsQueryNotifications extends graphql.FetchMoreOptions {
//   FetchMoreOptionsQueryNotifications({
//     required graphql.UpdateQuery updateQuery,
//     VariablesQueryNotifications? variables,
//   }) : super(
//           updateQuery: updateQuery,
//           variables: variables?.toJson() ?? {},
//           document: documentNodeQueryNotifications,
//         );
// }
//
// extension ClientExtensionQueryNotifications on graphql.GraphQLClient {
//   Future<graphql.QueryResult<QueryNotifications>> queryNotifications(
//           [OptionsQueryNotifications? options]) async =>
//       await this.query(options ?? OptionsQueryNotifications());
//   graphql.ObservableQuery<QueryNotifications> watchQueryNotifications(
//           [WatchOptionsQueryNotifications? options]) =>
//       this.watchQuery(options ?? WatchOptionsQueryNotifications());
//   void writeQueryNotifications({
//     required QueryNotifications data,
//     VariablesQueryNotifications? variables,
//     bool broadcast = true,
//   }) =>
//       this.writeQuery(
//         graphql.Request(
//           operation:
//               graphql.Operation(document: documentNodeQueryNotifications),
//           variables: variables?.toJson() ?? const {},
//         ),
//         data: data.toJson(),
//         broadcast: broadcast,
//       );
//   QueryNotifications? readQueryNotifications({
//     VariablesQueryNotifications? variables,
//     bool optimistic = true,
//   }) {
//     final result = this.readQuery(
//       graphql.Request(
//         operation: graphql.Operation(document: documentNodeQueryNotifications),
//         variables: variables?.toJson() ?? const {},
//       ),
//       optimistic: optimistic,
//     );
//     return result == null ? null : QueryNotifications.fromJson(result);
//   }
// }
//
// graphql_flutter.QueryHookResult<QueryNotifications> useQueryNotifications(
//         [OptionsQueryNotifications? options]) =>
//     graphql_flutter.useQuery(options ?? OptionsQueryNotifications());
// graphql.ObservableQuery<QueryNotifications> useWatchQueryNotifications(
//         [WatchOptionsQueryNotifications? options]) =>
//     graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryNotifications());
//
// class QueryNotificationsWidget
//     extends graphql_flutter.Query<QueryNotifications> {
//   QueryNotificationsWidget({
//     widgets.Key? key,
//     OptionsQueryNotifications? options,
//     required graphql_flutter.QueryBuilder<QueryNotifications> builder,
//   }) : super(
//           key: key,
//           options: options ?? OptionsQueryNotifications(),
//           builder: builder,
//         );
// }
//
// class QueryNotificationsnotifications {
//   QueryNotificationsnotifications({
//     required this.paginatorInfo,
//     required this.data,
//     this.$__typename = 'NotificationPaginator',
//   });
//
//   factory QueryNotificationsnotifications.fromJson(Map<String, dynamic> json) {
//     final l$paginatorInfo = json['paginatorInfo'];
//     final l$data = json['data'];
//     final l$$__typename = json['__typename'];
//     return QueryNotificationsnotifications(
//       paginatorInfo: QueryNotificationsnotificationspaginatorInfo.fromJson(
//           (l$paginatorInfo as Map<String, dynamic>)),
//       data: (l$data as List<dynamic>)
//           .map((e) => QueryNotificationsnotificationsdata.fromJson(
//               (e as Map<String, dynamic>)))
//           .toList(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryNotificationsnotificationspaginatorInfo paginatorInfo;
//
//   final List<QueryNotificationsnotificationsdata> data;
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
//     if (!(other is QueryNotificationsnotifications) ||
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
// extension UtilityExtensionQueryNotificationsnotifications
//     on QueryNotificationsnotifications {
//   CopyWithQueryNotificationsnotifications<QueryNotificationsnotifications>
//       get copyWith => CopyWithQueryNotificationsnotifications(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryNotificationsnotifications<TRes> {
//   factory CopyWithQueryNotificationsnotifications(
//     QueryNotificationsnotifications instance,
//     TRes Function(QueryNotificationsnotifications) then,
//   ) = _CopyWithImplQueryNotificationsnotifications;
//
//   factory CopyWithQueryNotificationsnotifications.stub(TRes res) =
//       _CopyWithStubImplQueryNotificationsnotifications;
//
//   TRes call({
//     QueryNotificationsnotificationspaginatorInfo? paginatorInfo,
//     List<QueryNotificationsnotificationsdata>? data,
//     String? $__typename,
//   });
//   CopyWithQueryNotificationsnotificationspaginatorInfo<TRes> get paginatorInfo;
//   TRes data(
//       Iterable<QueryNotificationsnotificationsdata> Function(
//               Iterable<
//                   CopyWithQueryNotificationsnotificationsdata<
//                       QueryNotificationsnotificationsdata>>)
//           _fn);
// }
//
// class _CopyWithImplQueryNotificationsnotifications<TRes>
//     implements CopyWithQueryNotificationsnotifications<TRes> {
//   _CopyWithImplQueryNotificationsnotifications(
//     this._instance,
//     this._then,
//   );
//
//   final QueryNotificationsnotifications _instance;
//
//   final TRes Function(QueryNotificationsnotifications) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? paginatorInfo = _undefined,
//     Object? data = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryNotificationsnotifications(
//         paginatorInfo: paginatorInfo == _undefined || paginatorInfo == null
//             ? _instance.paginatorInfo
//             : (paginatorInfo as QueryNotificationsnotificationspaginatorInfo),
//         data: data == _undefined || data == null
//             ? _instance.data
//             : (data as List<QueryNotificationsnotificationsdata>),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryNotificationsnotificationspaginatorInfo<TRes> get paginatorInfo {
//     final local$paginatorInfo = _instance.paginatorInfo;
//     return CopyWithQueryNotificationsnotificationspaginatorInfo(
//         local$paginatorInfo, (e) => call(paginatorInfo: e));
//   }
//
//   TRes data(
//           Iterable<QueryNotificationsnotificationsdata> Function(
//                   Iterable<
//                       CopyWithQueryNotificationsnotificationsdata<
//                           QueryNotificationsnotificationsdata>>)
//               _fn) =>
//       call(
//           data: _fn(_instance.data
//               .map((e) => CopyWithQueryNotificationsnotificationsdata(
//                     e,
//                     (i) => i,
//                   ))).toList());
// }
//
// class _CopyWithStubImplQueryNotificationsnotifications<TRes>
//     implements CopyWithQueryNotificationsnotifications<TRes> {
//   _CopyWithStubImplQueryNotificationsnotifications(this._res);
//
//   TRes _res;
//
//   call({
//     QueryNotificationsnotificationspaginatorInfo? paginatorInfo,
//     List<QueryNotificationsnotificationsdata>? data,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryNotificationsnotificationspaginatorInfo<TRes>
//       get paginatorInfo =>
//           CopyWithQueryNotificationsnotificationspaginatorInfo.stub(_res);
//
//   data(_fn) => _res;
// }
//
// class QueryNotificationsnotificationspaginatorInfo {
//   QueryNotificationsnotificationspaginatorInfo({
//     required this.hasMorePages,
//     required this.total,
//     this.$__typename = 'PaginatorInfo',
//   });
//
//   factory QueryNotificationsnotificationspaginatorInfo.fromJson(
//       Map<String, dynamic> json) {
//     final l$hasMorePages = json['hasMorePages'];
//     final l$total = json['total'];
//     final l$$__typename = json['__typename'];
//     return QueryNotificationsnotificationspaginatorInfo(
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
//     if (!(other is QueryNotificationsnotificationspaginatorInfo) ||
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
// extension UtilityExtensionQueryNotificationsnotificationspaginatorInfo
//     on QueryNotificationsnotificationspaginatorInfo {
//   CopyWithQueryNotificationsnotificationspaginatorInfo<
//           QueryNotificationsnotificationspaginatorInfo>
//       get copyWith => CopyWithQueryNotificationsnotificationspaginatorInfo(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryNotificationsnotificationspaginatorInfo<TRes> {
//   factory CopyWithQueryNotificationsnotificationspaginatorInfo(
//     QueryNotificationsnotificationspaginatorInfo instance,
//     TRes Function(QueryNotificationsnotificationspaginatorInfo) then,
//   ) = _CopyWithImplQueryNotificationsnotificationspaginatorInfo;
//
//   factory CopyWithQueryNotificationsnotificationspaginatorInfo.stub(TRes res) =
//       _CopyWithStubImplQueryNotificationsnotificationspaginatorInfo;
//
//   TRes call({
//     bool? hasMorePages,
//     int? total,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryNotificationsnotificationspaginatorInfo<TRes>
//     implements CopyWithQueryNotificationsnotificationspaginatorInfo<TRes> {
//   _CopyWithImplQueryNotificationsnotificationspaginatorInfo(
//     this._instance,
//     this._then,
//   );
//
//   final QueryNotificationsnotificationspaginatorInfo _instance;
//
//   final TRes Function(QueryNotificationsnotificationspaginatorInfo) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? hasMorePages = _undefined,
//     Object? total = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryNotificationsnotificationspaginatorInfo(
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
// class _CopyWithStubImplQueryNotificationsnotificationspaginatorInfo<TRes>
//     implements CopyWithQueryNotificationsnotificationspaginatorInfo<TRes> {
//   _CopyWithStubImplQueryNotificationsnotificationspaginatorInfo(this._res);
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
// class QueryNotificationsnotificationsdata {
//   QueryNotificationsnotificationsdata({
//     required this.id,
//     required this.title,
//     required this.message,
//     this.seen,
//     this.created_at,
//     this.$__typename = 'Notification',
//   });
//
//   factory QueryNotificationsnotificationsdata.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$message = json['message'];
//     final l$seen = json['seen'];
//     final l$created_at = json['created_at'];
//     final l$$__typename = json['__typename'];
//     return QueryNotificationsnotificationsdata(
//       id: (l$id as String),
//       title: (l$title as String),
//       message: (l$message as String),
//       seen: (l$seen as bool?),
//       created_at: (l$created_at as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String title;
//
//   final String message;
//
//   final bool? seen;
//
//   final String? created_at;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$title = title;
//     _resultData['title'] = l$title;
//     final l$message = message;
//     _resultData['message'] = l$message;
//     final l$seen = seen;
//     _resultData['seen'] = l$seen;
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
//     final l$title = title;
//     final l$message = message;
//     final l$seen = seen;
//     final l$created_at = created_at;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$message,
//       l$seen,
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
//     if (!(other is QueryNotificationsnotificationsdata) ||
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
//     final l$message = message;
//     final lOther$message = other.message;
//     if (l$message != lOther$message) {
//       return false;
//     }
//     final l$seen = seen;
//     final lOther$seen = other.seen;
//     if (l$seen != lOther$seen) {
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
// extension UtilityExtensionQueryNotificationsnotificationsdata
//     on QueryNotificationsnotificationsdata {
//   CopyWithQueryNotificationsnotificationsdata<
//           QueryNotificationsnotificationsdata>
//       get copyWith => CopyWithQueryNotificationsnotificationsdata(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryNotificationsnotificationsdata<TRes> {
//   factory CopyWithQueryNotificationsnotificationsdata(
//     QueryNotificationsnotificationsdata instance,
//     TRes Function(QueryNotificationsnotificationsdata) then,
//   ) = _CopyWithImplQueryNotificationsnotificationsdata;
//
//   factory CopyWithQueryNotificationsnotificationsdata.stub(TRes res) =
//       _CopyWithStubImplQueryNotificationsnotificationsdata;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? message,
//     bool? seen,
//     String? created_at,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryNotificationsnotificationsdata<TRes>
//     implements CopyWithQueryNotificationsnotificationsdata<TRes> {
//   _CopyWithImplQueryNotificationsnotificationsdata(
//     this._instance,
//     this._then,
//   );
//
//   final QueryNotificationsnotificationsdata _instance;
//
//   final TRes Function(QueryNotificationsnotificationsdata) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? message = _undefined,
//     Object? seen = _undefined,
//     Object? created_at = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryNotificationsnotificationsdata(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined || title == null
//             ? _instance.title
//             : (title as String),
//         message: message == _undefined || message == null
//             ? _instance.message
//             : (message as String),
//         seen: seen == _undefined ? _instance.seen : (seen as bool?),
//         created_at: created_at == _undefined
//             ? _instance.created_at
//             : (created_at as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryNotificationsnotificationsdata<TRes>
//     implements CopyWithQueryNotificationsnotificationsdata<TRes> {
//   _CopyWithStubImplQueryNotificationsnotificationsdata(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     String? message,
//     bool? seen,
//     String? created_at,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesMutationUpdateFCMToken {
//   factory VariablesMutationUpdateFCMToken({
//     required String fcm_token,
//     required String device_id,
//     required String version,
//     required String platform,
//   }) =>
//       VariablesMutationUpdateFCMToken._({
//         r'fcm_token': fcm_token,
//         r'device_id': device_id,
//         r'version': version,
//         r'platform': platform,
//       });
//
//   VariablesMutationUpdateFCMToken._(this._$data);
//
//   factory VariablesMutationUpdateFCMToken.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$fcm_token = data['fcm_token'];
//     result$data['fcm_token'] = (l$fcm_token as String);
//     final l$device_id = data['device_id'];
//     result$data['device_id'] = (l$device_id as String);
//     final l$version = data['version'];
//     result$data['version'] = (l$version as String);
//     final l$platform = data['platform'];
//     result$data['platform'] = (l$platform as String);
//     return VariablesMutationUpdateFCMToken._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   String get fcm_token => (_$data['fcm_token'] as String);
//
//   String get device_id => (_$data['device_id'] as String);
//
//   String get version => (_$data['version'] as String);
//
//   String get platform => (_$data['platform'] as String);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$fcm_token = fcm_token;
//     result$data['fcm_token'] = l$fcm_token;
//     final l$device_id = device_id;
//     result$data['device_id'] = l$device_id;
//     final l$version = version;
//     result$data['version'] = l$version;
//     final l$platform = platform;
//     result$data['platform'] = l$platform;
//     return result$data;
//   }
//
//   CopyWithVariablesMutationUpdateFCMToken<VariablesMutationUpdateFCMToken>
//       get copyWith => CopyWithVariablesMutationUpdateFCMToken(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationUpdateFCMToken) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$fcm_token = fcm_token;
//     final lOther$fcm_token = other.fcm_token;
//     if (l$fcm_token != lOther$fcm_token) {
//       return false;
//     }
//     final l$device_id = device_id;
//     final lOther$device_id = other.device_id;
//     if (l$device_id != lOther$device_id) {
//       return false;
//     }
//     final l$version = version;
//     final lOther$version = other.version;
//     if (l$version != lOther$version) {
//       return false;
//     }
//     final l$platform = platform;
//     final lOther$platform = other.platform;
//     if (l$platform != lOther$platform) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$fcm_token = fcm_token;
//     final l$device_id = device_id;
//     final l$version = version;
//     final l$platform = platform;
//     return Object.hashAll([
//       l$fcm_token,
//       l$device_id,
//       l$version,
//       l$platform,
//     ]);
//   }
// }
//
// abstract class CopyWithVariablesMutationUpdateFCMToken<TRes> {
//   factory CopyWithVariablesMutationUpdateFCMToken(
//     VariablesMutationUpdateFCMToken instance,
//     TRes Function(VariablesMutationUpdateFCMToken) then,
//   ) = _CopyWithImplVariablesMutationUpdateFCMToken;
//
//   factory CopyWithVariablesMutationUpdateFCMToken.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationUpdateFCMToken;
//
//   TRes call({
//     String? fcm_token,
//     String? device_id,
//     String? version,
//     String? platform,
//   });
// }
//
// class _CopyWithImplVariablesMutationUpdateFCMToken<TRes>
//     implements CopyWithVariablesMutationUpdateFCMToken<TRes> {
//   _CopyWithImplVariablesMutationUpdateFCMToken(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationUpdateFCMToken _instance;
//
//   final TRes Function(VariablesMutationUpdateFCMToken) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? fcm_token = _undefined,
//     Object? device_id = _undefined,
//     Object? version = _undefined,
//     Object? platform = _undefined,
//   }) =>
//       _then(VariablesMutationUpdateFCMToken._({
//         ..._instance._$data,
//         if (fcm_token != _undefined && fcm_token != null)
//           'fcm_token': (fcm_token as String),
//         if (device_id != _undefined && device_id != null)
//           'device_id': (device_id as String),
//         if (version != _undefined && version != null)
//           'version': (version as String),
//         if (platform != _undefined && platform != null)
//           'platform': (platform as String),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationUpdateFCMToken<TRes>
//     implements CopyWithVariablesMutationUpdateFCMToken<TRes> {
//   _CopyWithStubImplVariablesMutationUpdateFCMToken(this._res);
//
//   TRes _res;
//
//   call({
//     String? fcm_token,
//     String? device_id,
//     String? version,
//     String? platform,
//   }) =>
//       _res;
// }
//
// class MutationUpdateFCMToken {
//   MutationUpdateFCMToken({
//     this.updateFCMToken,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationUpdateFCMToken.fromJson(Map<String, dynamic> json) {
//     final l$updateFCMToken = json['updateFCMToken'];
//     final l$$__typename = json['__typename'];
//     return MutationUpdateFCMToken(
//       updateFCMToken: l$updateFCMToken == null
//           ? null
//           : MutationUpdateFCMTokenupdateFCMToken.fromJson(
//               (l$updateFCMToken as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationUpdateFCMTokenupdateFCMToken? updateFCMToken;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$updateFCMToken = updateFCMToken;
//     _resultData['updateFCMToken'] = l$updateFCMToken?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$updateFCMToken = updateFCMToken;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$updateFCMToken,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationUpdateFCMToken) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$updateFCMToken = updateFCMToken;
//     final lOther$updateFCMToken = other.updateFCMToken;
//     if (l$updateFCMToken != lOther$updateFCMToken) {
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
// extension UtilityExtensionMutationUpdateFCMToken on MutationUpdateFCMToken {
//   CopyWithMutationUpdateFCMToken<MutationUpdateFCMToken> get copyWith =>
//       CopyWithMutationUpdateFCMToken(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationUpdateFCMToken<TRes> {
//   factory CopyWithMutationUpdateFCMToken(
//     MutationUpdateFCMToken instance,
//     TRes Function(MutationUpdateFCMToken) then,
//   ) = _CopyWithImplMutationUpdateFCMToken;
//
//   factory CopyWithMutationUpdateFCMToken.stub(TRes res) =
//       _CopyWithStubImplMutationUpdateFCMToken;
//
//   TRes call({
//     MutationUpdateFCMTokenupdateFCMToken? updateFCMToken,
//     String? $__typename,
//   });
//   CopyWithMutationUpdateFCMTokenupdateFCMToken<TRes> get updateFCMToken;
// }
//
// class _CopyWithImplMutationUpdateFCMToken<TRes>
//     implements CopyWithMutationUpdateFCMToken<TRes> {
//   _CopyWithImplMutationUpdateFCMToken(
//     this._instance,
//     this._then,
//   );
//
//   final MutationUpdateFCMToken _instance;
//
//   final TRes Function(MutationUpdateFCMToken) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? updateFCMToken = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationUpdateFCMToken(
//         updateFCMToken: updateFCMToken == _undefined
//             ? _instance.updateFCMToken
//             : (updateFCMToken as MutationUpdateFCMTokenupdateFCMToken?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationUpdateFCMTokenupdateFCMToken<TRes> get updateFCMToken {
//     final local$updateFCMToken = _instance.updateFCMToken;
//     return local$updateFCMToken == null
//         ? CopyWithMutationUpdateFCMTokenupdateFCMToken.stub(_then(_instance))
//         : CopyWithMutationUpdateFCMTokenupdateFCMToken(
//             local$updateFCMToken, (e) => call(updateFCMToken: e));
//   }
// }
//
// class _CopyWithStubImplMutationUpdateFCMToken<TRes>
//     implements CopyWithMutationUpdateFCMToken<TRes> {
//   _CopyWithStubImplMutationUpdateFCMToken(this._res);
//
//   TRes _res;
//
//   call({
//     MutationUpdateFCMTokenupdateFCMToken? updateFCMToken,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationUpdateFCMTokenupdateFCMToken<TRes> get updateFCMToken =>
//       CopyWithMutationUpdateFCMTokenupdateFCMToken.stub(_res);
// }
//
// const documentNodeMutationUpdateFCMToken = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'UpdateFCMToken'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'fcm_token')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'device_id')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'version')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'platform')),
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
//         name: NameNode(value: 'updateFCMToken'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'fcm_token'),
//                 value: VariableNode(name: NameNode(value: 'fcm_token')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'device_id'),
//                 value: VariableNode(name: NameNode(value: 'device_id')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'version'),
//                 value: VariableNode(name: NameNode(value: 'version')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'platform'),
//                 value: VariableNode(name: NameNode(value: 'platform')),
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
// MutationUpdateFCMToken _parserFnMutationUpdateFCMToken(
//         Map<String, dynamic> data) =>
//     MutationUpdateFCMToken.fromJson(data);
// typedef OnMutationCompletedMutationUpdateFCMToken = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationUpdateFCMToken?,
// );
//
// class OptionsMutationUpdateFCMToken
//     extends graphql.MutationOptions<MutationUpdateFCMToken> {
//   OptionsMutationUpdateFCMToken({
//     String? operationName,
//     required VariablesMutationUpdateFCMToken variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationUpdateFCMToken? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationUpdateFCMToken? onCompleted,
//     graphql.OnMutationUpdate<MutationUpdateFCMToken>? update,
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
//                     data == null ? null : _parserFnMutationUpdateFCMToken(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationUpdateFCMToken,
//           parserFn: _parserFnMutationUpdateFCMToken,
//         );
//
//   final OnMutationCompletedMutationUpdateFCMToken? onCompletedWithParsed;
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
// class WatchOptionsMutationUpdateFCMToken
//     extends graphql.WatchQueryOptions<MutationUpdateFCMToken> {
//   WatchOptionsMutationUpdateFCMToken({
//     String? operationName,
//     required VariablesMutationUpdateFCMToken variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationUpdateFCMToken? typedOptimisticResult,
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
//           document: documentNodeMutationUpdateFCMToken,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationUpdateFCMToken,
//         );
// }
//
// extension ClientExtensionMutationUpdateFCMToken on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationUpdateFCMToken>> mutateUpdateFCMToken(
//           OptionsMutationUpdateFCMToken options) async =>
//       await this.mutate(options);
//   graphql.ObservableQuery<MutationUpdateFCMToken> watchMutationUpdateFCMToken(
//           WatchOptionsMutationUpdateFCMToken options) =>
//       this.watchMutation(options);
// }
//
// class MutationUpdateFCMTokenHookResult {
//   MutationUpdateFCMTokenHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationUpdateFCMToken runMutation;
//
//   final graphql.QueryResult<MutationUpdateFCMToken> result;
// }
//
// MutationUpdateFCMTokenHookResult useMutationUpdateFCMToken(
//     [WidgetOptionsMutationUpdateFCMToken? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationUpdateFCMToken());
//   return MutationUpdateFCMTokenHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationUpdateFCMToken> useWatchMutationUpdateFCMToken(
//         WatchOptionsMutationUpdateFCMToken options) =>
//     graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationUpdateFCMToken
//     extends graphql.MutationOptions<MutationUpdateFCMToken> {
//   WidgetOptionsMutationUpdateFCMToken({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationUpdateFCMToken? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationUpdateFCMToken? onCompleted,
//     graphql.OnMutationUpdate<MutationUpdateFCMToken>? update,
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
//                     data == null ? null : _parserFnMutationUpdateFCMToken(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationUpdateFCMToken,
//           parserFn: _parserFnMutationUpdateFCMToken,
//         );
//
//   final OnMutationCompletedMutationUpdateFCMToken? onCompletedWithParsed;
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
// typedef RunMutationMutationUpdateFCMToken
//     = graphql.MultiSourceResult<MutationUpdateFCMToken> Function(
//   VariablesMutationUpdateFCMToken, {
//   Object? optimisticResult,
//   MutationUpdateFCMToken? typedOptimisticResult,
// });
// typedef BuilderMutationUpdateFCMToken = widgets.Widget Function(
//   RunMutationMutationUpdateFCMToken,
//   graphql.QueryResult<MutationUpdateFCMToken>?,
// );
//
// class MutationUpdateFCMTokenWidget
//     extends graphql_flutter.Mutation<MutationUpdateFCMToken> {
//   MutationUpdateFCMTokenWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationUpdateFCMToken? options,
//     required BuilderMutationUpdateFCMToken builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationUpdateFCMToken(),
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
// class MutationUpdateFCMTokenupdateFCMToken {
//   MutationUpdateFCMTokenupdateFCMToken({
//     required this.error,
//     required this.status,
//     this.message,
//     this.$__typename = 'Result',
//   });
//
//   factory MutationUpdateFCMTokenupdateFCMToken.fromJson(
//       Map<String, dynamic> json) {
//     final l$error = json['error'];
//     final l$status = json['status'];
//     final l$message = json['message'];
//     final l$$__typename = json['__typename'];
//     return MutationUpdateFCMTokenupdateFCMToken(
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
//     if (!(other is MutationUpdateFCMTokenupdateFCMToken) ||
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
// extension UtilityExtensionMutationUpdateFCMTokenupdateFCMToken
//     on MutationUpdateFCMTokenupdateFCMToken {
//   CopyWithMutationUpdateFCMTokenupdateFCMToken<
//           MutationUpdateFCMTokenupdateFCMToken>
//       get copyWith => CopyWithMutationUpdateFCMTokenupdateFCMToken(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationUpdateFCMTokenupdateFCMToken<TRes> {
//   factory CopyWithMutationUpdateFCMTokenupdateFCMToken(
//     MutationUpdateFCMTokenupdateFCMToken instance,
//     TRes Function(MutationUpdateFCMTokenupdateFCMToken) then,
//   ) = _CopyWithImplMutationUpdateFCMTokenupdateFCMToken;
//
//   factory CopyWithMutationUpdateFCMTokenupdateFCMToken.stub(TRes res) =
//       _CopyWithStubImplMutationUpdateFCMTokenupdateFCMToken;
//
//   TRes call({
//     int? error,
//     String? status,
//     String? message,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationUpdateFCMTokenupdateFCMToken<TRes>
//     implements CopyWithMutationUpdateFCMTokenupdateFCMToken<TRes> {
//   _CopyWithImplMutationUpdateFCMTokenupdateFCMToken(
//     this._instance,
//     this._then,
//   );
//
//   final MutationUpdateFCMTokenupdateFCMToken _instance;
//
//   final TRes Function(MutationUpdateFCMTokenupdateFCMToken) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? error = _undefined,
//     Object? status = _undefined,
//     Object? message = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationUpdateFCMTokenupdateFCMToken(
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
// class _CopyWithStubImplMutationUpdateFCMTokenupdateFCMToken<TRes>
//     implements CopyWithMutationUpdateFCMTokenupdateFCMToken<TRes> {
//   _CopyWithStubImplMutationUpdateFCMTokenupdateFCMToken(this._res);
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
