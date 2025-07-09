// import '../../graphql/schema.gql.dart';
// import 'dart:async';
// import 'package:flutter/widgets.dart' as widgets;
// import 'package:gql/ast.dart';
// import 'package:graphql/client.dart' as graphql;
// import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
//
// class VariablesQueryWallet {
//   factory VariablesQueryWallet({
//     int? page,
//     int? employee,
//   }) =>
//       VariablesQueryWallet._({
//         if (page != null) r'page': page,
//         if (employee != null) r'employee': employee,
//       });
//
//   VariablesQueryWallet._(this._$data);
//
//   factory VariablesQueryWallet.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     if (data.containsKey('page')) {
//       final l$page = data['page'];
//       result$data['page'] = (l$page as int?);
//     }
//     if (data.containsKey('employee')) {
//       final l$employee = data['employee'];
//       result$data['employee'] = (l$employee as int?);
//     }
//     return VariablesQueryWallet._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   int? get page => (_$data['page'] as int?);
//
//   int? get employee => (_$data['employee'] as int?);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     if (_$data.containsKey('page')) {
//       final l$page = page;
//       result$data['page'] = l$page;
//     }
//     if (_$data.containsKey('employee')) {
//       final l$employee = employee;
//       result$data['employee'] = l$employee;
//     }
//     return result$data;
//   }
//
//   CopyWithVariablesQueryWallet<VariablesQueryWallet> get copyWith =>
//       CopyWithVariablesQueryWallet(
//         this,
//         (i) => i,
//       );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesQueryWallet) || runtimeType != other.runtimeType) {
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
//     final l$employee = employee;
//     final lOther$employee = other.employee;
//     if (_$data.containsKey('employee') !=
//         other._$data.containsKey('employee')) {
//       return false;
//     }
//     if (l$employee != lOther$employee) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$page = page;
//     final l$employee = employee;
//     return Object.hashAll([
//       _$data.containsKey('page') ? l$page : const {},
//       _$data.containsKey('employee') ? l$employee : const {},
//     ]);
//   }
// }
//
// abstract class CopyWithVariablesQueryWallet<TRes> {
//   factory CopyWithVariablesQueryWallet(
//     VariablesQueryWallet instance,
//     TRes Function(VariablesQueryWallet) then,
//   ) = _CopyWithImplVariablesQueryWallet;
//
//   factory CopyWithVariablesQueryWallet.stub(TRes res) =
//       _CopyWithStubImplVariablesQueryWallet;
//
//   TRes call({
//     int? page,
//     int? employee,
//   });
// }
//
// class _CopyWithImplVariablesQueryWallet<TRes>
//     implements CopyWithVariablesQueryWallet<TRes> {
//   _CopyWithImplVariablesQueryWallet(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesQueryWallet _instance;
//
//   final TRes Function(VariablesQueryWallet) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? page = _undefined,
//     Object? employee = _undefined,
//   }) =>
//       _then(VariablesQueryWallet._({
//         ..._instance._$data,
//         if (page != _undefined) 'page': (page as int?),
//         if (employee != _undefined) 'employee': (employee as int?),
//       }));
// }
//
// class _CopyWithStubImplVariablesQueryWallet<TRes>
//     implements CopyWithVariablesQueryWallet<TRes> {
//   _CopyWithStubImplVariablesQueryWallet(this._res);
//
//   TRes _res;
//
//   call({
//     int? page,
//     int? employee,
//   }) =>
//       _res;
// }
//
// class QueryWallet {
//   QueryWallet({
//     this.wallets,
//     this.$__typename = 'Query',
//   });
//
//   factory QueryWallet.fromJson(Map<String, dynamic> json) {
//     final l$wallets = json['wallets'];
//     final l$$__typename = json['__typename'];
//     return QueryWallet(
//       wallets: l$wallets == null
//           ? null
//           : QueryWalletwallets.fromJson((l$wallets as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryWalletwallets? wallets;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$wallets = wallets;
//     _resultData['wallets'] = l$wallets?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$wallets = wallets;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$wallets,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryWallet) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$wallets = wallets;
//     final lOther$wallets = other.wallets;
//     if (l$wallets != lOther$wallets) {
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
// extension UtilityExtensionQueryWallet on QueryWallet {
//   CopyWithQueryWallet<QueryWallet> get copyWith => CopyWithQueryWallet(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryWallet<TRes> {
//   factory CopyWithQueryWallet(
//     QueryWallet instance,
//     TRes Function(QueryWallet) then,
//   ) = _CopyWithImplQueryWallet;
//
//   factory CopyWithQueryWallet.stub(TRes res) = _CopyWithStubImplQueryWallet;
//
//   TRes call({
//     QueryWalletwallets? wallets,
//     String? $__typename,
//   });
//   CopyWithQueryWalletwallets<TRes> get wallets;
// }
//
// class _CopyWithImplQueryWallet<TRes> implements CopyWithQueryWallet<TRes> {
//   _CopyWithImplQueryWallet(
//     this._instance,
//     this._then,
//   );
//
//   final QueryWallet _instance;
//
//   final TRes Function(QueryWallet) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? wallets = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryWallet(
//         wallets: wallets == _undefined
//             ? _instance.wallets
//             : (wallets as QueryWalletwallets?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryWalletwallets<TRes> get wallets {
//     final local$wallets = _instance.wallets;
//     return local$wallets == null
//         ? CopyWithQueryWalletwallets.stub(_then(_instance))
//         : CopyWithQueryWalletwallets(local$wallets, (e) => call(wallets: e));
//   }
// }
//
// class _CopyWithStubImplQueryWallet<TRes> implements CopyWithQueryWallet<TRes> {
//   _CopyWithStubImplQueryWallet(this._res);
//
//   TRes _res;
//
//   call({
//     QueryWalletwallets? wallets,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryWalletwallets<TRes> get wallets =>
//       CopyWithQueryWalletwallets.stub(_res);
// }
//
// const documentNodeQueryWallet = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.query,
//     name: NameNode(value: 'Wallet'),
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
//         variable: VariableNode(name: NameNode(value: 'employee')),
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
//         name: NameNode(value: 'wallets'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'page'),
//             value: VariableNode(name: NameNode(value: 'page')),
//           ),
//           ArgumentNode(
//             name: NameNode(value: 'employee_id'),
//             value: VariableNode(name: NameNode(value: 'employee')),
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
//                 name: NameNode(value: 'lastPage'),
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
//                         name: NameNode(value: 'national_id'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'email'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'mobile'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'birth_date'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'type'),
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
//                         name: NameNode(value: 'deposit'),
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
//                 name: NameNode(value: 'order'),
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
//                     name: NameNode(value: 'user'),
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
//                         name: NameNode(value: 'mobile'),
//                         alias: null,
//                         arguments: [],
//                         directives: [],
//                         selectionSet: null,
//                       ),
//                       FieldNode(
//                         name: NameNode(value: 'email'),
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
//                 name: NameNode(value: 'attachment'),
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
// QueryWallet _parserFnQueryWallet(Map<String, dynamic> data) =>
//     QueryWallet.fromJson(data);
// typedef OnQueryCompleteQueryWallet = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   QueryWallet?,
// );
//
// class OptionsQueryWallet extends graphql.QueryOptions<QueryWallet> {
//   OptionsQueryWallet({
//     String? operationName,
//     VariablesQueryWallet? variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryWallet? typedOptimisticResult,
//     Duration? pollInterval,
//     graphql.Context? context,
//     OnQueryCompleteQueryWallet? onComplete,
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
//                     data == null ? null : _parserFnQueryWallet(data),
//                   ),
//           onError: onError,
//           document: documentNodeQueryWallet,
//           parserFn: _parserFnQueryWallet,
//         );
//
//   final OnQueryCompleteQueryWallet? onCompleteWithParsed;
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
// class WatchOptionsQueryWallet extends graphql.WatchQueryOptions<QueryWallet> {
//   WatchOptionsQueryWallet({
//     String? operationName,
//     VariablesQueryWallet? variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryWallet? typedOptimisticResult,
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
//           document: documentNodeQueryWallet,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnQueryWallet,
//         );
// }
//
// class FetchMoreOptionsQueryWallet extends graphql.FetchMoreOptions {
//   FetchMoreOptionsQueryWallet({
//     required graphql.UpdateQuery updateQuery,
//     VariablesQueryWallet? variables,
//   }) : super(
//           updateQuery: updateQuery,
//           variables: variables?.toJson() ?? {},
//           document: documentNodeQueryWallet,
//         );
// }
//
// extension ClientExtensionQueryWallet on graphql.GraphQLClient {
//   Future<graphql.QueryResult<QueryWallet>> queryWallet(
//           [OptionsQueryWallet? options]) async =>
//       await this.query(options ?? OptionsQueryWallet());
//   graphql.ObservableQuery<QueryWallet> watchQueryWallet(
//           [WatchOptionsQueryWallet? options]) =>
//       this.watchQuery(options ?? WatchOptionsQueryWallet());
//   void writeQueryWallet({
//     required QueryWallet data,
//     VariablesQueryWallet? variables,
//     bool broadcast = true,
//   }) =>
//       this.writeQuery(
//         graphql.Request(
//           operation: graphql.Operation(document: documentNodeQueryWallet),
//           variables: variables?.toJson() ?? const {},
//         ),
//         data: data.toJson(),
//         broadcast: broadcast,
//       );
//   QueryWallet? readQueryWallet({
//     VariablesQueryWallet? variables,
//     bool optimistic = true,
//   }) {
//     final result = this.readQuery(
//       graphql.Request(
//         operation: graphql.Operation(document: documentNodeQueryWallet),
//         variables: variables?.toJson() ?? const {},
//       ),
//       optimistic: optimistic,
//     );
//     return result == null ? null : QueryWallet.fromJson(result);
//   }
// }
//
// graphql_flutter.QueryHookResult<QueryWallet> useQueryWallet(
//         [OptionsQueryWallet? options]) =>
//     graphql_flutter.useQuery(options ?? OptionsQueryWallet());
// graphql.ObservableQuery<QueryWallet> useWatchQueryWallet(
//         [WatchOptionsQueryWallet? options]) =>
//     graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryWallet());
//
// class QueryWalletWidget extends graphql_flutter.Query<QueryWallet> {
//   QueryWalletWidget({
//     widgets.Key? key,
//     OptionsQueryWallet? options,
//     required graphql_flutter.QueryBuilder<QueryWallet> builder,
//   }) : super(
//           key: key,
//           options: options ?? OptionsQueryWallet(),
//           builder: builder,
//         );
// }
//
// class QueryWalletwallets {
//   QueryWalletwallets({
//     required this.paginatorInfo,
//     required this.data,
//     this.$__typename = 'WalletTransactionPaginator',
//   });
//
//   factory QueryWalletwallets.fromJson(Map<String, dynamic> json) {
//     final l$paginatorInfo = json['paginatorInfo'];
//     final l$data = json['data'];
//     final l$$__typename = json['__typename'];
//     return QueryWalletwallets(
//       paginatorInfo: QueryWalletwalletspaginatorInfo.fromJson(
//           (l$paginatorInfo as Map<String, dynamic>)),
//       data: (l$data as List<dynamic>)
//           .map((e) =>
//               QueryWalletwalletsdata.fromJson((e as Map<String, dynamic>)))
//           .toList(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryWalletwalletspaginatorInfo paginatorInfo;
//
//   final List<QueryWalletwalletsdata> data;
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
//     if (!(other is QueryWalletwallets) || runtimeType != other.runtimeType) {
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
// extension UtilityExtensionQueryWalletwallets on QueryWalletwallets {
//   CopyWithQueryWalletwallets<QueryWalletwallets> get copyWith =>
//       CopyWithQueryWalletwallets(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryWalletwallets<TRes> {
//   factory CopyWithQueryWalletwallets(
//     QueryWalletwallets instance,
//     TRes Function(QueryWalletwallets) then,
//   ) = _CopyWithImplQueryWalletwallets;
//
//   factory CopyWithQueryWalletwallets.stub(TRes res) =
//       _CopyWithStubImplQueryWalletwallets;
//
//   TRes call({
//     QueryWalletwalletspaginatorInfo? paginatorInfo,
//     List<QueryWalletwalletsdata>? data,
//     String? $__typename,
//   });
//   CopyWithQueryWalletwalletspaginatorInfo<TRes> get paginatorInfo;
//   TRes data(
//       Iterable<QueryWalletwalletsdata> Function(
//               Iterable<CopyWithQueryWalletwalletsdata<QueryWalletwalletsdata>>)
//           _fn);
// }
//
// class _CopyWithImplQueryWalletwallets<TRes>
//     implements CopyWithQueryWalletwallets<TRes> {
//   _CopyWithImplQueryWalletwallets(
//     this._instance,
//     this._then,
//   );
//
//   final QueryWalletwallets _instance;
//
//   final TRes Function(QueryWalletwallets) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? paginatorInfo = _undefined,
//     Object? data = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryWalletwallets(
//         paginatorInfo: paginatorInfo == _undefined || paginatorInfo == null
//             ? _instance.paginatorInfo
//             : (paginatorInfo as QueryWalletwalletspaginatorInfo),
//         data: data == _undefined || data == null
//             ? _instance.data
//             : (data as List<QueryWalletwalletsdata>),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryWalletwalletspaginatorInfo<TRes> get paginatorInfo {
//     final local$paginatorInfo = _instance.paginatorInfo;
//     return CopyWithQueryWalletwalletspaginatorInfo(
//         local$paginatorInfo, (e) => call(paginatorInfo: e));
//   }
//
//   TRes data(
//           Iterable<QueryWalletwalletsdata> Function(
//                   Iterable<
//                       CopyWithQueryWalletwalletsdata<QueryWalletwalletsdata>>)
//               _fn) =>
//       call(
//           data: _fn(_instance.data.map((e) => CopyWithQueryWalletwalletsdata(
//                 e,
//                 (i) => i,
//               ))).toList());
// }
//
// class _CopyWithStubImplQueryWalletwallets<TRes>
//     implements CopyWithQueryWalletwallets<TRes> {
//   _CopyWithStubImplQueryWalletwallets(this._res);
//
//   TRes _res;
//
//   call({
//     QueryWalletwalletspaginatorInfo? paginatorInfo,
//     List<QueryWalletwalletsdata>? data,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryWalletwalletspaginatorInfo<TRes> get paginatorInfo =>
//       CopyWithQueryWalletwalletspaginatorInfo.stub(_res);
//
//   data(_fn) => _res;
// }
//
// class QueryWalletwalletspaginatorInfo {
//   QueryWalletwalletspaginatorInfo({
//     required this.count,
//     required this.currentPage,
//     required this.hasMorePages,
//     required this.total,
//     required this.lastPage,
//     this.$__typename = 'PaginatorInfo',
//   });
//
//   factory QueryWalletwalletspaginatorInfo.fromJson(Map<String, dynamic> json) {
//     final l$count = json['count'];
//     final l$currentPage = json['currentPage'];
//     final l$hasMorePages = json['hasMorePages'];
//     final l$total = json['total'];
//     final l$lastPage = json['lastPage'];
//     final l$$__typename = json['__typename'];
//     return QueryWalletwalletspaginatorInfo(
//       count: (l$count as int),
//       currentPage: (l$currentPage as int),
//       hasMorePages: (l$hasMorePages as bool),
//       total: (l$total as int),
//       lastPage: (l$lastPage as int),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final int count;
//
//   final int currentPage;
//
//   final bool hasMorePages;
//
//   final int total;
//
//   final int lastPage;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$count = count;
//     _resultData['count'] = l$count;
//     final l$currentPage = currentPage;
//     _resultData['currentPage'] = l$currentPage;
//     final l$hasMorePages = hasMorePages;
//     _resultData['hasMorePages'] = l$hasMorePages;
//     final l$total = total;
//     _resultData['total'] = l$total;
//     final l$lastPage = lastPage;
//     _resultData['lastPage'] = l$lastPage;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$count = count;
//     final l$currentPage = currentPage;
//     final l$hasMorePages = hasMorePages;
//     final l$total = total;
//     final l$lastPage = lastPage;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$count,
//       l$currentPage,
//       l$hasMorePages,
//       l$total,
//       l$lastPage,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryWalletwalletspaginatorInfo) ||
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
//     final l$lastPage = lastPage;
//     final lOther$lastPage = other.lastPage;
//     if (l$lastPage != lOther$lastPage) {
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
// extension UtilityExtensionQueryWalletwalletspaginatorInfo
//     on QueryWalletwalletspaginatorInfo {
//   CopyWithQueryWalletwalletspaginatorInfo<QueryWalletwalletspaginatorInfo>
//       get copyWith => CopyWithQueryWalletwalletspaginatorInfo(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryWalletwalletspaginatorInfo<TRes> {
//   factory CopyWithQueryWalletwalletspaginatorInfo(
//     QueryWalletwalletspaginatorInfo instance,
//     TRes Function(QueryWalletwalletspaginatorInfo) then,
//   ) = _CopyWithImplQueryWalletwalletspaginatorInfo;
//
//   factory CopyWithQueryWalletwalletspaginatorInfo.stub(TRes res) =
//       _CopyWithStubImplQueryWalletwalletspaginatorInfo;
//
//   TRes call({
//     int? count,
//     int? currentPage,
//     bool? hasMorePages,
//     int? total,
//     int? lastPage,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryWalletwalletspaginatorInfo<TRes>
//     implements CopyWithQueryWalletwalletspaginatorInfo<TRes> {
//   _CopyWithImplQueryWalletwalletspaginatorInfo(
//     this._instance,
//     this._then,
//   );
//
//   final QueryWalletwalletspaginatorInfo _instance;
//
//   final TRes Function(QueryWalletwalletspaginatorInfo) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? count = _undefined,
//     Object? currentPage = _undefined,
//     Object? hasMorePages = _undefined,
//     Object? total = _undefined,
//     Object? lastPage = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryWalletwalletspaginatorInfo(
//         count: count == _undefined || count == null
//             ? _instance.count
//             : (count as int),
//         currentPage: currentPage == _undefined || currentPage == null
//             ? _instance.currentPage
//             : (currentPage as int),
//         hasMorePages: hasMorePages == _undefined || hasMorePages == null
//             ? _instance.hasMorePages
//             : (hasMorePages as bool),
//         total: total == _undefined || total == null
//             ? _instance.total
//             : (total as int),
//         lastPage: lastPage == _undefined || lastPage == null
//             ? _instance.lastPage
//             : (lastPage as int),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryWalletwalletspaginatorInfo<TRes>
//     implements CopyWithQueryWalletwalletspaginatorInfo<TRes> {
//   _CopyWithStubImplQueryWalletwalletspaginatorInfo(this._res);
//
//   TRes _res;
//
//   call({
//     int? count,
//     int? currentPage,
//     bool? hasMorePages,
//     int? total,
//     int? lastPage,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryWalletwalletsdata {
//   QueryWalletwalletsdata({
//     required this.id,
//     this.title,
//     this.wallet,
//     this.transaction_number,
//     this.amount,
//     this.status,
//     this.payment_method,
//     this.order,
//     this.description,
//     this.type,
//     this.attachment,
//     this.created_at,
//     this.$__typename = 'WalletTransaction',
//   });
//
//   factory QueryWalletwalletsdata.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$wallet = json['wallet'];
//     final l$transaction_number = json['transaction_number'];
//     final l$amount = json['amount'];
//     final l$status = json['status'];
//     final l$payment_method = json['payment_method'];
//     final l$order = json['order'];
//     final l$description = json['description'];
//     final l$type = json['type'];
//     final l$attachment = json['attachment'];
//     final l$created_at = json['created_at'];
//     final l$$__typename = json['__typename'];
//     return QueryWalletwalletsdata(
//       id: (l$id as String),
//       title: (l$title as String?),
//       wallet: l$wallet == null
//           ? null
//           : QueryWalletwalletsdatawallet.fromJson(
//               (l$wallet as Map<String, dynamic>)),
//       transaction_number: (l$transaction_number as String?),
//       amount: (l$amount as String?),
//       status: (l$status as String?),
//       payment_method: (l$payment_method as String?),
//       order: l$order == null
//           ? null
//           : QueryWalletwalletsdataorder.fromJson(
//               (l$order as Map<String, dynamic>)),
//       description: (l$description as String?),
//       type: (l$type as String?),
//       attachment: (l$attachment as String?),
//       created_at: (l$created_at as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String? title;
//
//   final QueryWalletwalletsdatawallet? wallet;
//
//   final String? transaction_number;
//
//   final String? amount;
//
//   final String? status;
//
//   final String? payment_method;
//
//   final QueryWalletwalletsdataorder? order;
//
//   final String? description;
//
//   final String? type;
//
//   final String? attachment;
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
//     final l$order = order;
//     _resultData['order'] = l$order?.toJson();
//     final l$description = description;
//     _resultData['description'] = l$description;
//     final l$type = type;
//     _resultData['type'] = l$type;
//     final l$attachment = attachment;
//     _resultData['attachment'] = l$attachment;
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
//     final l$wallet = wallet;
//     final l$transaction_number = transaction_number;
//     final l$amount = amount;
//     final l$status = status;
//     final l$payment_method = payment_method;
//     final l$order = order;
//     final l$description = description;
//     final l$type = type;
//     final l$attachment = attachment;
//     final l$created_at = created_at;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$wallet,
//       l$transaction_number,
//       l$amount,
//       l$status,
//       l$payment_method,
//       l$order,
//       l$description,
//       l$type,
//       l$attachment,
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
//     if (!(other is QueryWalletwalletsdata) ||
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
//     final l$order = order;
//     final lOther$order = other.order;
//     if (l$order != lOther$order) {
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
//     final l$attachment = attachment;
//     final lOther$attachment = other.attachment;
//     if (l$attachment != lOther$attachment) {
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
// extension UtilityExtensionQueryWalletwalletsdata on QueryWalletwalletsdata {
//   CopyWithQueryWalletwalletsdata<QueryWalletwalletsdata> get copyWith =>
//       CopyWithQueryWalletwalletsdata(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryWalletwalletsdata<TRes> {
//   factory CopyWithQueryWalletwalletsdata(
//     QueryWalletwalletsdata instance,
//     TRes Function(QueryWalletwalletsdata) then,
//   ) = _CopyWithImplQueryWalletwalletsdata;
//
//   factory CopyWithQueryWalletwalletsdata.stub(TRes res) =
//       _CopyWithStubImplQueryWalletwalletsdata;
//
//   TRes call({
//     String? id,
//     String? title,
//     QueryWalletwalletsdatawallet? wallet,
//     String? transaction_number,
//     String? amount,
//     String? status,
//     String? payment_method,
//     QueryWalletwalletsdataorder? order,
//     String? description,
//     String? type,
//     String? attachment,
//     String? created_at,
//     String? $__typename,
//   });
//   CopyWithQueryWalletwalletsdatawallet<TRes> get wallet;
//   CopyWithQueryWalletwalletsdataorder<TRes> get order;
// }
//
// class _CopyWithImplQueryWalletwalletsdata<TRes>
//     implements CopyWithQueryWalletwalletsdata<TRes> {
//   _CopyWithImplQueryWalletwalletsdata(
//     this._instance,
//     this._then,
//   );
//
//   final QueryWalletwalletsdata _instance;
//
//   final TRes Function(QueryWalletwalletsdata) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? wallet = _undefined,
//     Object? transaction_number = _undefined,
//     Object? amount = _undefined,
//     Object? status = _undefined,
//     Object? payment_method = _undefined,
//     Object? order = _undefined,
//     Object? description = _undefined,
//     Object? type = _undefined,
//     Object? attachment = _undefined,
//     Object? created_at = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryWalletwalletsdata(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined ? _instance.title : (title as String?),
//         wallet: wallet == _undefined
//             ? _instance.wallet
//             : (wallet as QueryWalletwalletsdatawallet?),
//         transaction_number: transaction_number == _undefined
//             ? _instance.transaction_number
//             : (transaction_number as String?),
//         amount: amount == _undefined ? _instance.amount : (amount as String?),
//         status: status == _undefined ? _instance.status : (status as String?),
//         payment_method: payment_method == _undefined
//             ? _instance.payment_method
//             : (payment_method as String?),
//         order: order == _undefined
//             ? _instance.order
//             : (order as QueryWalletwalletsdataorder?),
//         description: description == _undefined
//             ? _instance.description
//             : (description as String?),
//         type: type == _undefined ? _instance.type : (type as String?),
//         attachment: attachment == _undefined
//             ? _instance.attachment
//             : (attachment as String?),
//         created_at: created_at == _undefined
//             ? _instance.created_at
//             : (created_at as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryWalletwalletsdatawallet<TRes> get wallet {
//     final local$wallet = _instance.wallet;
//     return local$wallet == null
//         ? CopyWithQueryWalletwalletsdatawallet.stub(_then(_instance))
//         : CopyWithQueryWalletwalletsdatawallet(
//             local$wallet, (e) => call(wallet: e));
//   }
//
//   CopyWithQueryWalletwalletsdataorder<TRes> get order {
//     final local$order = _instance.order;
//     return local$order == null
//         ? CopyWithQueryWalletwalletsdataorder.stub(_then(_instance))
//         : CopyWithQueryWalletwalletsdataorder(
//             local$order, (e) => call(order: e));
//   }
// }
//
// class _CopyWithStubImplQueryWalletwalletsdata<TRes>
//     implements CopyWithQueryWalletwalletsdata<TRes> {
//   _CopyWithStubImplQueryWalletwalletsdata(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     QueryWalletwalletsdatawallet? wallet,
//     String? transaction_number,
//     String? amount,
//     String? status,
//     String? payment_method,
//     QueryWalletwalletsdataorder? order,
//     String? description,
//     String? type,
//     String? attachment,
//     String? created_at,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryWalletwalletsdatawallet<TRes> get wallet =>
//       CopyWithQueryWalletwalletsdatawallet.stub(_res);
//
//   CopyWithQueryWalletwalletsdataorder<TRes> get order =>
//       CopyWithQueryWalletwalletsdataorder.stub(_res);
// }
//
// class QueryWalletwalletsdatawallet {
//   QueryWalletwalletsdatawallet({
//     this.customer,
//     this.$__typename = 'Wallet',
//   });
//
//   factory QueryWalletwalletsdatawallet.fromJson(Map<String, dynamic> json) {
//     final l$customer = json['customer'];
//     final l$$__typename = json['__typename'];
//     return QueryWalletwalletsdatawallet(
//       customer: l$customer == null
//           ? null
//           : QueryWalletwalletsdatawalletcustomer.fromJson(
//               (l$customer as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryWalletwalletsdatawalletcustomer? customer;
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
//     if (!(other is QueryWalletwalletsdatawallet) ||
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
// extension UtilityExtensionQueryWalletwalletsdatawallet
//     on QueryWalletwalletsdatawallet {
//   CopyWithQueryWalletwalletsdatawallet<QueryWalletwalletsdatawallet>
//       get copyWith => CopyWithQueryWalletwalletsdatawallet(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryWalletwalletsdatawallet<TRes> {
//   factory CopyWithQueryWalletwalletsdatawallet(
//     QueryWalletwalletsdatawallet instance,
//     TRes Function(QueryWalletwalletsdatawallet) then,
//   ) = _CopyWithImplQueryWalletwalletsdatawallet;
//
//   factory CopyWithQueryWalletwalletsdatawallet.stub(TRes res) =
//       _CopyWithStubImplQueryWalletwalletsdatawallet;
//
//   TRes call({
//     QueryWalletwalletsdatawalletcustomer? customer,
//     String? $__typename,
//   });
//   CopyWithQueryWalletwalletsdatawalletcustomer<TRes> get customer;
// }
//
// class _CopyWithImplQueryWalletwalletsdatawallet<TRes>
//     implements CopyWithQueryWalletwalletsdatawallet<TRes> {
//   _CopyWithImplQueryWalletwalletsdatawallet(
//     this._instance,
//     this._then,
//   );
//
//   final QueryWalletwalletsdatawallet _instance;
//
//   final TRes Function(QueryWalletwalletsdatawallet) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? customer = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryWalletwalletsdatawallet(
//         customer: customer == _undefined
//             ? _instance.customer
//             : (customer as QueryWalletwalletsdatawalletcustomer?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryWalletwalletsdatawalletcustomer<TRes> get customer {
//     final local$customer = _instance.customer;
//     return local$customer == null
//         ? CopyWithQueryWalletwalletsdatawalletcustomer.stub(_then(_instance))
//         : CopyWithQueryWalletwalletsdatawalletcustomer(
//             local$customer, (e) => call(customer: e));
//   }
// }
//
// class _CopyWithStubImplQueryWalletwalletsdatawallet<TRes>
//     implements CopyWithQueryWalletwalletsdatawallet<TRes> {
//   _CopyWithStubImplQueryWalletwalletsdatawallet(this._res);
//
//   TRes _res;
//
//   call({
//     QueryWalletwalletsdatawalletcustomer? customer,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryWalletwalletsdatawalletcustomer<TRes> get customer =>
//       CopyWithQueryWalletwalletsdatawalletcustomer.stub(_res);
// }
//
// class QueryWalletwalletsdatawalletcustomer {
//   QueryWalletwalletsdatawalletcustomer({
//     required this.id,
//     this.name,
//     this.national_id,
//     this.email,
//     this.mobile,
//     this.birth_date,
//     this.type,
//     this.wallet_limit,
//     this.withdrawal,
//     this.deposit,
//     this.wallet,
//     this.$__typename = 'User',
//   });
//
//   factory QueryWalletwalletsdatawalletcustomer.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$national_id = json['national_id'];
//     final l$email = json['email'];
//     final l$mobile = json['mobile'];
//     final l$birth_date = json['birth_date'];
//     final l$type = json['type'];
//     final l$wallet_limit = json['wallet_limit'];
//     final l$withdrawal = json['withdrawal'];
//     final l$deposit = json['deposit'];
//     final l$wallet = json['wallet'];
//     final l$$__typename = json['__typename'];
//     return QueryWalletwalletsdatawalletcustomer(
//       id: (l$id as String),
//       name: (l$name as String?),
//       national_id: (l$national_id as String?),
//       email: (l$email as String?),
//       mobile: (l$mobile as String?),
//       birth_date: (l$birth_date as String?),
//       type: (l$type as String?),
//       wallet_limit: (l$wallet_limit as num?)?.toDouble(),
//       withdrawal: (l$withdrawal as num?)?.toDouble(),
//       deposit: (l$deposit as num?)?.toDouble(),
//       wallet: (l$wallet as num?)?.toDouble(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String? name;
//
//   final String? national_id;
//
//   final String? email;
//
//   final String? mobile;
//
//   final String? birth_date;
//
//   final String? type;
//
//   final double? wallet_limit;
//
//   final double? withdrawal;
//
//   final double? deposit;
//
//   final double? wallet;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$name = name;
//     _resultData['name'] = l$name;
//     final l$national_id = national_id;
//     _resultData['national_id'] = l$national_id;
//     final l$email = email;
//     _resultData['email'] = l$email;
//     final l$mobile = mobile;
//     _resultData['mobile'] = l$mobile;
//     final l$birth_date = birth_date;
//     _resultData['birth_date'] = l$birth_date;
//     final l$type = type;
//     _resultData['type'] = l$type;
//     final l$wallet_limit = wallet_limit;
//     _resultData['wallet_limit'] = l$wallet_limit;
//     final l$withdrawal = withdrawal;
//     _resultData['withdrawal'] = l$withdrawal;
//     final l$deposit = deposit;
//     _resultData['deposit'] = l$deposit;
//     final l$wallet = wallet;
//     _resultData['wallet'] = l$wallet;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$name = name;
//     final l$national_id = national_id;
//     final l$email = email;
//     final l$mobile = mobile;
//     final l$birth_date = birth_date;
//     final l$type = type;
//     final l$wallet_limit = wallet_limit;
//     final l$withdrawal = withdrawal;
//     final l$deposit = deposit;
//     final l$wallet = wallet;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$name,
//       l$national_id,
//       l$email,
//       l$mobile,
//       l$birth_date,
//       l$type,
//       l$wallet_limit,
//       l$withdrawal,
//       l$deposit,
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
//     if (!(other is QueryWalletwalletsdatawalletcustomer) ||
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
//     final l$national_id = national_id;
//     final lOther$national_id = other.national_id;
//     if (l$national_id != lOther$national_id) {
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
//     final l$birth_date = birth_date;
//     final lOther$birth_date = other.birth_date;
//     if (l$birth_date != lOther$birth_date) {
//       return false;
//     }
//     final l$type = type;
//     final lOther$type = other.type;
//     if (l$type != lOther$type) {
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
//     final l$deposit = deposit;
//     final lOther$deposit = other.deposit;
//     if (l$deposit != lOther$deposit) {
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
// extension UtilityExtensionQueryWalletwalletsdatawalletcustomer
//     on QueryWalletwalletsdatawalletcustomer {
//   CopyWithQueryWalletwalletsdatawalletcustomer<
//           QueryWalletwalletsdatawalletcustomer>
//       get copyWith => CopyWithQueryWalletwalletsdatawalletcustomer(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryWalletwalletsdatawalletcustomer<TRes> {
//   factory CopyWithQueryWalletwalletsdatawalletcustomer(
//     QueryWalletwalletsdatawalletcustomer instance,
//     TRes Function(QueryWalletwalletsdatawalletcustomer) then,
//   ) = _CopyWithImplQueryWalletwalletsdatawalletcustomer;
//
//   factory CopyWithQueryWalletwalletsdatawalletcustomer.stub(TRes res) =
//       _CopyWithStubImplQueryWalletwalletsdatawalletcustomer;
//
//   TRes call({
//     String? id,
//     String? name,
//     String? national_id,
//     String? email,
//     String? mobile,
//     String? birth_date,
//     String? type,
//     double? wallet_limit,
//     double? withdrawal,
//     double? deposit,
//     double? wallet,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryWalletwalletsdatawalletcustomer<TRes>
//     implements CopyWithQueryWalletwalletsdatawalletcustomer<TRes> {
//   _CopyWithImplQueryWalletwalletsdatawalletcustomer(
//     this._instance,
//     this._then,
//   );
//
//   final QueryWalletwalletsdatawalletcustomer _instance;
//
//   final TRes Function(QueryWalletwalletsdatawalletcustomer) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? name = _undefined,
//     Object? national_id = _undefined,
//     Object? email = _undefined,
//     Object? mobile = _undefined,
//     Object? birth_date = _undefined,
//     Object? type = _undefined,
//     Object? wallet_limit = _undefined,
//     Object? withdrawal = _undefined,
//     Object? deposit = _undefined,
//     Object? wallet = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryWalletwalletsdatawalletcustomer(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         name: name == _undefined ? _instance.name : (name as String?),
//         national_id: national_id == _undefined
//             ? _instance.national_id
//             : (national_id as String?),
//         email: email == _undefined ? _instance.email : (email as String?),
//         mobile: mobile == _undefined ? _instance.mobile : (mobile as String?),
//         birth_date: birth_date == _undefined
//             ? _instance.birth_date
//             : (birth_date as String?),
//         type: type == _undefined ? _instance.type : (type as String?),
//         wallet_limit: wallet_limit == _undefined
//             ? _instance.wallet_limit
//             : (wallet_limit as double?),
//         withdrawal: withdrawal == _undefined
//             ? _instance.withdrawal
//             : (withdrawal as double?),
//         deposit:
//             deposit == _undefined ? _instance.deposit : (deposit as double?),
//         wallet: wallet == _undefined ? _instance.wallet : (wallet as double?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryWalletwalletsdatawalletcustomer<TRes>
//     implements CopyWithQueryWalletwalletsdatawalletcustomer<TRes> {
//   _CopyWithStubImplQueryWalletwalletsdatawalletcustomer(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? name,
//     String? national_id,
//     String? email,
//     String? mobile,
//     String? birth_date,
//     String? type,
//     double? wallet_limit,
//     double? withdrawal,
//     double? deposit,
//     double? wallet,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryWalletwalletsdataorder {
//   QueryWalletwalletsdataorder({
//     required this.id,
//     this.user,
//     this.$__typename = 'Order',
//   });
//
//   factory QueryWalletwalletsdataorder.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$user = json['user'];
//     final l$$__typename = json['__typename'];
//     return QueryWalletwalletsdataorder(
//       id: (l$id as String),
//       user: l$user == null
//           ? null
//           : QueryWalletwalletsdataorderuser.fromJson(
//               (l$user as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final QueryWalletwalletsdataorderuser? user;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$user = user;
//     _resultData['user'] = l$user?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$user = user;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
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
//     if (!(other is QueryWalletwalletsdataorder) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
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
// extension UtilityExtensionQueryWalletwalletsdataorder
//     on QueryWalletwalletsdataorder {
//   CopyWithQueryWalletwalletsdataorder<QueryWalletwalletsdataorder>
//       get copyWith => CopyWithQueryWalletwalletsdataorder(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryWalletwalletsdataorder<TRes> {
//   factory CopyWithQueryWalletwalletsdataorder(
//     QueryWalletwalletsdataorder instance,
//     TRes Function(QueryWalletwalletsdataorder) then,
//   ) = _CopyWithImplQueryWalletwalletsdataorder;
//
//   factory CopyWithQueryWalletwalletsdataorder.stub(TRes res) =
//       _CopyWithStubImplQueryWalletwalletsdataorder;
//
//   TRes call({
//     String? id,
//     QueryWalletwalletsdataorderuser? user,
//     String? $__typename,
//   });
//   CopyWithQueryWalletwalletsdataorderuser<TRes> get user;
// }
//
// class _CopyWithImplQueryWalletwalletsdataorder<TRes>
//     implements CopyWithQueryWalletwalletsdataorder<TRes> {
//   _CopyWithImplQueryWalletwalletsdataorder(
//     this._instance,
//     this._then,
//   );
//
//   final QueryWalletwalletsdataorder _instance;
//
//   final TRes Function(QueryWalletwalletsdataorder) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? user = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryWalletwalletsdataorder(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         user: user == _undefined
//             ? _instance.user
//             : (user as QueryWalletwalletsdataorderuser?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryWalletwalletsdataorderuser<TRes> get user {
//     final local$user = _instance.user;
//     return local$user == null
//         ? CopyWithQueryWalletwalletsdataorderuser.stub(_then(_instance))
//         : CopyWithQueryWalletwalletsdataorderuser(
//             local$user, (e) => call(user: e));
//   }
// }
//
// class _CopyWithStubImplQueryWalletwalletsdataorder<TRes>
//     implements CopyWithQueryWalletwalletsdataorder<TRes> {
//   _CopyWithStubImplQueryWalletwalletsdataorder(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     QueryWalletwalletsdataorderuser? user,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryWalletwalletsdataorderuser<TRes> get user =>
//       CopyWithQueryWalletwalletsdataorderuser.stub(_res);
// }
//
// class QueryWalletwalletsdataorderuser {
//   QueryWalletwalletsdataorderuser({
//     required this.id,
//     this.name,
//     this.mobile,
//     this.email,
//     this.$__typename = 'User',
//   });
//
//   factory QueryWalletwalletsdataorderuser.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$mobile = json['mobile'];
//     final l$email = json['email'];
//     final l$$__typename = json['__typename'];
//     return QueryWalletwalletsdataorderuser(
//       id: (l$id as String),
//       name: (l$name as String?),
//       mobile: (l$mobile as String?),
//       email: (l$email as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String? name;
//
//   final String? mobile;
//
//   final String? email;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$name = name;
//     _resultData['name'] = l$name;
//     final l$mobile = mobile;
//     _resultData['mobile'] = l$mobile;
//     final l$email = email;
//     _resultData['email'] = l$email;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$name = name;
//     final l$mobile = mobile;
//     final l$email = email;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$name,
//       l$mobile,
//       l$email,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryWalletwalletsdataorderuser) ||
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
//     final l$mobile = mobile;
//     final lOther$mobile = other.mobile;
//     if (l$mobile != lOther$mobile) {
//       return false;
//     }
//     final l$email = email;
//     final lOther$email = other.email;
//     if (l$email != lOther$email) {
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
// extension UtilityExtensionQueryWalletwalletsdataorderuser
//     on QueryWalletwalletsdataorderuser {
//   CopyWithQueryWalletwalletsdataorderuser<QueryWalletwalletsdataorderuser>
//       get copyWith => CopyWithQueryWalletwalletsdataorderuser(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryWalletwalletsdataorderuser<TRes> {
//   factory CopyWithQueryWalletwalletsdataorderuser(
//     QueryWalletwalletsdataorderuser instance,
//     TRes Function(QueryWalletwalletsdataorderuser) then,
//   ) = _CopyWithImplQueryWalletwalletsdataorderuser;
//
//   factory CopyWithQueryWalletwalletsdataorderuser.stub(TRes res) =
//       _CopyWithStubImplQueryWalletwalletsdataorderuser;
//
//   TRes call({
//     String? id,
//     String? name,
//     String? mobile,
//     String? email,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryWalletwalletsdataorderuser<TRes>
//     implements CopyWithQueryWalletwalletsdataorderuser<TRes> {
//   _CopyWithImplQueryWalletwalletsdataorderuser(
//     this._instance,
//     this._then,
//   );
//
//   final QueryWalletwalletsdataorderuser _instance;
//
//   final TRes Function(QueryWalletwalletsdataorderuser) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? name = _undefined,
//     Object? mobile = _undefined,
//     Object? email = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryWalletwalletsdataorderuser(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         name: name == _undefined ? _instance.name : (name as String?),
//         mobile: mobile == _undefined ? _instance.mobile : (mobile as String?),
//         email: email == _undefined ? _instance.email : (email as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryWalletwalletsdataorderuser<TRes>
//     implements CopyWithQueryWalletwalletsdataorderuser<TRes> {
//   _CopyWithStubImplQueryWalletwalletsdataorderuser(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? name,
//     String? mobile,
//     String? email,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesMutationDepositToCompanyWallet {
//   factory VariablesMutationDepositToCompanyWallet({
//     String? title,
//     required double amount,
//     EnumPaymentMethod? payment_method,
//     String? attachment,
//   }) =>
//       VariablesMutationDepositToCompanyWallet._({
//         if (title != null) r'title': title,
//         r'amount': amount,
//         if (payment_method != null) r'payment_method': payment_method,
//         if (attachment != null) r'attachment': attachment,
//       });
//
//   VariablesMutationDepositToCompanyWallet._(this._$data);
//
//   factory VariablesMutationDepositToCompanyWallet.fromJson(
//       Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     if (data.containsKey('title')) {
//       final l$title = data['title'];
//       result$data['title'] = (l$title as String?);
//     }
//     final l$amount = data['amount'];
//     result$data['amount'] = (l$amount as num).toDouble();
//     if (data.containsKey('payment_method')) {
//       final l$payment_method = data['payment_method'];
//       result$data['payment_method'] = l$payment_method == null
//           ? null
//           : fromJsonEnumPaymentMethod((l$payment_method as String));
//     }
//     if (data.containsKey('attachment')) {
//       final l$attachment = data['attachment'];
//       result$data['attachment'] = (l$attachment as String?);
//     }
//     return VariablesMutationDepositToCompanyWallet._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   String? get title => (_$data['title'] as String?);
//
//   double get amount => (_$data['amount'] as double);
//
//   EnumPaymentMethod? get payment_method =>
//       (_$data['payment_method'] as EnumPaymentMethod?);
//
//   String? get attachment => (_$data['attachment'] as String?);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     if (_$data.containsKey('title')) {
//       final l$title = title;
//       result$data['title'] = l$title;
//     }
//     final l$amount = amount;
//     result$data['amount'] = l$amount;
//     if (_$data.containsKey('payment_method')) {
//       final l$payment_method = payment_method;
//       result$data['payment_method'] = l$payment_method == null
//           ? null
//           : toJsonEnumPaymentMethod(l$payment_method);
//     }
//     if (_$data.containsKey('attachment')) {
//       final l$attachment = attachment;
//       result$data['attachment'] = l$attachment;
//     }
//     return result$data;
//   }
//
//   CopyWithVariablesMutationDepositToCompanyWallet<
//           VariablesMutationDepositToCompanyWallet>
//       get copyWith => CopyWithVariablesMutationDepositToCompanyWallet(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationDepositToCompanyWallet) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$title = title;
//     final lOther$title = other.title;
//     if (_$data.containsKey('title') != other._$data.containsKey('title')) {
//       return false;
//     }
//     if (l$title != lOther$title) {
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
//     final l$attachment = attachment;
//     final lOther$attachment = other.attachment;
//     if (_$data.containsKey('attachment') !=
//         other._$data.containsKey('attachment')) {
//       return false;
//     }
//     if (l$attachment != lOther$attachment) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$title = title;
//     final l$amount = amount;
//     final l$payment_method = payment_method;
//     final l$attachment = attachment;
//     return Object.hashAll([
//       _$data.containsKey('title') ? l$title : const {},
//       l$amount,
//       _$data.containsKey('payment_method') ? l$payment_method : const {},
//       _$data.containsKey('attachment') ? l$attachment : const {},
//     ]);
//   }
// }
//
// abstract class CopyWithVariablesMutationDepositToCompanyWallet<TRes> {
//   factory CopyWithVariablesMutationDepositToCompanyWallet(
//     VariablesMutationDepositToCompanyWallet instance,
//     TRes Function(VariablesMutationDepositToCompanyWallet) then,
//   ) = _CopyWithImplVariablesMutationDepositToCompanyWallet;
//
//   factory CopyWithVariablesMutationDepositToCompanyWallet.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationDepositToCompanyWallet;
//
//   TRes call({
//     String? title,
//     double? amount,
//     EnumPaymentMethod? payment_method,
//     String? attachment,
//   });
// }
//
// class _CopyWithImplVariablesMutationDepositToCompanyWallet<TRes>
//     implements CopyWithVariablesMutationDepositToCompanyWallet<TRes> {
//   _CopyWithImplVariablesMutationDepositToCompanyWallet(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationDepositToCompanyWallet _instance;
//
//   final TRes Function(VariablesMutationDepositToCompanyWallet) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? title = _undefined,
//     Object? amount = _undefined,
//     Object? payment_method = _undefined,
//     Object? attachment = _undefined,
//   }) =>
//       _then(VariablesMutationDepositToCompanyWallet._({
//         ..._instance._$data,
//         if (title != _undefined) 'title': (title as String?),
//         if (amount != _undefined && amount != null)
//           'amount': (amount as double),
//         if (payment_method != _undefined)
//           'payment_method': (payment_method as EnumPaymentMethod?),
//         if (attachment != _undefined) 'attachment': (attachment as String?),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationDepositToCompanyWallet<TRes>
//     implements CopyWithVariablesMutationDepositToCompanyWallet<TRes> {
//   _CopyWithStubImplVariablesMutationDepositToCompanyWallet(this._res);
//
//   TRes _res;
//
//   call({
//     String? title,
//     double? amount,
//     EnumPaymentMethod? payment_method,
//     String? attachment,
//   }) =>
//       _res;
// }
//
// class MutationDepositToCompanyWallet {
//   MutationDepositToCompanyWallet({
//     required this.createWallet,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationDepositToCompanyWallet.fromJson(Map<String, dynamic> json) {
//     final l$createWallet = json['createWallet'];
//     final l$$__typename = json['__typename'];
//     return MutationDepositToCompanyWallet(
//       createWallet: MutationDepositToCompanyWalletcreateWallet.fromJson(
//           (l$createWallet as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationDepositToCompanyWalletcreateWallet createWallet;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$createWallet = createWallet;
//     _resultData['createWallet'] = l$createWallet.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$createWallet = createWallet;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$createWallet,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationDepositToCompanyWallet) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$createWallet = createWallet;
//     final lOther$createWallet = other.createWallet;
//     if (l$createWallet != lOther$createWallet) {
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
// extension UtilityExtensionMutationDepositToCompanyWallet
//     on MutationDepositToCompanyWallet {
//   CopyWithMutationDepositToCompanyWallet<MutationDepositToCompanyWallet>
//       get copyWith => CopyWithMutationDepositToCompanyWallet(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationDepositToCompanyWallet<TRes> {
//   factory CopyWithMutationDepositToCompanyWallet(
//     MutationDepositToCompanyWallet instance,
//     TRes Function(MutationDepositToCompanyWallet) then,
//   ) = _CopyWithImplMutationDepositToCompanyWallet;
//
//   factory CopyWithMutationDepositToCompanyWallet.stub(TRes res) =
//       _CopyWithStubImplMutationDepositToCompanyWallet;
//
//   TRes call({
//     MutationDepositToCompanyWalletcreateWallet? createWallet,
//     String? $__typename,
//   });
//   CopyWithMutationDepositToCompanyWalletcreateWallet<TRes> get createWallet;
// }
//
// class _CopyWithImplMutationDepositToCompanyWallet<TRes>
//     implements CopyWithMutationDepositToCompanyWallet<TRes> {
//   _CopyWithImplMutationDepositToCompanyWallet(
//     this._instance,
//     this._then,
//   );
//
//   final MutationDepositToCompanyWallet _instance;
//
//   final TRes Function(MutationDepositToCompanyWallet) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? createWallet = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationDepositToCompanyWallet(
//         createWallet: createWallet == _undefined || createWallet == null
//             ? _instance.createWallet
//             : (createWallet as MutationDepositToCompanyWalletcreateWallet),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationDepositToCompanyWalletcreateWallet<TRes> get createWallet {
//     final local$createWallet = _instance.createWallet;
//     return CopyWithMutationDepositToCompanyWalletcreateWallet(
//         local$createWallet, (e) => call(createWallet: e));
//   }
// }
//
// class _CopyWithStubImplMutationDepositToCompanyWallet<TRes>
//     implements CopyWithMutationDepositToCompanyWallet<TRes> {
//   _CopyWithStubImplMutationDepositToCompanyWallet(this._res);
//
//   TRes _res;
//
//   call({
//     MutationDepositToCompanyWalletcreateWallet? createWallet,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationDepositToCompanyWalletcreateWallet<TRes> get createWallet =>
//       CopyWithMutationDepositToCompanyWalletcreateWallet.stub(_res);
// }
//
// const documentNodeMutationDepositToCompanyWallet = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'DepositToCompanyWallet'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'title')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: false,
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
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'attachment')),
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
//         name: NameNode(value: 'createWallet'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'title'),
//                 value: VariableNode(name: NameNode(value: 'title')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'amount'),
//                 value: VariableNode(name: NameNode(value: 'amount')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'payment_method'),
//                 value: VariableNode(name: NameNode(value: 'payment_method')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'attachment'),
//                 value: VariableNode(name: NameNode(value: 'attachment')),
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
//                 name: NameNode(value: 'title'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
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
// MutationDepositToCompanyWallet _parserFnMutationDepositToCompanyWallet(
//         Map<String, dynamic> data) =>
//     MutationDepositToCompanyWallet.fromJson(data);
// typedef OnMutationCompletedMutationDepositToCompanyWallet = FutureOr<void>
//     Function(
//   Map<String, dynamic>?,
//   MutationDepositToCompanyWallet?,
// );
//
// class OptionsMutationDepositToCompanyWallet
//     extends graphql.MutationOptions<MutationDepositToCompanyWallet> {
//   OptionsMutationDepositToCompanyWallet({
//     String? operationName,
//     required VariablesMutationDepositToCompanyWallet variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationDepositToCompanyWallet? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationDepositToCompanyWallet? onCompleted,
//     graphql.OnMutationUpdate<MutationDepositToCompanyWallet>? update,
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
//                         : _parserFnMutationDepositToCompanyWallet(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationDepositToCompanyWallet,
//           parserFn: _parserFnMutationDepositToCompanyWallet,
//         );
//
//   final OnMutationCompletedMutationDepositToCompanyWallet?
//       onCompletedWithParsed;
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
// class WatchOptionsMutationDepositToCompanyWallet
//     extends graphql.WatchQueryOptions<MutationDepositToCompanyWallet> {
//   WatchOptionsMutationDepositToCompanyWallet({
//     String? operationName,
//     required VariablesMutationDepositToCompanyWallet variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationDepositToCompanyWallet? typedOptimisticResult,
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
//           document: documentNodeMutationDepositToCompanyWallet,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationDepositToCompanyWallet,
//         );
// }
//
// extension ClientExtensionMutationDepositToCompanyWallet
//     on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationDepositToCompanyWallet>>
//       mutateDepositToCompanyWallet(
//               OptionsMutationDepositToCompanyWallet options) async =>
//           await this.mutate(options);
//   graphql.ObservableQuery<MutationDepositToCompanyWallet>
//       watchMutationDepositToCompanyWallet(
//               WatchOptionsMutationDepositToCompanyWallet options) =>
//           this.watchMutation(options);
// }
//
// class MutationDepositToCompanyWalletHookResult {
//   MutationDepositToCompanyWalletHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationDepositToCompanyWallet runMutation;
//
//   final graphql.QueryResult<MutationDepositToCompanyWallet> result;
// }
//
// MutationDepositToCompanyWalletHookResult useMutationDepositToCompanyWallet(
//     [WidgetOptionsMutationDepositToCompanyWallet? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationDepositToCompanyWallet());
//   return MutationDepositToCompanyWalletHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationDepositToCompanyWallet>
//     useWatchMutationDepositToCompanyWallet(
//             WatchOptionsMutationDepositToCompanyWallet options) =>
//         graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationDepositToCompanyWallet
//     extends graphql.MutationOptions<MutationDepositToCompanyWallet> {
//   WidgetOptionsMutationDepositToCompanyWallet({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationDepositToCompanyWallet? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationDepositToCompanyWallet? onCompleted,
//     graphql.OnMutationUpdate<MutationDepositToCompanyWallet>? update,
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
//                         : _parserFnMutationDepositToCompanyWallet(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationDepositToCompanyWallet,
//           parserFn: _parserFnMutationDepositToCompanyWallet,
//         );
//
//   final OnMutationCompletedMutationDepositToCompanyWallet?
//       onCompletedWithParsed;
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
// typedef RunMutationMutationDepositToCompanyWallet
//     = graphql.MultiSourceResult<MutationDepositToCompanyWallet> Function(
//   VariablesMutationDepositToCompanyWallet, {
//   Object? optimisticResult,
//   MutationDepositToCompanyWallet? typedOptimisticResult,
// });
// typedef BuilderMutationDepositToCompanyWallet = widgets.Widget Function(
//   RunMutationMutationDepositToCompanyWallet,
//   graphql.QueryResult<MutationDepositToCompanyWallet>?,
// );
//
// class MutationDepositToCompanyWalletWidget
//     extends graphql_flutter.Mutation<MutationDepositToCompanyWallet> {
//   MutationDepositToCompanyWalletWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationDepositToCompanyWallet? options,
//     required BuilderMutationDepositToCompanyWallet builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationDepositToCompanyWallet(),
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
// class MutationDepositToCompanyWalletcreateWallet {
//   MutationDepositToCompanyWalletcreateWallet({
//     required this.status,
//     this.message,
//     required this.error,
//     this.wallet,
//     this.$__typename = 'WalletResult',
//   });
//
//   factory MutationDepositToCompanyWalletcreateWallet.fromJson(
//       Map<String, dynamic> json) {
//     final l$status = json['status'];
//     final l$message = json['message'];
//     final l$error = json['error'];
//     final l$wallet = json['wallet'];
//     final l$$__typename = json['__typename'];
//     return MutationDepositToCompanyWalletcreateWallet(
//       status: (l$status as String),
//       message: (l$message as String?),
//       error: (l$error as int),
//       wallet: l$wallet == null
//           ? null
//           : MutationDepositToCompanyWalletcreateWalletwallet.fromJson(
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
//   final MutationDepositToCompanyWalletcreateWalletwallet? wallet;
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
//     if (!(other is MutationDepositToCompanyWalletcreateWallet) ||
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
// extension UtilityExtensionMutationDepositToCompanyWalletcreateWallet
//     on MutationDepositToCompanyWalletcreateWallet {
//   CopyWithMutationDepositToCompanyWalletcreateWallet<
//           MutationDepositToCompanyWalletcreateWallet>
//       get copyWith => CopyWithMutationDepositToCompanyWalletcreateWallet(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationDepositToCompanyWalletcreateWallet<TRes> {
//   factory CopyWithMutationDepositToCompanyWalletcreateWallet(
//     MutationDepositToCompanyWalletcreateWallet instance,
//     TRes Function(MutationDepositToCompanyWalletcreateWallet) then,
//   ) = _CopyWithImplMutationDepositToCompanyWalletcreateWallet;
//
//   factory CopyWithMutationDepositToCompanyWalletcreateWallet.stub(TRes res) =
//       _CopyWithStubImplMutationDepositToCompanyWalletcreateWallet;
//
//   TRes call({
//     String? status,
//     String? message,
//     int? error,
//     MutationDepositToCompanyWalletcreateWalletwallet? wallet,
//     String? $__typename,
//   });
//   CopyWithMutationDepositToCompanyWalletcreateWalletwallet<TRes> get wallet;
// }
//
// class _CopyWithImplMutationDepositToCompanyWalletcreateWallet<TRes>
//     implements CopyWithMutationDepositToCompanyWalletcreateWallet<TRes> {
//   _CopyWithImplMutationDepositToCompanyWalletcreateWallet(
//     this._instance,
//     this._then,
//   );
//
//   final MutationDepositToCompanyWalletcreateWallet _instance;
//
//   final TRes Function(MutationDepositToCompanyWalletcreateWallet) _then;
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
//       _then(MutationDepositToCompanyWalletcreateWallet(
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
//             : (wallet as MutationDepositToCompanyWalletcreateWalletwallet?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationDepositToCompanyWalletcreateWalletwallet<TRes> get wallet {
//     final local$wallet = _instance.wallet;
//     return local$wallet == null
//         ? CopyWithMutationDepositToCompanyWalletcreateWalletwallet.stub(
//             _then(_instance))
//         : CopyWithMutationDepositToCompanyWalletcreateWalletwallet(
//             local$wallet, (e) => call(wallet: e));
//   }
// }
//
// class _CopyWithStubImplMutationDepositToCompanyWalletcreateWallet<TRes>
//     implements CopyWithMutationDepositToCompanyWalletcreateWallet<TRes> {
//   _CopyWithStubImplMutationDepositToCompanyWalletcreateWallet(this._res);
//
//   TRes _res;
//
//   call({
//     String? status,
//     String? message,
//     int? error,
//     MutationDepositToCompanyWalletcreateWalletwallet? wallet,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationDepositToCompanyWalletcreateWalletwallet<TRes> get wallet =>
//       CopyWithMutationDepositToCompanyWalletcreateWalletwallet.stub(_res);
// }
//
// class MutationDepositToCompanyWalletcreateWalletwallet {
//   MutationDepositToCompanyWalletcreateWalletwallet({
//     required this.id,
//     this.wallet,
//     this.title,
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
//   factory MutationDepositToCompanyWalletcreateWalletwallet.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$wallet = json['wallet'];
//     final l$title = json['title'];
//     final l$transaction_number = json['transaction_number'];
//     final l$amount = json['amount'];
//     final l$status = json['status'];
//     final l$payment_method = json['payment_method'];
//     final l$description = json['description'];
//     final l$type = json['type'];
//     final l$created_at = json['created_at'];
//     final l$attachment = json['attachment'];
//     final l$$__typename = json['__typename'];
//     return MutationDepositToCompanyWalletcreateWalletwallet(
//       id: (l$id as String),
//       wallet: l$wallet == null
//           ? null
//           : MutationDepositToCompanyWalletcreateWalletwalletwallet.fromJson(
//               (l$wallet as Map<String, dynamic>)),
//       title: (l$title as String?),
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
//   final MutationDepositToCompanyWalletcreateWalletwalletwallet? wallet;
//
//   final String? title;
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
//     final l$title = title;
//     _resultData['title'] = l$title;
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
//     final l$title = title;
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
//       l$title,
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
//     if (!(other is MutationDepositToCompanyWalletcreateWalletwallet) ||
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
//     final l$title = title;
//     final lOther$title = other.title;
//     if (l$title != lOther$title) {
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
// extension UtilityExtensionMutationDepositToCompanyWalletcreateWalletwallet
//     on MutationDepositToCompanyWalletcreateWalletwallet {
//   CopyWithMutationDepositToCompanyWalletcreateWalletwallet<
//           MutationDepositToCompanyWalletcreateWalletwallet>
//       get copyWith => CopyWithMutationDepositToCompanyWalletcreateWalletwallet(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationDepositToCompanyWalletcreateWalletwallet<TRes> {
//   factory CopyWithMutationDepositToCompanyWalletcreateWalletwallet(
//     MutationDepositToCompanyWalletcreateWalletwallet instance,
//     TRes Function(MutationDepositToCompanyWalletcreateWalletwallet) then,
//   ) = _CopyWithImplMutationDepositToCompanyWalletcreateWalletwallet;
//
//   factory CopyWithMutationDepositToCompanyWalletcreateWalletwallet.stub(
//           TRes res) =
//       _CopyWithStubImplMutationDepositToCompanyWalletcreateWalletwallet;
//
//   TRes call({
//     String? id,
//     MutationDepositToCompanyWalletcreateWalletwalletwallet? wallet,
//     String? title,
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
//   CopyWithMutationDepositToCompanyWalletcreateWalletwalletwallet<TRes>
//       get wallet;
// }
//
// class _CopyWithImplMutationDepositToCompanyWalletcreateWalletwallet<TRes>
//     implements CopyWithMutationDepositToCompanyWalletcreateWalletwallet<TRes> {
//   _CopyWithImplMutationDepositToCompanyWalletcreateWalletwallet(
//     this._instance,
//     this._then,
//   );
//
//   final MutationDepositToCompanyWalletcreateWalletwallet _instance;
//
//   final TRes Function(MutationDepositToCompanyWalletcreateWalletwallet) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? wallet = _undefined,
//     Object? title = _undefined,
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
//       _then(MutationDepositToCompanyWalletcreateWalletwallet(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         wallet: wallet == _undefined
//             ? _instance.wallet
//             : (wallet
//                 as MutationDepositToCompanyWalletcreateWalletwalletwallet?),
//         title: title == _undefined ? _instance.title : (title as String?),
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
//   CopyWithMutationDepositToCompanyWalletcreateWalletwalletwallet<TRes>
//       get wallet {
//     final local$wallet = _instance.wallet;
//     return local$wallet == null
//         ? CopyWithMutationDepositToCompanyWalletcreateWalletwalletwallet.stub(
//             _then(_instance))
//         : CopyWithMutationDepositToCompanyWalletcreateWalletwalletwallet(
//             local$wallet, (e) => call(wallet: e));
//   }
// }
//
// class _CopyWithStubImplMutationDepositToCompanyWalletcreateWalletwallet<TRes>
//     implements CopyWithMutationDepositToCompanyWalletcreateWalletwallet<TRes> {
//   _CopyWithStubImplMutationDepositToCompanyWalletcreateWalletwallet(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     MutationDepositToCompanyWalletcreateWalletwalletwallet? wallet,
//     String? title,
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
//   CopyWithMutationDepositToCompanyWalletcreateWalletwalletwallet<TRes>
//       get wallet =>
//           CopyWithMutationDepositToCompanyWalletcreateWalletwalletwallet.stub(
//               _res);
// }
//
// class MutationDepositToCompanyWalletcreateWalletwalletwallet {
//   MutationDepositToCompanyWalletcreateWalletwalletwallet({
//     this.customer,
//     this.$__typename = 'Wallet',
//   });
//
//   factory MutationDepositToCompanyWalletcreateWalletwalletwallet.fromJson(
//       Map<String, dynamic> json) {
//     final l$customer = json['customer'];
//     final l$$__typename = json['__typename'];
//     return MutationDepositToCompanyWalletcreateWalletwalletwallet(
//       customer: l$customer == null
//           ? null
//           : MutationDepositToCompanyWalletcreateWalletwalletwalletcustomer
//               .fromJson((l$customer as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationDepositToCompanyWalletcreateWalletwalletwalletcustomer?
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
//     if (!(other is MutationDepositToCompanyWalletcreateWalletwalletwallet) ||
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
// extension UtilityExtensionMutationDepositToCompanyWalletcreateWalletwalletwallet
//     on MutationDepositToCompanyWalletcreateWalletwalletwallet {
//   CopyWithMutationDepositToCompanyWalletcreateWalletwalletwallet<
//           MutationDepositToCompanyWalletcreateWalletwalletwallet>
//       get copyWith =>
//           CopyWithMutationDepositToCompanyWalletcreateWalletwalletwallet(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationDepositToCompanyWalletcreateWalletwalletwallet<
//     TRes> {
//   factory CopyWithMutationDepositToCompanyWalletcreateWalletwalletwallet(
//     MutationDepositToCompanyWalletcreateWalletwalletwallet instance,
//     TRes Function(MutationDepositToCompanyWalletcreateWalletwalletwallet) then,
//   ) = _CopyWithImplMutationDepositToCompanyWalletcreateWalletwalletwallet;
//
//   factory CopyWithMutationDepositToCompanyWalletcreateWalletwalletwallet.stub(
//           TRes res) =
//       _CopyWithStubImplMutationDepositToCompanyWalletcreateWalletwalletwallet;
//
//   TRes call({
//     MutationDepositToCompanyWalletcreateWalletwalletwalletcustomer? customer,
//     String? $__typename,
//   });
//   CopyWithMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer<TRes>
//       get customer;
// }
//
// class _CopyWithImplMutationDepositToCompanyWalletcreateWalletwalletwallet<TRes>
//     implements
//         CopyWithMutationDepositToCompanyWalletcreateWalletwalletwallet<TRes> {
//   _CopyWithImplMutationDepositToCompanyWalletcreateWalletwalletwallet(
//     this._instance,
//     this._then,
//   );
//
//   final MutationDepositToCompanyWalletcreateWalletwalletwallet _instance;
//
//   final TRes Function(MutationDepositToCompanyWalletcreateWalletwalletwallet)
//       _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? customer = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationDepositToCompanyWalletcreateWalletwalletwallet(
//         customer: customer == _undefined
//             ? _instance.customer
//             : (customer
//                 as MutationDepositToCompanyWalletcreateWalletwalletwalletcustomer?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer<TRes>
//       get customer {
//     final local$customer = _instance.customer;
//     return local$customer == null
//         ? CopyWithMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer
//             .stub(_then(_instance))
//         : CopyWithMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer(
//             local$customer, (e) => call(customer: e));
//   }
// }
//
// class _CopyWithStubImplMutationDepositToCompanyWalletcreateWalletwalletwallet<
//         TRes>
//     implements
//         CopyWithMutationDepositToCompanyWalletcreateWalletwalletwallet<TRes> {
//   _CopyWithStubImplMutationDepositToCompanyWalletcreateWalletwalletwallet(
//       this._res);
//
//   TRes _res;
//
//   call({
//     MutationDepositToCompanyWalletcreateWalletwalletwalletcustomer? customer,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer<TRes>
//       get customer =>
//           CopyWithMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer
//               .stub(_res);
// }
//
// class MutationDepositToCompanyWalletcreateWalletwalletwalletcustomer {
//   MutationDepositToCompanyWalletcreateWalletwalletwalletcustomer({
//     required this.id,
//     this.name,
//     this.wallet,
//     this.wallet_limit,
//     this.withdrawal,
//     this.created_at,
//     this.$__typename = 'User',
//   });
//
//   factory MutationDepositToCompanyWalletcreateWalletwalletwalletcustomer.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$wallet = json['wallet'];
//     final l$wallet_limit = json['wallet_limit'];
//     final l$withdrawal = json['withdrawal'];
//     final l$created_at = json['created_at'];
//     final l$$__typename = json['__typename'];
//     return MutationDepositToCompanyWalletcreateWalletwalletwalletcustomer(
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
//             is MutationDepositToCompanyWalletcreateWalletwalletwalletcustomer) ||
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
// extension UtilityExtensionMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer
//     on MutationDepositToCompanyWalletcreateWalletwalletwalletcustomer {
//   CopyWithMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer<
//           MutationDepositToCompanyWalletcreateWalletwalletwalletcustomer>
//       get copyWith =>
//           CopyWithMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer<
//     TRes> {
//   factory CopyWithMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer(
//     MutationDepositToCompanyWalletcreateWalletwalletwalletcustomer instance,
//     TRes Function(
//             MutationDepositToCompanyWalletcreateWalletwalletwalletcustomer)
//         then,
//   ) = _CopyWithImplMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer;
//
//   factory CopyWithMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer.stub(
//           TRes res) =
//       _CopyWithStubImplMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer;
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
// class _CopyWithImplMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer<
//         TRes>
//     implements
//         CopyWithMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer<
//             TRes> {
//   _CopyWithImplMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer(
//     this._instance,
//     this._then,
//   );
//
//   final MutationDepositToCompanyWalletcreateWalletwalletwalletcustomer
//       _instance;
//
//   final TRes Function(
//       MutationDepositToCompanyWalletcreateWalletwalletwalletcustomer) _then;
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
//       _then(MutationDepositToCompanyWalletcreateWalletwalletwalletcustomer(
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
// class _CopyWithStubImplMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer<
//         TRes>
//     implements
//         CopyWithMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer<
//             TRes> {
//   _CopyWithStubImplMutationDepositToCompanyWalletcreateWalletwalletwalletcustomer(
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
