// import '../schema.gql.dart';
// import 'dart:async';
// import 'package:flutter/widgets.dart' as widgets;
// import 'package:gql/ast.dart';
// import 'package:graphql/client.dart' as graphql;
// import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
//
// class VariablesQueryOrders {
//   factory VariablesQueryOrders({
//     int? page,
//     int? employee,
//   }) =>
//       VariablesQueryOrders._({
//         if (page != null) r'page': page,
//         if (employee != null) r'employee': employee,
//       });
//
//   VariablesQueryOrders._(this._$data);
//
//   factory VariablesQueryOrders.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     if (data.containsKey('page')) {
//       final l$page = data['page'];
//       result$data['page'] = (l$page as int?);
//     }
//     if (data.containsKey('employee')) {
//       final l$employee = data['employee'];
//       result$data['employee'] = (l$employee as int?);
//     }
//     return VariablesQueryOrders._(result$data);
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
//   CopyWithVariablesQueryOrders<VariablesQueryOrders> get copyWith =>
//       CopyWithVariablesQueryOrders(
//         this,
//         (i) => i,
//       );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesQueryOrders) || runtimeType != other.runtimeType) {
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
// abstract class CopyWithVariablesQueryOrders<TRes> {
//   factory CopyWithVariablesQueryOrders(
//     VariablesQueryOrders instance,
//     TRes Function(VariablesQueryOrders) then,
//   ) = _CopyWithImplVariablesQueryOrders;
//
//   factory CopyWithVariablesQueryOrders.stub(TRes res) =
//       _CopyWithStubImplVariablesQueryOrders;
//
//   TRes call({
//     int? page,
//     int? employee,
//   });
// }
//
// class _CopyWithImplVariablesQueryOrders<TRes>
//     implements CopyWithVariablesQueryOrders<TRes> {
//   _CopyWithImplVariablesQueryOrders(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesQueryOrders _instance;
//
//   final TRes Function(VariablesQueryOrders) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? page = _undefined,
//     Object? employee = _undefined,
//   }) =>
//       _then(VariablesQueryOrders._({
//         ..._instance._$data,
//         if (page != _undefined) 'page': (page as int?),
//         if (employee != _undefined) 'employee': (employee as int?),
//       }));
// }
//
// class _CopyWithStubImplVariablesQueryOrders<TRes>
//     implements CopyWithVariablesQueryOrders<TRes> {
//   _CopyWithStubImplVariablesQueryOrders(this._res);
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
// class QueryOrders {
//   QueryOrders({
//     this.orders,
//     this.$__typename = 'Query',
//   });
//
//   factory QueryOrders.fromJson(Map<String, dynamic> json) {
//     final l$orders = json['orders'];
//     final l$$__typename = json['__typename'];
//     return QueryOrders(
//       orders: l$orders == null
//           ? null
//           : QueryOrdersorders.fromJson((l$orders as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryOrdersorders? orders;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$orders = orders;
//     _resultData['orders'] = l$orders?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$orders = orders;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$orders,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryOrders) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$orders = orders;
//     final lOther$orders = other.orders;
//     if (l$orders != lOther$orders) {
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
// extension UtilityExtensionQueryOrders on QueryOrders {
//   CopyWithQueryOrders<QueryOrders> get copyWith => CopyWithQueryOrders(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryOrders<TRes> {
//   factory CopyWithQueryOrders(
//     QueryOrders instance,
//     TRes Function(QueryOrders) then,
//   ) = _CopyWithImplQueryOrders;
//
//   factory CopyWithQueryOrders.stub(TRes res) = _CopyWithStubImplQueryOrders;
//
//   TRes call({
//     QueryOrdersorders? orders,
//     String? $__typename,
//   });
//   CopyWithQueryOrdersorders<TRes> get orders;
// }
//
// class _CopyWithImplQueryOrders<TRes> implements CopyWithQueryOrders<TRes> {
//   _CopyWithImplQueryOrders(
//     this._instance,
//     this._then,
//   );
//
//   final QueryOrders _instance;
//
//   final TRes Function(QueryOrders) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? orders = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryOrders(
//         orders: orders == _undefined
//             ? _instance.orders
//             : (orders as QueryOrdersorders?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryOrdersorders<TRes> get orders {
//     final local$orders = _instance.orders;
//     return local$orders == null
//         ? CopyWithQueryOrdersorders.stub(_then(_instance))
//         : CopyWithQueryOrdersorders(local$orders, (e) => call(orders: e));
//   }
// }
//
// class _CopyWithStubImplQueryOrders<TRes> implements CopyWithQueryOrders<TRes> {
//   _CopyWithStubImplQueryOrders(this._res);
//
//   TRes _res;
//
//   call({
//     QueryOrdersorders? orders,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryOrdersorders<TRes> get orders =>
//       CopyWithQueryOrdersorders.stub(_res);
// }
//
// const documentNodeQueryOrders = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.query,
//     name: NameNode(value: 'Orders'),
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
//         name: NameNode(value: 'orders'),
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
//                 name: NameNode(value: 'user'),
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
//                     name: NameNode(value: 'national_id'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'mobile'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'gender'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'image_path'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'wallet_limit'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'type'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'email'),
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
//                 name: NameNode(value: 'reference_number'),
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
//                 name: NameNode(value: 'total_price'),
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
//                 name: NameNode(value: 'discount_value'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'vat'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'vat_value'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'coupon'),
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
//                     name: NameNode(value: 'discount'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'code'),
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
//                     name: NameNode(value: 'mobile'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'email'),
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
//                 name: NameNode(value: 'company'),
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
//                     name: NameNode(value: '__typename'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                 ]),
//               ),
//               FieldNode(
//                 name: NameNode(value: 'status'),
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
//                 name: NameNode(value: 'products'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: SelectionSetNode(selections: [
//                   FieldNode(
//                     name: NameNode(value: 'product'),
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
//                         name: NameNode(value: 'price'),
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
//                         name: NameNode(value: 'discount'),
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
//                     name: NameNode(value: 'unit_price'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'total_price'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'quantity'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'discount'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'discount_value'),
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
// QueryOrders _parserFnQueryOrders(Map<String, dynamic> data) =>
//     QueryOrders.fromJson(data);
// typedef OnQueryCompleteQueryOrders = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   QueryOrders?,
// );
//
// class OptionsQueryOrders extends graphql.QueryOptions<QueryOrders> {
//   OptionsQueryOrders({
//     String? operationName,
//     VariablesQueryOrders? variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryOrders? typedOptimisticResult,
//     Duration? pollInterval,
//     graphql.Context? context,
//     OnQueryCompleteQueryOrders? onComplete,
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
//                     data == null ? null : _parserFnQueryOrders(data),
//                   ),
//           onError: onError,
//           document: documentNodeQueryOrders,
//           parserFn: _parserFnQueryOrders,
//         );
//
//   final OnQueryCompleteQueryOrders? onCompleteWithParsed;
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
// class WatchOptionsQueryOrders extends graphql.WatchQueryOptions<QueryOrders> {
//   WatchOptionsQueryOrders({
//     String? operationName,
//     VariablesQueryOrders? variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryOrders? typedOptimisticResult,
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
//           document: documentNodeQueryOrders,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnQueryOrders,
//         );
// }
//
// class FetchMoreOptionsQueryOrders extends graphql.FetchMoreOptions {
//   FetchMoreOptionsQueryOrders({
//     required graphql.UpdateQuery updateQuery,
//     VariablesQueryOrders? variables,
//   }) : super(
//           updateQuery: updateQuery,
//           variables: variables?.toJson() ?? {},
//           document: documentNodeQueryOrders,
//         );
// }
//
// extension ClientExtensionQueryOrders on graphql.GraphQLClient {
//   Future<graphql.QueryResult<QueryOrders>> queryOrders(
//           [OptionsQueryOrders? options]) async =>
//       await this.query(options ?? OptionsQueryOrders());
//   graphql.ObservableQuery<QueryOrders> watchQueryOrders(
//           [WatchOptionsQueryOrders? options]) =>
//       this.watchQuery(options ?? WatchOptionsQueryOrders());
//   void writeQueryOrders({
//     required QueryOrders data,
//     VariablesQueryOrders? variables,
//     bool broadcast = true,
//   }) =>
//       this.writeQuery(
//         graphql.Request(
//           operation: graphql.Operation(document: documentNodeQueryOrders),
//           variables: variables?.toJson() ?? const {},
//         ),
//         data: data.toJson(),
//         broadcast: broadcast,
//       );
//   QueryOrders? readQueryOrders({
//     VariablesQueryOrders? variables,
//     bool optimistic = true,
//   }) {
//     final result = this.readQuery(
//       graphql.Request(
//         operation: graphql.Operation(document: documentNodeQueryOrders),
//         variables: variables?.toJson() ?? const {},
//       ),
//       optimistic: optimistic,
//     );
//     return result == null ? null : QueryOrders.fromJson(result);
//   }
// }
//
// graphql_flutter.QueryHookResult<QueryOrders> useQueryOrders(
//         [OptionsQueryOrders? options]) =>
//     graphql_flutter.useQuery(options ?? OptionsQueryOrders());
// graphql.ObservableQuery<QueryOrders> useWatchQueryOrders(
//         [WatchOptionsQueryOrders? options]) =>
//     graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryOrders());
//
// class QueryOrdersWidget extends graphql_flutter.Query<QueryOrders> {
//   QueryOrdersWidget({
//     widgets.Key? key,
//     OptionsQueryOrders? options,
//     required graphql_flutter.QueryBuilder<QueryOrders> builder,
//   }) : super(
//           key: key,
//           options: options ?? OptionsQueryOrders(),
//           builder: builder,
//         );
// }
//
// class QueryOrdersorders {
//   QueryOrdersorders({
//     required this.paginatorInfo,
//     required this.data,
//     this.$__typename = 'OrderPaginator',
//   });
//
//   factory QueryOrdersorders.fromJson(Map<String, dynamic> json) {
//     final l$paginatorInfo = json['paginatorInfo'];
//     final l$data = json['data'];
//     final l$$__typename = json['__typename'];
//     return QueryOrdersorders(
//       paginatorInfo: QueryOrdersorderspaginatorInfo.fromJson(
//           (l$paginatorInfo as Map<String, dynamic>)),
//       data: (l$data as List<dynamic>)
//           .map((e) =>
//               QueryOrdersordersdata.fromJson((e as Map<String, dynamic>)))
//           .toList(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryOrdersorderspaginatorInfo paginatorInfo;
//
//   final List<QueryOrdersordersdata> data;
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
//     if (!(other is QueryOrdersorders) || runtimeType != other.runtimeType) {
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
// extension UtilityExtensionQueryOrdersorders on QueryOrdersorders {
//   CopyWithQueryOrdersorders<QueryOrdersorders> get copyWith =>
//       CopyWithQueryOrdersorders(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryOrdersorders<TRes> {
//   factory CopyWithQueryOrdersorders(
//     QueryOrdersorders instance,
//     TRes Function(QueryOrdersorders) then,
//   ) = _CopyWithImplQueryOrdersorders;
//
//   factory CopyWithQueryOrdersorders.stub(TRes res) =
//       _CopyWithStubImplQueryOrdersorders;
//
//   TRes call({
//     QueryOrdersorderspaginatorInfo? paginatorInfo,
//     List<QueryOrdersordersdata>? data,
//     String? $__typename,
//   });
//   CopyWithQueryOrdersorderspaginatorInfo<TRes> get paginatorInfo;
//   TRes data(
//       Iterable<QueryOrdersordersdata> Function(
//               Iterable<CopyWithQueryOrdersordersdata<QueryOrdersordersdata>>)
//           _fn);
// }
//
// class _CopyWithImplQueryOrdersorders<TRes>
//     implements CopyWithQueryOrdersorders<TRes> {
//   _CopyWithImplQueryOrdersorders(
//     this._instance,
//     this._then,
//   );
//
//   final QueryOrdersorders _instance;
//
//   final TRes Function(QueryOrdersorders) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? paginatorInfo = _undefined,
//     Object? data = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryOrdersorders(
//         paginatorInfo: paginatorInfo == _undefined || paginatorInfo == null
//             ? _instance.paginatorInfo
//             : (paginatorInfo as QueryOrdersorderspaginatorInfo),
//         data: data == _undefined || data == null
//             ? _instance.data
//             : (data as List<QueryOrdersordersdata>),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryOrdersorderspaginatorInfo<TRes> get paginatorInfo {
//     final local$paginatorInfo = _instance.paginatorInfo;
//     return CopyWithQueryOrdersorderspaginatorInfo(
//         local$paginatorInfo, (e) => call(paginatorInfo: e));
//   }
//
//   TRes data(
//           Iterable<QueryOrdersordersdata> Function(
//                   Iterable<
//                       CopyWithQueryOrdersordersdata<QueryOrdersordersdata>>)
//               _fn) =>
//       call(
//           data: _fn(_instance.data.map((e) => CopyWithQueryOrdersordersdata(
//                 e,
//                 (i) => i,
//               ))).toList());
// }
//
// class _CopyWithStubImplQueryOrdersorders<TRes>
//     implements CopyWithQueryOrdersorders<TRes> {
//   _CopyWithStubImplQueryOrdersorders(this._res);
//
//   TRes _res;
//
//   call({
//     QueryOrdersorderspaginatorInfo? paginatorInfo,
//     List<QueryOrdersordersdata>? data,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryOrdersorderspaginatorInfo<TRes> get paginatorInfo =>
//       CopyWithQueryOrdersorderspaginatorInfo.stub(_res);
//
//   data(_fn) => _res;
// }
//
// class QueryOrdersorderspaginatorInfo {
//   QueryOrdersorderspaginatorInfo({
//     required this.count,
//     required this.currentPage,
//     required this.total,
//     required this.lastPage,
//     required this.hasMorePages,
//     this.$__typename = 'PaginatorInfo',
//   });
//
//   factory QueryOrdersorderspaginatorInfo.fromJson(Map<String, dynamic> json) {
//     final l$count = json['count'];
//     final l$currentPage = json['currentPage'];
//     final l$total = json['total'];
//     final l$lastPage = json['lastPage'];
//     final l$hasMorePages = json['hasMorePages'];
//     final l$$__typename = json['__typename'];
//     return QueryOrdersorderspaginatorInfo(
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
//     if (!(other is QueryOrdersorderspaginatorInfo) ||
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
// extension UtilityExtensionQueryOrdersorderspaginatorInfo
//     on QueryOrdersorderspaginatorInfo {
//   CopyWithQueryOrdersorderspaginatorInfo<QueryOrdersorderspaginatorInfo>
//       get copyWith => CopyWithQueryOrdersorderspaginatorInfo(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryOrdersorderspaginatorInfo<TRes> {
//   factory CopyWithQueryOrdersorderspaginatorInfo(
//     QueryOrdersorderspaginatorInfo instance,
//     TRes Function(QueryOrdersorderspaginatorInfo) then,
//   ) = _CopyWithImplQueryOrdersorderspaginatorInfo;
//
//   factory CopyWithQueryOrdersorderspaginatorInfo.stub(TRes res) =
//       _CopyWithStubImplQueryOrdersorderspaginatorInfo;
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
// class _CopyWithImplQueryOrdersorderspaginatorInfo<TRes>
//     implements CopyWithQueryOrdersorderspaginatorInfo<TRes> {
//   _CopyWithImplQueryOrdersorderspaginatorInfo(
//     this._instance,
//     this._then,
//   );
//
//   final QueryOrdersorderspaginatorInfo _instance;
//
//   final TRes Function(QueryOrdersorderspaginatorInfo) _then;
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
//       _then(QueryOrdersorderspaginatorInfo(
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
// class _CopyWithStubImplQueryOrdersorderspaginatorInfo<TRes>
//     implements CopyWithQueryOrdersorderspaginatorInfo<TRes> {
//   _CopyWithStubImplQueryOrdersorderspaginatorInfo(this._res);
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
// class QueryOrdersordersdata {
//   QueryOrdersordersdata({
//     required this.id,
//     this.user,
//     this.reference_number,
//     this.price,
//     this.total_price,
//     this.discount,
//     this.discount_value,
//     this.vat,
//     this.vat_value,
//     this.coupon,
//     this.puncher,
//     this.company,
//     this.status,
//     this.name,
//     this.products,
//     this.created_at,
//     this.$__typename = 'Order',
//   });
//
//   factory QueryOrdersordersdata.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$user = json['user'];
//     final l$reference_number = json['reference_number'];
//     final l$price = json['price'];
//     final l$total_price = json['total_price'];
//     final l$discount = json['discount'];
//     final l$discount_value = json['discount_value'];
//     final l$vat = json['vat'];
//     final l$vat_value = json['vat_value'];
//     final l$coupon = json['coupon'];
//     final l$puncher = json['puncher'];
//     final l$company = json['company'];
//     final l$status = json['status'];
//     final l$name = json['name'];
//     final l$products = json['products'];
//     final l$created_at = json['created_at'];
//     final l$$__typename = json['__typename'];
//     return QueryOrdersordersdata(
//       id: (l$id as String),
//       user: l$user == null
//           ? null
//           : QueryOrdersordersdatauser.fromJson(
//               (l$user as Map<String, dynamic>)),
//       reference_number: (l$reference_number as String?),
//       price: (l$price as num?)?.toDouble(),
//       total_price: (l$total_price as num?)?.toDouble(),
//       discount: (l$discount as num?)?.toDouble(),
//       discount_value: (l$discount_value as num?)?.toDouble(),
//       vat: (l$vat as num?)?.toDouble(),
//       vat_value: (l$vat_value as num?)?.toDouble(),
//       coupon: l$coupon == null
//           ? null
//           : QueryOrdersordersdatacoupon.fromJson(
//               (l$coupon as Map<String, dynamic>)),
//       puncher: l$puncher == null
//           ? null
//           : QueryOrdersordersdatapuncher.fromJson(
//               (l$puncher as Map<String, dynamic>)),
//       company: l$company == null
//           ? null
//           : QueryOrdersordersdatacompany.fromJson(
//               (l$company as Map<String, dynamic>)),
//       status: (l$status as int?),
//       name: (l$name as String?),
//       products: (l$products as List<dynamic>?)
//           ?.map((e) => QueryOrdersordersdataproducts.fromJson(
//               (e as Map<String, dynamic>)))
//           .toList(),
//       created_at: (l$created_at as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final QueryOrdersordersdatauser? user;
//
//   final String? reference_number;
//
//   final double? price;
//
//   final double? total_price;
//
//   final double? discount;
//
//   final double? discount_value;
//
//   final double? vat;
//
//   final double? vat_value;
//
//   final QueryOrdersordersdatacoupon? coupon;
//
//   final QueryOrdersordersdatapuncher? puncher;
//
//   final QueryOrdersordersdatacompany? company;
//
//   final int? status;
//
//   final String? name;
//
//   final List<QueryOrdersordersdataproducts>? products;
//
//   final String? created_at;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$user = user;
//     _resultData['user'] = l$user?.toJson();
//     final l$reference_number = reference_number;
//     _resultData['reference_number'] = l$reference_number;
//     final l$price = price;
//     _resultData['price'] = l$price;
//     final l$total_price = total_price;
//     _resultData['total_price'] = l$total_price;
//     final l$discount = discount;
//     _resultData['discount'] = l$discount;
//     final l$discount_value = discount_value;
//     _resultData['discount_value'] = l$discount_value;
//     final l$vat = vat;
//     _resultData['vat'] = l$vat;
//     final l$vat_value = vat_value;
//     _resultData['vat_value'] = l$vat_value;
//     final l$coupon = coupon;
//     _resultData['coupon'] = l$coupon?.toJson();
//     final l$puncher = puncher;
//     _resultData['puncher'] = l$puncher?.toJson();
//     final l$company = company;
//     _resultData['company'] = l$company?.toJson();
//     final l$status = status;
//     _resultData['status'] = l$status;
//     final l$name = name;
//     _resultData['name'] = l$name;
//     final l$products = products;
//     _resultData['products'] = l$products?.map((e) => e.toJson()).toList();
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
//     final l$user = user;
//     final l$reference_number = reference_number;
//     final l$price = price;
//     final l$total_price = total_price;
//     final l$discount = discount;
//     final l$discount_value = discount_value;
//     final l$vat = vat;
//     final l$vat_value = vat_value;
//     final l$coupon = coupon;
//     final l$puncher = puncher;
//     final l$company = company;
//     final l$status = status;
//     final l$name = name;
//     final l$products = products;
//     final l$created_at = created_at;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$user,
//       l$reference_number,
//       l$price,
//       l$total_price,
//       l$discount,
//       l$discount_value,
//       l$vat,
//       l$vat_value,
//       l$coupon,
//       l$puncher,
//       l$company,
//       l$status,
//       l$name,
//       l$products == null ? null : Object.hashAll(l$products.map((v) => v)),
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
//     if (!(other is QueryOrdersordersdata) || runtimeType != other.runtimeType) {
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
//     final l$reference_number = reference_number;
//     final lOther$reference_number = other.reference_number;
//     if (l$reference_number != lOther$reference_number) {
//       return false;
//     }
//     final l$price = price;
//     final lOther$price = other.price;
//     if (l$price != lOther$price) {
//       return false;
//     }
//     final l$total_price = total_price;
//     final lOther$total_price = other.total_price;
//     if (l$total_price != lOther$total_price) {
//       return false;
//     }
//     final l$discount = discount;
//     final lOther$discount = other.discount;
//     if (l$discount != lOther$discount) {
//       return false;
//     }
//     final l$discount_value = discount_value;
//     final lOther$discount_value = other.discount_value;
//     if (l$discount_value != lOther$discount_value) {
//       return false;
//     }
//     final l$vat = vat;
//     final lOther$vat = other.vat;
//     if (l$vat != lOther$vat) {
//       return false;
//     }
//     final l$vat_value = vat_value;
//     final lOther$vat_value = other.vat_value;
//     if (l$vat_value != lOther$vat_value) {
//       return false;
//     }
//     final l$coupon = coupon;
//     final lOther$coupon = other.coupon;
//     if (l$coupon != lOther$coupon) {
//       return false;
//     }
//     final l$puncher = puncher;
//     final lOther$puncher = other.puncher;
//     if (l$puncher != lOther$puncher) {
//       return false;
//     }
//     final l$company = company;
//     final lOther$company = other.company;
//     if (l$company != lOther$company) {
//       return false;
//     }
//     final l$status = status;
//     final lOther$status = other.status;
//     if (l$status != lOther$status) {
//       return false;
//     }
//     final l$name = name;
//     final lOther$name = other.name;
//     if (l$name != lOther$name) {
//       return false;
//     }
//     final l$products = products;
//     final lOther$products = other.products;
//     if (l$products != null && lOther$products != null) {
//       if (l$products.length != lOther$products.length) {
//         return false;
//       }
//       for (int i = 0; i < l$products.length; i++) {
//         final l$products$entry = l$products[i];
//         final lOther$products$entry = lOther$products[i];
//         if (l$products$entry != lOther$products$entry) {
//           return false;
//         }
//       }
//     } else if (l$products != lOther$products) {
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
// extension UtilityExtensionQueryOrdersordersdata on QueryOrdersordersdata {
//   CopyWithQueryOrdersordersdata<QueryOrdersordersdata> get copyWith =>
//       CopyWithQueryOrdersordersdata(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryOrdersordersdata<TRes> {
//   factory CopyWithQueryOrdersordersdata(
//     QueryOrdersordersdata instance,
//     TRes Function(QueryOrdersordersdata) then,
//   ) = _CopyWithImplQueryOrdersordersdata;
//
//   factory CopyWithQueryOrdersordersdata.stub(TRes res) =
//       _CopyWithStubImplQueryOrdersordersdata;
//
//   TRes call({
//     String? id,
//     QueryOrdersordersdatauser? user,
//     String? reference_number,
//     double? price,
//     double? total_price,
//     double? discount,
//     double? discount_value,
//     double? vat,
//     double? vat_value,
//     QueryOrdersordersdatacoupon? coupon,
//     QueryOrdersordersdatapuncher? puncher,
//     QueryOrdersordersdatacompany? company,
//     int? status,
//     String? name,
//     List<QueryOrdersordersdataproducts>? products,
//     String? created_at,
//     String? $__typename,
//   });
//   CopyWithQueryOrdersordersdatauser<TRes> get user;
//   CopyWithQueryOrdersordersdatacoupon<TRes> get coupon;
//   CopyWithQueryOrdersordersdatapuncher<TRes> get puncher;
//   CopyWithQueryOrdersordersdatacompany<TRes> get company;
//   TRes products(
//       Iterable<QueryOrdersordersdataproducts>? Function(
//               Iterable<
//                   CopyWithQueryOrdersordersdataproducts<
//                       QueryOrdersordersdataproducts>>?)
//           _fn);
// }
//
// class _CopyWithImplQueryOrdersordersdata<TRes>
//     implements CopyWithQueryOrdersordersdata<TRes> {
//   _CopyWithImplQueryOrdersordersdata(
//     this._instance,
//     this._then,
//   );
//
//   final QueryOrdersordersdata _instance;
//
//   final TRes Function(QueryOrdersordersdata) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? user = _undefined,
//     Object? reference_number = _undefined,
//     Object? price = _undefined,
//     Object? total_price = _undefined,
//     Object? discount = _undefined,
//     Object? discount_value = _undefined,
//     Object? vat = _undefined,
//     Object? vat_value = _undefined,
//     Object? coupon = _undefined,
//     Object? puncher = _undefined,
//     Object? company = _undefined,
//     Object? status = _undefined,
//     Object? name = _undefined,
//     Object? products = _undefined,
//     Object? created_at = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryOrdersordersdata(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         user: user == _undefined
//             ? _instance.user
//             : (user as QueryOrdersordersdatauser?),
//         reference_number: reference_number == _undefined
//             ? _instance.reference_number
//             : (reference_number as String?),
//         price: price == _undefined ? _instance.price : (price as double?),
//         total_price: total_price == _undefined
//             ? _instance.total_price
//             : (total_price as double?),
//         discount:
//             discount == _undefined ? _instance.discount : (discount as double?),
//         discount_value: discount_value == _undefined
//             ? _instance.discount_value
//             : (discount_value as double?),
//         vat: vat == _undefined ? _instance.vat : (vat as double?),
//         vat_value: vat_value == _undefined
//             ? _instance.vat_value
//             : (vat_value as double?),
//         coupon: coupon == _undefined
//             ? _instance.coupon
//             : (coupon as QueryOrdersordersdatacoupon?),
//         puncher: puncher == _undefined
//             ? _instance.puncher
//             : (puncher as QueryOrdersordersdatapuncher?),
//         company: company == _undefined
//             ? _instance.company
//             : (company as QueryOrdersordersdatacompany?),
//         status: status == _undefined ? _instance.status : (status as int?),
//         name: name == _undefined ? _instance.name : (name as String?),
//         products: products == _undefined
//             ? _instance.products
//             : (products as List<QueryOrdersordersdataproducts>?),
//         created_at: created_at == _undefined
//             ? _instance.created_at
//             : (created_at as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryOrdersordersdatauser<TRes> get user {
//     final local$user = _instance.user;
//     return local$user == null
//         ? CopyWithQueryOrdersordersdatauser.stub(_then(_instance))
//         : CopyWithQueryOrdersordersdatauser(local$user, (e) => call(user: e));
//   }
//
//   CopyWithQueryOrdersordersdatacoupon<TRes> get coupon {
//     final local$coupon = _instance.coupon;
//     return local$coupon == null
//         ? CopyWithQueryOrdersordersdatacoupon.stub(_then(_instance))
//         : CopyWithQueryOrdersordersdatacoupon(
//             local$coupon, (e) => call(coupon: e));
//   }
//
//   CopyWithQueryOrdersordersdatapuncher<TRes> get puncher {
//     final local$puncher = _instance.puncher;
//     return local$puncher == null
//         ? CopyWithQueryOrdersordersdatapuncher.stub(_then(_instance))
//         : CopyWithQueryOrdersordersdatapuncher(
//             local$puncher, (e) => call(puncher: e));
//   }
//
//   CopyWithQueryOrdersordersdatacompany<TRes> get company {
//     final local$company = _instance.company;
//     return local$company == null
//         ? CopyWithQueryOrdersordersdatacompany.stub(_then(_instance))
//         : CopyWithQueryOrdersordersdatacompany(
//             local$company, (e) => call(company: e));
//   }
//
//   TRes products(
//           Iterable<QueryOrdersordersdataproducts>? Function(
//                   Iterable<
//                       CopyWithQueryOrdersordersdataproducts<
//                           QueryOrdersordersdataproducts>>?)
//               _fn) =>
//       call(
//           products: _fn(_instance.products
//               ?.map((e) => CopyWithQueryOrdersordersdataproducts(
//                     e,
//                     (i) => i,
//                   )))?.toList());
// }
//
// class _CopyWithStubImplQueryOrdersordersdata<TRes>
//     implements CopyWithQueryOrdersordersdata<TRes> {
//   _CopyWithStubImplQueryOrdersordersdata(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     QueryOrdersordersdatauser? user,
//     String? reference_number,
//     double? price,
//     double? total_price,
//     double? discount,
//     double? discount_value,
//     double? vat,
//     double? vat_value,
//     QueryOrdersordersdatacoupon? coupon,
//     QueryOrdersordersdatapuncher? puncher,
//     QueryOrdersordersdatacompany? company,
//     int? status,
//     String? name,
//     List<QueryOrdersordersdataproducts>? products,
//     String? created_at,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryOrdersordersdatauser<TRes> get user =>
//       CopyWithQueryOrdersordersdatauser.stub(_res);
//
//   CopyWithQueryOrdersordersdatacoupon<TRes> get coupon =>
//       CopyWithQueryOrdersordersdatacoupon.stub(_res);
//
//   CopyWithQueryOrdersordersdatapuncher<TRes> get puncher =>
//       CopyWithQueryOrdersordersdatapuncher.stub(_res);
//
//   CopyWithQueryOrdersordersdatacompany<TRes> get company =>
//       CopyWithQueryOrdersordersdatacompany.stub(_res);
//
//   products(_fn) => _res;
// }
//
// class QueryOrdersordersdatauser {
//   QueryOrdersordersdatauser({
//     required this.id,
//     this.name,
//     this.national_id,
//     this.mobile,
//     this.gender,
//     this.image_path,
//     this.wallet_limit,
//     this.type,
//     this.email,
//     this.$__typename = 'User',
//   });
//
//   factory QueryOrdersordersdatauser.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$national_id = json['national_id'];
//     final l$mobile = json['mobile'];
//     final l$gender = json['gender'];
//     final l$image_path = json['image_path'];
//     final l$wallet_limit = json['wallet_limit'];
//     final l$type = json['type'];
//     final l$email = json['email'];
//     final l$$__typename = json['__typename'];
//     return QueryOrdersordersdatauser(
//       id: (l$id as String),
//       name: (l$name as String?),
//       national_id: (l$national_id as String?),
//       mobile: (l$mobile as String?),
//       gender: (l$gender as String?),
//       image_path: (l$image_path as String?),
//       wallet_limit: (l$wallet_limit as num?)?.toDouble(),
//       type: (l$type as String?),
//       email: (l$email as String?),
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
//   final String? mobile;
//
//   final String? gender;
//
//   final String? image_path;
//
//   final double? wallet_limit;
//
//   final String? type;
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
//     final l$national_id = national_id;
//     _resultData['national_id'] = l$national_id;
//     final l$mobile = mobile;
//     _resultData['mobile'] = l$mobile;
//     final l$gender = gender;
//     _resultData['gender'] = l$gender;
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$wallet_limit = wallet_limit;
//     _resultData['wallet_limit'] = l$wallet_limit;
//     final l$type = type;
//     _resultData['type'] = l$type;
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
//     final l$national_id = national_id;
//     final l$mobile = mobile;
//     final l$gender = gender;
//     final l$image_path = image_path;
//     final l$wallet_limit = wallet_limit;
//     final l$type = type;
//     final l$email = email;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$name,
//       l$national_id,
//       l$mobile,
//       l$gender,
//       l$image_path,
//       l$wallet_limit,
//       l$type,
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
//     if (!(other is QueryOrdersordersdatauser) ||
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
//     final l$mobile = mobile;
//     final lOther$mobile = other.mobile;
//     if (l$mobile != lOther$mobile) {
//       return false;
//     }
//     final l$gender = gender;
//     final lOther$gender = other.gender;
//     if (l$gender != lOther$gender) {
//       return false;
//     }
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
//       return false;
//     }
//     final l$wallet_limit = wallet_limit;
//     final lOther$wallet_limit = other.wallet_limit;
//     if (l$wallet_limit != lOther$wallet_limit) {
//       return false;
//     }
//     final l$type = type;
//     final lOther$type = other.type;
//     if (l$type != lOther$type) {
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
// extension UtilityExtensionQueryOrdersordersdatauser
//     on QueryOrdersordersdatauser {
//   CopyWithQueryOrdersordersdatauser<QueryOrdersordersdatauser> get copyWith =>
//       CopyWithQueryOrdersordersdatauser(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryOrdersordersdatauser<TRes> {
//   factory CopyWithQueryOrdersordersdatauser(
//     QueryOrdersordersdatauser instance,
//     TRes Function(QueryOrdersordersdatauser) then,
//   ) = _CopyWithImplQueryOrdersordersdatauser;
//
//   factory CopyWithQueryOrdersordersdatauser.stub(TRes res) =
//       _CopyWithStubImplQueryOrdersordersdatauser;
//
//   TRes call({
//     String? id,
//     String? name,
//     String? national_id,
//     String? mobile,
//     String? gender,
//     String? image_path,
//     double? wallet_limit,
//     String? type,
//     String? email,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryOrdersordersdatauser<TRes>
//     implements CopyWithQueryOrdersordersdatauser<TRes> {
//   _CopyWithImplQueryOrdersordersdatauser(
//     this._instance,
//     this._then,
//   );
//
//   final QueryOrdersordersdatauser _instance;
//
//   final TRes Function(QueryOrdersordersdatauser) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? name = _undefined,
//     Object? national_id = _undefined,
//     Object? mobile = _undefined,
//     Object? gender = _undefined,
//     Object? image_path = _undefined,
//     Object? wallet_limit = _undefined,
//     Object? type = _undefined,
//     Object? email = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryOrdersordersdatauser(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         name: name == _undefined ? _instance.name : (name as String?),
//         national_id: national_id == _undefined
//             ? _instance.national_id
//             : (national_id as String?),
//         mobile: mobile == _undefined ? _instance.mobile : (mobile as String?),
//         gender: gender == _undefined ? _instance.gender : (gender as String?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         wallet_limit: wallet_limit == _undefined
//             ? _instance.wallet_limit
//             : (wallet_limit as double?),
//         type: type == _undefined ? _instance.type : (type as String?),
//         email: email == _undefined ? _instance.email : (email as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryOrdersordersdatauser<TRes>
//     implements CopyWithQueryOrdersordersdatauser<TRes> {
//   _CopyWithStubImplQueryOrdersordersdatauser(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? name,
//     String? national_id,
//     String? mobile,
//     String? gender,
//     String? image_path,
//     double? wallet_limit,
//     String? type,
//     String? email,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryOrdersordersdatacoupon {
//   QueryOrdersordersdatacoupon({
//     required this.id,
//     required this.title,
//     required this.discount,
//     this.code,
//     this.$__typename = 'Coupon',
//   });
//
//   factory QueryOrdersordersdatacoupon.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$discount = json['discount'];
//     final l$code = json['code'];
//     final l$$__typename = json['__typename'];
//     return QueryOrdersordersdatacoupon(
//       id: (l$id as String),
//       title: (l$title as String),
//       discount: (l$discount as num).toDouble(),
//       code: (l$code as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String title;
//
//   final double discount;
//
//   final String? code;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$title = title;
//     _resultData['title'] = l$title;
//     final l$discount = discount;
//     _resultData['discount'] = l$discount;
//     final l$code = code;
//     _resultData['code'] = l$code;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$title = title;
//     final l$discount = discount;
//     final l$code = code;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$discount,
//       l$code,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryOrdersordersdatacoupon) ||
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
//     final l$discount = discount;
//     final lOther$discount = other.discount;
//     if (l$discount != lOther$discount) {
//       return false;
//     }
//     final l$code = code;
//     final lOther$code = other.code;
//     if (l$code != lOther$code) {
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
// extension UtilityExtensionQueryOrdersordersdatacoupon
//     on QueryOrdersordersdatacoupon {
//   CopyWithQueryOrdersordersdatacoupon<QueryOrdersordersdatacoupon>
//       get copyWith => CopyWithQueryOrdersordersdatacoupon(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryOrdersordersdatacoupon<TRes> {
//   factory CopyWithQueryOrdersordersdatacoupon(
//     QueryOrdersordersdatacoupon instance,
//     TRes Function(QueryOrdersordersdatacoupon) then,
//   ) = _CopyWithImplQueryOrdersordersdatacoupon;
//
//   factory CopyWithQueryOrdersordersdatacoupon.stub(TRes res) =
//       _CopyWithStubImplQueryOrdersordersdatacoupon;
//
//   TRes call({
//     String? id,
//     String? title,
//     double? discount,
//     String? code,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryOrdersordersdatacoupon<TRes>
//     implements CopyWithQueryOrdersordersdatacoupon<TRes> {
//   _CopyWithImplQueryOrdersordersdatacoupon(
//     this._instance,
//     this._then,
//   );
//
//   final QueryOrdersordersdatacoupon _instance;
//
//   final TRes Function(QueryOrdersordersdatacoupon) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? discount = _undefined,
//     Object? code = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryOrdersordersdatacoupon(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined || title == null
//             ? _instance.title
//             : (title as String),
//         discount: discount == _undefined || discount == null
//             ? _instance.discount
//             : (discount as double),
//         code: code == _undefined ? _instance.code : (code as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryOrdersordersdatacoupon<TRes>
//     implements CopyWithQueryOrdersordersdatacoupon<TRes> {
//   _CopyWithStubImplQueryOrdersordersdatacoupon(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     double? discount,
//     String? code,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryOrdersordersdatapuncher {
//   QueryOrdersordersdatapuncher({
//     required this.id,
//     this.name,
//     this.mobile,
//     this.email,
//     this.imageUrl,
//     this.$__typename = 'Puncher',
//   });
//
//   factory QueryOrdersordersdatapuncher.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$mobile = json['mobile'];
//     final l$email = json['email'];
//     final l$imageUrl = json['imageUrl'];
//     final l$$__typename = json['__typename'];
//     return QueryOrdersordersdatapuncher(
//       id: (l$id as String),
//       name: (l$name as String?),
//       mobile: (l$mobile as String?),
//       email: (l$email as String?),
//       imageUrl: (l$imageUrl as String?),
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
//     final l$mobile = mobile;
//     _resultData['mobile'] = l$mobile;
//     final l$email = email;
//     _resultData['email'] = l$email;
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
//     final l$mobile = mobile;
//     final l$email = email;
//     final l$imageUrl = imageUrl;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$name,
//       l$mobile,
//       l$email,
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
//     if (!(other is QueryOrdersordersdatapuncher) ||
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
// extension UtilityExtensionQueryOrdersordersdatapuncher
//     on QueryOrdersordersdatapuncher {
//   CopyWithQueryOrdersordersdatapuncher<QueryOrdersordersdatapuncher>
//       get copyWith => CopyWithQueryOrdersordersdatapuncher(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryOrdersordersdatapuncher<TRes> {
//   factory CopyWithQueryOrdersordersdatapuncher(
//     QueryOrdersordersdatapuncher instance,
//     TRes Function(QueryOrdersordersdatapuncher) then,
//   ) = _CopyWithImplQueryOrdersordersdatapuncher;
//
//   factory CopyWithQueryOrdersordersdatapuncher.stub(TRes res) =
//       _CopyWithStubImplQueryOrdersordersdatapuncher;
//
//   TRes call({
//     String? id,
//     String? name,
//     String? mobile,
//     String? email,
//     String? imageUrl,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryOrdersordersdatapuncher<TRes>
//     implements CopyWithQueryOrdersordersdatapuncher<TRes> {
//   _CopyWithImplQueryOrdersordersdatapuncher(
//     this._instance,
//     this._then,
//   );
//
//   final QueryOrdersordersdatapuncher _instance;
//
//   final TRes Function(QueryOrdersordersdatapuncher) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? name = _undefined,
//     Object? mobile = _undefined,
//     Object? email = _undefined,
//     Object? imageUrl = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryOrdersordersdatapuncher(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         name: name == _undefined ? _instance.name : (name as String?),
//         mobile: mobile == _undefined ? _instance.mobile : (mobile as String?),
//         email: email == _undefined ? _instance.email : (email as String?),
//         imageUrl:
//             imageUrl == _undefined ? _instance.imageUrl : (imageUrl as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryOrdersordersdatapuncher<TRes>
//     implements CopyWithQueryOrdersordersdatapuncher<TRes> {
//   _CopyWithStubImplQueryOrdersordersdatapuncher(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? name,
//     String? mobile,
//     String? email,
//     String? imageUrl,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryOrdersordersdatacompany {
//   QueryOrdersordersdatacompany({
//     this.id,
//     this.name,
//     this.$__typename = 'Company',
//   });
//
//   factory QueryOrdersordersdatacompany.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$$__typename = json['__typename'];
//     return QueryOrdersordersdatacompany(
//       id: (l$id as String?),
//       name: (l$name as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String? id;
//
//   final String? name;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$name = name;
//     _resultData['name'] = l$name;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$name = name;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$name,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryOrdersordersdatacompany) ||
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
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionQueryOrdersordersdatacompany
//     on QueryOrdersordersdatacompany {
//   CopyWithQueryOrdersordersdatacompany<QueryOrdersordersdatacompany>
//       get copyWith => CopyWithQueryOrdersordersdatacompany(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryOrdersordersdatacompany<TRes> {
//   factory CopyWithQueryOrdersordersdatacompany(
//     QueryOrdersordersdatacompany instance,
//     TRes Function(QueryOrdersordersdatacompany) then,
//   ) = _CopyWithImplQueryOrdersordersdatacompany;
//
//   factory CopyWithQueryOrdersordersdatacompany.stub(TRes res) =
//       _CopyWithStubImplQueryOrdersordersdatacompany;
//
//   TRes call({
//     String? id,
//     String? name,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryOrdersordersdatacompany<TRes>
//     implements CopyWithQueryOrdersordersdatacompany<TRes> {
//   _CopyWithImplQueryOrdersordersdatacompany(
//     this._instance,
//     this._then,
//   );
//
//   final QueryOrdersordersdatacompany _instance;
//
//   final TRes Function(QueryOrdersordersdatacompany) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? name = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryOrdersordersdatacompany(
//         id: id == _undefined ? _instance.id : (id as String?),
//         name: name == _undefined ? _instance.name : (name as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryOrdersordersdatacompany<TRes>
//     implements CopyWithQueryOrdersordersdatacompany<TRes> {
//   _CopyWithStubImplQueryOrdersordersdatacompany(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? name,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryOrdersordersdataproducts {
//   QueryOrdersordersdataproducts({
//     this.product,
//     this.unit_price,
//     this.total_price,
//     this.quantity,
//     this.discount,
//     this.discount_value,
//     this.$__typename = 'OrderProduct',
//   });
//
//   factory QueryOrdersordersdataproducts.fromJson(Map<String, dynamic> json) {
//     final l$product = json['product'];
//     final l$unit_price = json['unit_price'];
//     final l$total_price = json['total_price'];
//     final l$quantity = json['quantity'];
//     final l$discount = json['discount'];
//     final l$discount_value = json['discount_value'];
//     final l$$__typename = json['__typename'];
//     return QueryOrdersordersdataproducts(
//       product: l$product == null
//           ? null
//           : QueryOrdersordersdataproductsproduct.fromJson(
//               (l$product as Map<String, dynamic>)),
//       unit_price: (l$unit_price as num?)?.toDouble(),
//       total_price: (l$total_price as num?)?.toDouble(),
//       quantity: (l$quantity as int?),
//       discount: (l$discount as num?)?.toDouble(),
//       discount_value: (l$discount_value as num?)?.toDouble(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryOrdersordersdataproductsproduct? product;
//
//   final double? unit_price;
//
//   final double? total_price;
//
//   final int? quantity;
//
//   final double? discount;
//
//   final double? discount_value;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$product = product;
//     _resultData['product'] = l$product?.toJson();
//     final l$unit_price = unit_price;
//     _resultData['unit_price'] = l$unit_price;
//     final l$total_price = total_price;
//     _resultData['total_price'] = l$total_price;
//     final l$quantity = quantity;
//     _resultData['quantity'] = l$quantity;
//     final l$discount = discount;
//     _resultData['discount'] = l$discount;
//     final l$discount_value = discount_value;
//     _resultData['discount_value'] = l$discount_value;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$product = product;
//     final l$unit_price = unit_price;
//     final l$total_price = total_price;
//     final l$quantity = quantity;
//     final l$discount = discount;
//     final l$discount_value = discount_value;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$product,
//       l$unit_price,
//       l$total_price,
//       l$quantity,
//       l$discount,
//       l$discount_value,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryOrdersordersdataproducts) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$product = product;
//     final lOther$product = other.product;
//     if (l$product != lOther$product) {
//       return false;
//     }
//     final l$unit_price = unit_price;
//     final lOther$unit_price = other.unit_price;
//     if (l$unit_price != lOther$unit_price) {
//       return false;
//     }
//     final l$total_price = total_price;
//     final lOther$total_price = other.total_price;
//     if (l$total_price != lOther$total_price) {
//       return false;
//     }
//     final l$quantity = quantity;
//     final lOther$quantity = other.quantity;
//     if (l$quantity != lOther$quantity) {
//       return false;
//     }
//     final l$discount = discount;
//     final lOther$discount = other.discount;
//     if (l$discount != lOther$discount) {
//       return false;
//     }
//     final l$discount_value = discount_value;
//     final lOther$discount_value = other.discount_value;
//     if (l$discount_value != lOther$discount_value) {
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
// extension UtilityExtensionQueryOrdersordersdataproducts
//     on QueryOrdersordersdataproducts {
//   CopyWithQueryOrdersordersdataproducts<QueryOrdersordersdataproducts>
//       get copyWith => CopyWithQueryOrdersordersdataproducts(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryOrdersordersdataproducts<TRes> {
//   factory CopyWithQueryOrdersordersdataproducts(
//     QueryOrdersordersdataproducts instance,
//     TRes Function(QueryOrdersordersdataproducts) then,
//   ) = _CopyWithImplQueryOrdersordersdataproducts;
//
//   factory CopyWithQueryOrdersordersdataproducts.stub(TRes res) =
//       _CopyWithStubImplQueryOrdersordersdataproducts;
//
//   TRes call({
//     QueryOrdersordersdataproductsproduct? product,
//     double? unit_price,
//     double? total_price,
//     int? quantity,
//     double? discount,
//     double? discount_value,
//     String? $__typename,
//   });
//   CopyWithQueryOrdersordersdataproductsproduct<TRes> get product;
// }
//
// class _CopyWithImplQueryOrdersordersdataproducts<TRes>
//     implements CopyWithQueryOrdersordersdataproducts<TRes> {
//   _CopyWithImplQueryOrdersordersdataproducts(
//     this._instance,
//     this._then,
//   );
//
//   final QueryOrdersordersdataproducts _instance;
//
//   final TRes Function(QueryOrdersordersdataproducts) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? product = _undefined,
//     Object? unit_price = _undefined,
//     Object? total_price = _undefined,
//     Object? quantity = _undefined,
//     Object? discount = _undefined,
//     Object? discount_value = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryOrdersordersdataproducts(
//         product: product == _undefined
//             ? _instance.product
//             : (product as QueryOrdersordersdataproductsproduct?),
//         unit_price: unit_price == _undefined
//             ? _instance.unit_price
//             : (unit_price as double?),
//         total_price: total_price == _undefined
//             ? _instance.total_price
//             : (total_price as double?),
//         quantity:
//             quantity == _undefined ? _instance.quantity : (quantity as int?),
//         discount:
//             discount == _undefined ? _instance.discount : (discount as double?),
//         discount_value: discount_value == _undefined
//             ? _instance.discount_value
//             : (discount_value as double?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryOrdersordersdataproductsproduct<TRes> get product {
//     final local$product = _instance.product;
//     return local$product == null
//         ? CopyWithQueryOrdersordersdataproductsproduct.stub(_then(_instance))
//         : CopyWithQueryOrdersordersdataproductsproduct(
//             local$product, (e) => call(product: e));
//   }
// }
//
// class _CopyWithStubImplQueryOrdersordersdataproducts<TRes>
//     implements CopyWithQueryOrdersordersdataproducts<TRes> {
//   _CopyWithStubImplQueryOrdersordersdataproducts(this._res);
//
//   TRes _res;
//
//   call({
//     QueryOrdersordersdataproductsproduct? product,
//     double? unit_price,
//     double? total_price,
//     int? quantity,
//     double? discount,
//     double? discount_value,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryOrdersordersdataproductsproduct<TRes> get product =>
//       CopyWithQueryOrdersordersdataproductsproduct.stub(_res);
// }
//
// class QueryOrdersordersdataproductsproduct {
//   QueryOrdersordersdataproductsproduct({
//     required this.id,
//     this.title,
//     this.price,
//     this.image_path,
//     this.discount,
//     this.$__typename = 'Product',
//   });
//
//   factory QueryOrdersordersdataproductsproduct.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$price = json['price'];
//     final l$image_path = json['image_path'];
//     final l$discount = json['discount'];
//     final l$$__typename = json['__typename'];
//     return QueryOrdersordersdataproductsproduct(
//       id: (l$id as String),
//       title: (l$title as String?),
//       price: (l$price as num?)?.toDouble(),
//       image_path: (l$image_path as String?),
//       discount: (l$discount as num?)?.toDouble(),
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
//   final String? image_path;
//
//   final double? discount;
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
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$discount = discount;
//     _resultData['discount'] = l$discount;
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
//     final l$image_path = image_path;
//     final l$discount = discount;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$price,
//       l$image_path,
//       l$discount,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryOrdersordersdataproductsproduct) ||
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
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
//       return false;
//     }
//     final l$discount = discount;
//     final lOther$discount = other.discount;
//     if (l$discount != lOther$discount) {
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
// extension UtilityExtensionQueryOrdersordersdataproductsproduct
//     on QueryOrdersordersdataproductsproduct {
//   CopyWithQueryOrdersordersdataproductsproduct<
//           QueryOrdersordersdataproductsproduct>
//       get copyWith => CopyWithQueryOrdersordersdataproductsproduct(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryOrdersordersdataproductsproduct<TRes> {
//   factory CopyWithQueryOrdersordersdataproductsproduct(
//     QueryOrdersordersdataproductsproduct instance,
//     TRes Function(QueryOrdersordersdataproductsproduct) then,
//   ) = _CopyWithImplQueryOrdersordersdataproductsproduct;
//
//   factory CopyWithQueryOrdersordersdataproductsproduct.stub(TRes res) =
//       _CopyWithStubImplQueryOrdersordersdataproductsproduct;
//
//   TRes call({
//     String? id,
//     String? title,
//     double? price,
//     String? image_path,
//     double? discount,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryOrdersordersdataproductsproduct<TRes>
//     implements CopyWithQueryOrdersordersdataproductsproduct<TRes> {
//   _CopyWithImplQueryOrdersordersdataproductsproduct(
//     this._instance,
//     this._then,
//   );
//
//   final QueryOrdersordersdataproductsproduct _instance;
//
//   final TRes Function(QueryOrdersordersdataproductsproduct) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? price = _undefined,
//     Object? image_path = _undefined,
//     Object? discount = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryOrdersordersdataproductsproduct(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined ? _instance.title : (title as String?),
//         price: price == _undefined ? _instance.price : (price as double?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         discount:
//             discount == _undefined ? _instance.discount : (discount as double?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryOrdersordersdataproductsproduct<TRes>
//     implements CopyWithQueryOrdersordersdataproductsproduct<TRes> {
//   _CopyWithStubImplQueryOrdersordersdataproductsproduct(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     double? price,
//     String? image_path,
//     double? discount,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesQueryOrderById {
//   factory VariablesQueryOrderById({String? referenceNumber}) =>
//       VariablesQueryOrderById._({
//         if (referenceNumber != null) r'referenceNumber': referenceNumber,
//       });
//
//   VariablesQueryOrderById._(this._$data);
//
//   factory VariablesQueryOrderById.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     if (data.containsKey('referenceNumber')) {
//       final l$referenceNumber = data['referenceNumber'];
//       result$data['referenceNumber'] = (l$referenceNumber as String?);
//     }
//     return VariablesQueryOrderById._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   String? get referenceNumber => (_$data['referenceNumber'] as String?);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     if (_$data.containsKey('referenceNumber')) {
//       final l$referenceNumber = referenceNumber;
//       result$data['referenceNumber'] = l$referenceNumber;
//     }
//     return result$data;
//   }
//
//   CopyWithVariablesQueryOrderById<VariablesQueryOrderById> get copyWith =>
//       CopyWithVariablesQueryOrderById(
//         this,
//         (i) => i,
//       );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesQueryOrderById) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$referenceNumber = referenceNumber;
//     final lOther$referenceNumber = other.referenceNumber;
//     if (_$data.containsKey('referenceNumber') !=
//         other._$data.containsKey('referenceNumber')) {
//       return false;
//     }
//     if (l$referenceNumber != lOther$referenceNumber) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$referenceNumber = referenceNumber;
//     return Object.hashAll(
//         [_$data.containsKey('referenceNumber') ? l$referenceNumber : const {}]);
//   }
// }
//
// abstract class CopyWithVariablesQueryOrderById<TRes> {
//   factory CopyWithVariablesQueryOrderById(
//     VariablesQueryOrderById instance,
//     TRes Function(VariablesQueryOrderById) then,
//   ) = _CopyWithImplVariablesQueryOrderById;
//
//   factory CopyWithVariablesQueryOrderById.stub(TRes res) =
//       _CopyWithStubImplVariablesQueryOrderById;
//
//   TRes call({String? referenceNumber});
// }
//
// class _CopyWithImplVariablesQueryOrderById<TRes>
//     implements CopyWithVariablesQueryOrderById<TRes> {
//   _CopyWithImplVariablesQueryOrderById(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesQueryOrderById _instance;
//
//   final TRes Function(VariablesQueryOrderById) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? referenceNumber = _undefined}) =>
//       _then(VariablesQueryOrderById._({
//         ..._instance._$data,
//         if (referenceNumber != _undefined)
//           'referenceNumber': (referenceNumber as String?),
//       }));
// }
//
// class _CopyWithStubImplVariablesQueryOrderById<TRes>
//     implements CopyWithVariablesQueryOrderById<TRes> {
//   _CopyWithStubImplVariablesQueryOrderById(this._res);
//
//   TRes _res;
//
//   call({String? referenceNumber}) => _res;
// }
//
// class QueryOrderById {
//   QueryOrderById({
//     required this.orderById,
//     this.$__typename = 'Query',
//   });
//
//   factory QueryOrderById.fromJson(Map<String, dynamic> json) {
//     final l$orderById = json['orderById'];
//     final l$$__typename = json['__typename'];
//     return QueryOrderById(
//       orderById: QueryOrderByIdorderById.fromJson(
//           (l$orderById as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryOrderByIdorderById orderById;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$orderById = orderById;
//     _resultData['orderById'] = l$orderById.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$orderById = orderById;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$orderById,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryOrderById) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$orderById = orderById;
//     final lOther$orderById = other.orderById;
//     if (l$orderById != lOther$orderById) {
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
// extension UtilityExtensionQueryOrderById on QueryOrderById {
//   CopyWithQueryOrderById<QueryOrderById> get copyWith => CopyWithQueryOrderById(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryOrderById<TRes> {
//   factory CopyWithQueryOrderById(
//     QueryOrderById instance,
//     TRes Function(QueryOrderById) then,
//   ) = _CopyWithImplQueryOrderById;
//
//   factory CopyWithQueryOrderById.stub(TRes res) =
//       _CopyWithStubImplQueryOrderById;
//
//   TRes call({
//     QueryOrderByIdorderById? orderById,
//     String? $__typename,
//   });
//   CopyWithQueryOrderByIdorderById<TRes> get orderById;
// }
//
// class _CopyWithImplQueryOrderById<TRes>
//     implements CopyWithQueryOrderById<TRes> {
//   _CopyWithImplQueryOrderById(
//     this._instance,
//     this._then,
//   );
//
//   final QueryOrderById _instance;
//
//   final TRes Function(QueryOrderById) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? orderById = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryOrderById(
//         orderById: orderById == _undefined || orderById == null
//             ? _instance.orderById
//             : (orderById as QueryOrderByIdorderById),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryOrderByIdorderById<TRes> get orderById {
//     final local$orderById = _instance.orderById;
//     return CopyWithQueryOrderByIdorderById(
//         local$orderById, (e) => call(orderById: e));
//   }
// }
//
// class _CopyWithStubImplQueryOrderById<TRes>
//     implements CopyWithQueryOrderById<TRes> {
//   _CopyWithStubImplQueryOrderById(this._res);
//
//   TRes _res;
//
//   call({
//     QueryOrderByIdorderById? orderById,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryOrderByIdorderById<TRes> get orderById =>
//       CopyWithQueryOrderByIdorderById.stub(_res);
// }
//
// const documentNodeQueryOrderById = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.query,
//     name: NameNode(value: 'OrderById'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'referenceNumber')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: false,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       )
//     ],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'orderById'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'reference_number'),
//             value: VariableNode(name: NameNode(value: 'referenceNumber')),
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
//                 name: NameNode(value: 'national_id'),
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
//                 name: NameNode(value: 'gender'),
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
//                 name: NameNode(value: 'wallet_limit'),
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
//                 name: NameNode(value: 'email'),
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
//             name: NameNode(value: 'reference_number'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'price'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'total_price'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'discount'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'discount_value'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'vat'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'vat_value'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'coupon'),
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
//                 name: NameNode(value: 'discount'),
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
//                 name: NameNode(value: '__typename'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//             ]),
//           ),
//           FieldNode(
//             name: NameNode(value: 'puncher'),
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
//                 name: NameNode(value: 'mobile'),
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
//                 name: NameNode(value: 'imageUrl'),
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
//             name: NameNode(value: 'company'),
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
//                 name: NameNode(value: '__typename'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//             ]),
//           ),
//           FieldNode(
//             name: NameNode(value: 'status'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'name'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'products'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: SelectionSetNode(selections: [
//               FieldNode(
//                 name: NameNode(value: 'product'),
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
//                     name: NameNode(value: 'price'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'image_path'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'discount'),
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
//                 name: NameNode(value: 'unit_price'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'total_price'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'quantity'),
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
//                 name: NameNode(value: 'discount_value'),
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
//             name: NameNode(value: 'created_at'),
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
// QueryOrderById _parserFnQueryOrderById(Map<String, dynamic> data) =>
//     QueryOrderById.fromJson(data);
// typedef OnQueryCompleteQueryOrderById = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   QueryOrderById?,
// );
//
// class OptionsQueryOrderById extends graphql.QueryOptions<QueryOrderById> {
//   OptionsQueryOrderById({
//     String? operationName,
//     VariablesQueryOrderById? variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryOrderById? typedOptimisticResult,
//     Duration? pollInterval,
//     graphql.Context? context,
//     OnQueryCompleteQueryOrderById? onComplete,
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
//                     data == null ? null : _parserFnQueryOrderById(data),
//                   ),
//           onError: onError,
//           document: documentNodeQueryOrderById,
//           parserFn: _parserFnQueryOrderById,
//         );
//
//   final OnQueryCompleteQueryOrderById? onCompleteWithParsed;
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
// class WatchOptionsQueryOrderById
//     extends graphql.WatchQueryOptions<QueryOrderById> {
//   WatchOptionsQueryOrderById({
//     String? operationName,
//     VariablesQueryOrderById? variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryOrderById? typedOptimisticResult,
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
//           document: documentNodeQueryOrderById,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnQueryOrderById,
//         );
// }
//
// class FetchMoreOptionsQueryOrderById extends graphql.FetchMoreOptions {
//   FetchMoreOptionsQueryOrderById({
//     required graphql.UpdateQuery updateQuery,
//     VariablesQueryOrderById? variables,
//   }) : super(
//           updateQuery: updateQuery,
//           variables: variables?.toJson() ?? {},
//           document: documentNodeQueryOrderById,
//         );
// }
//
// extension ClientExtensionQueryOrderById on graphql.GraphQLClient {
//   Future<graphql.QueryResult<QueryOrderById>> queryOrderById(
//           [OptionsQueryOrderById? options]) async =>
//       await this.query(options ?? OptionsQueryOrderById());
//   graphql.ObservableQuery<QueryOrderById> watchQueryOrderById(
//           [WatchOptionsQueryOrderById? options]) =>
//       this.watchQuery(options ?? WatchOptionsQueryOrderById());
//   void writeQueryOrderById({
//     required QueryOrderById data,
//     VariablesQueryOrderById? variables,
//     bool broadcast = true,
//   }) =>
//       this.writeQuery(
//         graphql.Request(
//           operation: graphql.Operation(document: documentNodeQueryOrderById),
//           variables: variables?.toJson() ?? const {},
//         ),
//         data: data.toJson(),
//         broadcast: broadcast,
//       );
//   QueryOrderById? readQueryOrderById({
//     VariablesQueryOrderById? variables,
//     bool optimistic = true,
//   }) {
//     final result = this.readQuery(
//       graphql.Request(
//         operation: graphql.Operation(document: documentNodeQueryOrderById),
//         variables: variables?.toJson() ?? const {},
//       ),
//       optimistic: optimistic,
//     );
//     return result == null ? null : QueryOrderById.fromJson(result);
//   }
// }
//
// graphql_flutter.QueryHookResult<QueryOrderById> useQueryOrderById(
//         [OptionsQueryOrderById? options]) =>
//     graphql_flutter.useQuery(options ?? OptionsQueryOrderById());
// graphql.ObservableQuery<QueryOrderById> useWatchQueryOrderById(
//         [WatchOptionsQueryOrderById? options]) =>
//     graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryOrderById());
//
// class QueryOrderByIdWidget extends graphql_flutter.Query<QueryOrderById> {
//   QueryOrderByIdWidget({
//     widgets.Key? key,
//     OptionsQueryOrderById? options,
//     required graphql_flutter.QueryBuilder<QueryOrderById> builder,
//   }) : super(
//           key: key,
//           options: options ?? OptionsQueryOrderById(),
//           builder: builder,
//         );
// }
//
// class QueryOrderByIdorderById {
//   QueryOrderByIdorderById({
//     required this.id,
//     this.user,
//     this.reference_number,
//     this.price,
//     this.total_price,
//     this.discount,
//     this.discount_value,
//     this.vat,
//     this.vat_value,
//     this.coupon,
//     this.puncher,
//     this.company,
//     this.status,
//     this.name,
//     this.products,
//     this.created_at,
//     this.$__typename = 'Order',
//   });
//
//   factory QueryOrderByIdorderById.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$user = json['user'];
//     final l$reference_number = json['reference_number'];
//     final l$price = json['price'];
//     final l$total_price = json['total_price'];
//     final l$discount = json['discount'];
//     final l$discount_value = json['discount_value'];
//     final l$vat = json['vat'];
//     final l$vat_value = json['vat_value'];
//     final l$coupon = json['coupon'];
//     final l$puncher = json['puncher'];
//     final l$company = json['company'];
//     final l$status = json['status'];
//     final l$name = json['name'];
//     final l$products = json['products'];
//     final l$created_at = json['created_at'];
//     final l$$__typename = json['__typename'];
//     return QueryOrderByIdorderById(
//       id: (l$id as String),
//       user: l$user == null
//           ? null
//           : QueryOrderByIdorderByIduser.fromJson(
//               (l$user as Map<String, dynamic>)),
//       reference_number: (l$reference_number as String?),
//       price: (l$price as num?)?.toDouble(),
//       total_price: (l$total_price as num?)?.toDouble(),
//       discount: (l$discount as num?)?.toDouble(),
//       discount_value: (l$discount_value as num?)?.toDouble(),
//       vat: (l$vat as num?)?.toDouble(),
//       vat_value: (l$vat_value as num?)?.toDouble(),
//       coupon: l$coupon == null
//           ? null
//           : QueryOrderByIdorderByIdcoupon.fromJson(
//               (l$coupon as Map<String, dynamic>)),
//       puncher: l$puncher == null
//           ? null
//           : QueryOrderByIdorderByIdpuncher.fromJson(
//               (l$puncher as Map<String, dynamic>)),
//       company: l$company == null
//           ? null
//           : QueryOrderByIdorderByIdcompany.fromJson(
//               (l$company as Map<String, dynamic>)),
//       status: (l$status as int?),
//       name: (l$name as String?),
//       products: (l$products as List<dynamic>?)
//           ?.map((e) => QueryOrderByIdorderByIdproducts.fromJson(
//               (e as Map<String, dynamic>)))
//           .toList(),
//       created_at: (l$created_at as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final QueryOrderByIdorderByIduser? user;
//
//   final String? reference_number;
//
//   final double? price;
//
//   final double? total_price;
//
//   final double? discount;
//
//   final double? discount_value;
//
//   final double? vat;
//
//   final double? vat_value;
//
//   final QueryOrderByIdorderByIdcoupon? coupon;
//
//   final QueryOrderByIdorderByIdpuncher? puncher;
//
//   final QueryOrderByIdorderByIdcompany? company;
//
//   final int? status;
//
//   final String? name;
//
//   final List<QueryOrderByIdorderByIdproducts>? products;
//
//   final String? created_at;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$user = user;
//     _resultData['user'] = l$user?.toJson();
//     final l$reference_number = reference_number;
//     _resultData['reference_number'] = l$reference_number;
//     final l$price = price;
//     _resultData['price'] = l$price;
//     final l$total_price = total_price;
//     _resultData['total_price'] = l$total_price;
//     final l$discount = discount;
//     _resultData['discount'] = l$discount;
//     final l$discount_value = discount_value;
//     _resultData['discount_value'] = l$discount_value;
//     final l$vat = vat;
//     _resultData['vat'] = l$vat;
//     final l$vat_value = vat_value;
//     _resultData['vat_value'] = l$vat_value;
//     final l$coupon = coupon;
//     _resultData['coupon'] = l$coupon?.toJson();
//     final l$puncher = puncher;
//     _resultData['puncher'] = l$puncher?.toJson();
//     final l$company = company;
//     _resultData['company'] = l$company?.toJson();
//     final l$status = status;
//     _resultData['status'] = l$status;
//     final l$name = name;
//     _resultData['name'] = l$name;
//     final l$products = products;
//     _resultData['products'] = l$products?.map((e) => e.toJson()).toList();
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
//     final l$user = user;
//     final l$reference_number = reference_number;
//     final l$price = price;
//     final l$total_price = total_price;
//     final l$discount = discount;
//     final l$discount_value = discount_value;
//     final l$vat = vat;
//     final l$vat_value = vat_value;
//     final l$coupon = coupon;
//     final l$puncher = puncher;
//     final l$company = company;
//     final l$status = status;
//     final l$name = name;
//     final l$products = products;
//     final l$created_at = created_at;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$user,
//       l$reference_number,
//       l$price,
//       l$total_price,
//       l$discount,
//       l$discount_value,
//       l$vat,
//       l$vat_value,
//       l$coupon,
//       l$puncher,
//       l$company,
//       l$status,
//       l$name,
//       l$products == null ? null : Object.hashAll(l$products.map((v) => v)),
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
//     if (!(other is QueryOrderByIdorderById) ||
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
//     final l$reference_number = reference_number;
//     final lOther$reference_number = other.reference_number;
//     if (l$reference_number != lOther$reference_number) {
//       return false;
//     }
//     final l$price = price;
//     final lOther$price = other.price;
//     if (l$price != lOther$price) {
//       return false;
//     }
//     final l$total_price = total_price;
//     final lOther$total_price = other.total_price;
//     if (l$total_price != lOther$total_price) {
//       return false;
//     }
//     final l$discount = discount;
//     final lOther$discount = other.discount;
//     if (l$discount != lOther$discount) {
//       return false;
//     }
//     final l$discount_value = discount_value;
//     final lOther$discount_value = other.discount_value;
//     if (l$discount_value != lOther$discount_value) {
//       return false;
//     }
//     final l$vat = vat;
//     final lOther$vat = other.vat;
//     if (l$vat != lOther$vat) {
//       return false;
//     }
//     final l$vat_value = vat_value;
//     final lOther$vat_value = other.vat_value;
//     if (l$vat_value != lOther$vat_value) {
//       return false;
//     }
//     final l$coupon = coupon;
//     final lOther$coupon = other.coupon;
//     if (l$coupon != lOther$coupon) {
//       return false;
//     }
//     final l$puncher = puncher;
//     final lOther$puncher = other.puncher;
//     if (l$puncher != lOther$puncher) {
//       return false;
//     }
//     final l$company = company;
//     final lOther$company = other.company;
//     if (l$company != lOther$company) {
//       return false;
//     }
//     final l$status = status;
//     final lOther$status = other.status;
//     if (l$status != lOther$status) {
//       return false;
//     }
//     final l$name = name;
//     final lOther$name = other.name;
//     if (l$name != lOther$name) {
//       return false;
//     }
//     final l$products = products;
//     final lOther$products = other.products;
//     if (l$products != null && lOther$products != null) {
//       if (l$products.length != lOther$products.length) {
//         return false;
//       }
//       for (int i = 0; i < l$products.length; i++) {
//         final l$products$entry = l$products[i];
//         final lOther$products$entry = lOther$products[i];
//         if (l$products$entry != lOther$products$entry) {
//           return false;
//         }
//       }
//     } else if (l$products != lOther$products) {
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
// extension UtilityExtensionQueryOrderByIdorderById on QueryOrderByIdorderById {
//   CopyWithQueryOrderByIdorderById<QueryOrderByIdorderById> get copyWith =>
//       CopyWithQueryOrderByIdorderById(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryOrderByIdorderById<TRes> {
//   factory CopyWithQueryOrderByIdorderById(
//     QueryOrderByIdorderById instance,
//     TRes Function(QueryOrderByIdorderById) then,
//   ) = _CopyWithImplQueryOrderByIdorderById;
//
//   factory CopyWithQueryOrderByIdorderById.stub(TRes res) =
//       _CopyWithStubImplQueryOrderByIdorderById;
//
//   TRes call({
//     String? id,
//     QueryOrderByIdorderByIduser? user,
//     String? reference_number,
//     double? price,
//     double? total_price,
//     double? discount,
//     double? discount_value,
//     double? vat,
//     double? vat_value,
//     QueryOrderByIdorderByIdcoupon? coupon,
//     QueryOrderByIdorderByIdpuncher? puncher,
//     QueryOrderByIdorderByIdcompany? company,
//     int? status,
//     String? name,
//     List<QueryOrderByIdorderByIdproducts>? products,
//     String? created_at,
//     String? $__typename,
//   });
//   CopyWithQueryOrderByIdorderByIduser<TRes> get user;
//   CopyWithQueryOrderByIdorderByIdcoupon<TRes> get coupon;
//   CopyWithQueryOrderByIdorderByIdpuncher<TRes> get puncher;
//   CopyWithQueryOrderByIdorderByIdcompany<TRes> get company;
//   TRes products(
//       Iterable<QueryOrderByIdorderByIdproducts>? Function(
//               Iterable<
//                   CopyWithQueryOrderByIdorderByIdproducts<
//                       QueryOrderByIdorderByIdproducts>>?)
//           _fn);
// }
//
// class _CopyWithImplQueryOrderByIdorderById<TRes>
//     implements CopyWithQueryOrderByIdorderById<TRes> {
//   _CopyWithImplQueryOrderByIdorderById(
//     this._instance,
//     this._then,
//   );
//
//   final QueryOrderByIdorderById _instance;
//
//   final TRes Function(QueryOrderByIdorderById) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? user = _undefined,
//     Object? reference_number = _undefined,
//     Object? price = _undefined,
//     Object? total_price = _undefined,
//     Object? discount = _undefined,
//     Object? discount_value = _undefined,
//     Object? vat = _undefined,
//     Object? vat_value = _undefined,
//     Object? coupon = _undefined,
//     Object? puncher = _undefined,
//     Object? company = _undefined,
//     Object? status = _undefined,
//     Object? name = _undefined,
//     Object? products = _undefined,
//     Object? created_at = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryOrderByIdorderById(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         user: user == _undefined
//             ? _instance.user
//             : (user as QueryOrderByIdorderByIduser?),
//         reference_number: reference_number == _undefined
//             ? _instance.reference_number
//             : (reference_number as String?),
//         price: price == _undefined ? _instance.price : (price as double?),
//         total_price: total_price == _undefined
//             ? _instance.total_price
//             : (total_price as double?),
//         discount:
//             discount == _undefined ? _instance.discount : (discount as double?),
//         discount_value: discount_value == _undefined
//             ? _instance.discount_value
//             : (discount_value as double?),
//         vat: vat == _undefined ? _instance.vat : (vat as double?),
//         vat_value: vat_value == _undefined
//             ? _instance.vat_value
//             : (vat_value as double?),
//         coupon: coupon == _undefined
//             ? _instance.coupon
//             : (coupon as QueryOrderByIdorderByIdcoupon?),
//         puncher: puncher == _undefined
//             ? _instance.puncher
//             : (puncher as QueryOrderByIdorderByIdpuncher?),
//         company: company == _undefined
//             ? _instance.company
//             : (company as QueryOrderByIdorderByIdcompany?),
//         status: status == _undefined ? _instance.status : (status as int?),
//         name: name == _undefined ? _instance.name : (name as String?),
//         products: products == _undefined
//             ? _instance.products
//             : (products as List<QueryOrderByIdorderByIdproducts>?),
//         created_at: created_at == _undefined
//             ? _instance.created_at
//             : (created_at as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryOrderByIdorderByIduser<TRes> get user {
//     final local$user = _instance.user;
//     return local$user == null
//         ? CopyWithQueryOrderByIdorderByIduser.stub(_then(_instance))
//         : CopyWithQueryOrderByIdorderByIduser(local$user, (e) => call(user: e));
//   }
//
//   CopyWithQueryOrderByIdorderByIdcoupon<TRes> get coupon {
//     final local$coupon = _instance.coupon;
//     return local$coupon == null
//         ? CopyWithQueryOrderByIdorderByIdcoupon.stub(_then(_instance))
//         : CopyWithQueryOrderByIdorderByIdcoupon(
//             local$coupon, (e) => call(coupon: e));
//   }
//
//   CopyWithQueryOrderByIdorderByIdpuncher<TRes> get puncher {
//     final local$puncher = _instance.puncher;
//     return local$puncher == null
//         ? CopyWithQueryOrderByIdorderByIdpuncher.stub(_then(_instance))
//         : CopyWithQueryOrderByIdorderByIdpuncher(
//             local$puncher, (e) => call(puncher: e));
//   }
//
//   CopyWithQueryOrderByIdorderByIdcompany<TRes> get company {
//     final local$company = _instance.company;
//     return local$company == null
//         ? CopyWithQueryOrderByIdorderByIdcompany.stub(_then(_instance))
//         : CopyWithQueryOrderByIdorderByIdcompany(
//             local$company, (e) => call(company: e));
//   }
//
//   TRes products(
//           Iterable<QueryOrderByIdorderByIdproducts>? Function(
//                   Iterable<
//                       CopyWithQueryOrderByIdorderByIdproducts<
//                           QueryOrderByIdorderByIdproducts>>?)
//               _fn) =>
//       call(
//           products: _fn(_instance.products
//               ?.map((e) => CopyWithQueryOrderByIdorderByIdproducts(
//                     e,
//                     (i) => i,
//                   )))?.toList());
// }
//
// class _CopyWithStubImplQueryOrderByIdorderById<TRes>
//     implements CopyWithQueryOrderByIdorderById<TRes> {
//   _CopyWithStubImplQueryOrderByIdorderById(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     QueryOrderByIdorderByIduser? user,
//     String? reference_number,
//     double? price,
//     double? total_price,
//     double? discount,
//     double? discount_value,
//     double? vat,
//     double? vat_value,
//     QueryOrderByIdorderByIdcoupon? coupon,
//     QueryOrderByIdorderByIdpuncher? puncher,
//     QueryOrderByIdorderByIdcompany? company,
//     int? status,
//     String? name,
//     List<QueryOrderByIdorderByIdproducts>? products,
//     String? created_at,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryOrderByIdorderByIduser<TRes> get user =>
//       CopyWithQueryOrderByIdorderByIduser.stub(_res);
//
//   CopyWithQueryOrderByIdorderByIdcoupon<TRes> get coupon =>
//       CopyWithQueryOrderByIdorderByIdcoupon.stub(_res);
//
//   CopyWithQueryOrderByIdorderByIdpuncher<TRes> get puncher =>
//       CopyWithQueryOrderByIdorderByIdpuncher.stub(_res);
//
//   CopyWithQueryOrderByIdorderByIdcompany<TRes> get company =>
//       CopyWithQueryOrderByIdorderByIdcompany.stub(_res);
//
//   products(_fn) => _res;
// }
//
// class QueryOrderByIdorderByIduser {
//   QueryOrderByIdorderByIduser({
//     required this.id,
//     this.name,
//     this.national_id,
//     this.mobile,
//     this.gender,
//     this.image_path,
//     this.wallet_limit,
//     this.type,
//     this.email,
//     this.$__typename = 'User',
//   });
//
//   factory QueryOrderByIdorderByIduser.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$national_id = json['national_id'];
//     final l$mobile = json['mobile'];
//     final l$gender = json['gender'];
//     final l$image_path = json['image_path'];
//     final l$wallet_limit = json['wallet_limit'];
//     final l$type = json['type'];
//     final l$email = json['email'];
//     final l$$__typename = json['__typename'];
//     return QueryOrderByIdorderByIduser(
//       id: (l$id as String),
//       name: (l$name as String?),
//       national_id: (l$national_id as String?),
//       mobile: (l$mobile as String?),
//       gender: (l$gender as String?),
//       image_path: (l$image_path as String?),
//       wallet_limit: (l$wallet_limit as num?)?.toDouble(),
//       type: (l$type as String?),
//       email: (l$email as String?),
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
//   final String? mobile;
//
//   final String? gender;
//
//   final String? image_path;
//
//   final double? wallet_limit;
//
//   final String? type;
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
//     final l$national_id = national_id;
//     _resultData['national_id'] = l$national_id;
//     final l$mobile = mobile;
//     _resultData['mobile'] = l$mobile;
//     final l$gender = gender;
//     _resultData['gender'] = l$gender;
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$wallet_limit = wallet_limit;
//     _resultData['wallet_limit'] = l$wallet_limit;
//     final l$type = type;
//     _resultData['type'] = l$type;
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
//     final l$national_id = national_id;
//     final l$mobile = mobile;
//     final l$gender = gender;
//     final l$image_path = image_path;
//     final l$wallet_limit = wallet_limit;
//     final l$type = type;
//     final l$email = email;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$name,
//       l$national_id,
//       l$mobile,
//       l$gender,
//       l$image_path,
//       l$wallet_limit,
//       l$type,
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
//     if (!(other is QueryOrderByIdorderByIduser) ||
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
//     final l$mobile = mobile;
//     final lOther$mobile = other.mobile;
//     if (l$mobile != lOther$mobile) {
//       return false;
//     }
//     final l$gender = gender;
//     final lOther$gender = other.gender;
//     if (l$gender != lOther$gender) {
//       return false;
//     }
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
//       return false;
//     }
//     final l$wallet_limit = wallet_limit;
//     final lOther$wallet_limit = other.wallet_limit;
//     if (l$wallet_limit != lOther$wallet_limit) {
//       return false;
//     }
//     final l$type = type;
//     final lOther$type = other.type;
//     if (l$type != lOther$type) {
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
// extension UtilityExtensionQueryOrderByIdorderByIduser
//     on QueryOrderByIdorderByIduser {
//   CopyWithQueryOrderByIdorderByIduser<QueryOrderByIdorderByIduser>
//       get copyWith => CopyWithQueryOrderByIdorderByIduser(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryOrderByIdorderByIduser<TRes> {
//   factory CopyWithQueryOrderByIdorderByIduser(
//     QueryOrderByIdorderByIduser instance,
//     TRes Function(QueryOrderByIdorderByIduser) then,
//   ) = _CopyWithImplQueryOrderByIdorderByIduser;
//
//   factory CopyWithQueryOrderByIdorderByIduser.stub(TRes res) =
//       _CopyWithStubImplQueryOrderByIdorderByIduser;
//
//   TRes call({
//     String? id,
//     String? name,
//     String? national_id,
//     String? mobile,
//     String? gender,
//     String? image_path,
//     double? wallet_limit,
//     String? type,
//     String? email,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryOrderByIdorderByIduser<TRes>
//     implements CopyWithQueryOrderByIdorderByIduser<TRes> {
//   _CopyWithImplQueryOrderByIdorderByIduser(
//     this._instance,
//     this._then,
//   );
//
//   final QueryOrderByIdorderByIduser _instance;
//
//   final TRes Function(QueryOrderByIdorderByIduser) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? name = _undefined,
//     Object? national_id = _undefined,
//     Object? mobile = _undefined,
//     Object? gender = _undefined,
//     Object? image_path = _undefined,
//     Object? wallet_limit = _undefined,
//     Object? type = _undefined,
//     Object? email = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryOrderByIdorderByIduser(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         name: name == _undefined ? _instance.name : (name as String?),
//         national_id: national_id == _undefined
//             ? _instance.national_id
//             : (national_id as String?),
//         mobile: mobile == _undefined ? _instance.mobile : (mobile as String?),
//         gender: gender == _undefined ? _instance.gender : (gender as String?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         wallet_limit: wallet_limit == _undefined
//             ? _instance.wallet_limit
//             : (wallet_limit as double?),
//         type: type == _undefined ? _instance.type : (type as String?),
//         email: email == _undefined ? _instance.email : (email as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryOrderByIdorderByIduser<TRes>
//     implements CopyWithQueryOrderByIdorderByIduser<TRes> {
//   _CopyWithStubImplQueryOrderByIdorderByIduser(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? name,
//     String? national_id,
//     String? mobile,
//     String? gender,
//     String? image_path,
//     double? wallet_limit,
//     String? type,
//     String? email,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryOrderByIdorderByIdcoupon {
//   QueryOrderByIdorderByIdcoupon({
//     required this.id,
//     required this.title,
//     required this.discount,
//     this.code,
//     this.$__typename = 'Coupon',
//   });
//
//   factory QueryOrderByIdorderByIdcoupon.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$discount = json['discount'];
//     final l$code = json['code'];
//     final l$$__typename = json['__typename'];
//     return QueryOrderByIdorderByIdcoupon(
//       id: (l$id as String),
//       title: (l$title as String),
//       discount: (l$discount as num).toDouble(),
//       code: (l$code as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String title;
//
//   final double discount;
//
//   final String? code;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$title = title;
//     _resultData['title'] = l$title;
//     final l$discount = discount;
//     _resultData['discount'] = l$discount;
//     final l$code = code;
//     _resultData['code'] = l$code;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$title = title;
//     final l$discount = discount;
//     final l$code = code;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$discount,
//       l$code,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryOrderByIdorderByIdcoupon) ||
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
//     final l$discount = discount;
//     final lOther$discount = other.discount;
//     if (l$discount != lOther$discount) {
//       return false;
//     }
//     final l$code = code;
//     final lOther$code = other.code;
//     if (l$code != lOther$code) {
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
// extension UtilityExtensionQueryOrderByIdorderByIdcoupon
//     on QueryOrderByIdorderByIdcoupon {
//   CopyWithQueryOrderByIdorderByIdcoupon<QueryOrderByIdorderByIdcoupon>
//       get copyWith => CopyWithQueryOrderByIdorderByIdcoupon(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryOrderByIdorderByIdcoupon<TRes> {
//   factory CopyWithQueryOrderByIdorderByIdcoupon(
//     QueryOrderByIdorderByIdcoupon instance,
//     TRes Function(QueryOrderByIdorderByIdcoupon) then,
//   ) = _CopyWithImplQueryOrderByIdorderByIdcoupon;
//
//   factory CopyWithQueryOrderByIdorderByIdcoupon.stub(TRes res) =
//       _CopyWithStubImplQueryOrderByIdorderByIdcoupon;
//
//   TRes call({
//     String? id,
//     String? title,
//     double? discount,
//     String? code,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryOrderByIdorderByIdcoupon<TRes>
//     implements CopyWithQueryOrderByIdorderByIdcoupon<TRes> {
//   _CopyWithImplQueryOrderByIdorderByIdcoupon(
//     this._instance,
//     this._then,
//   );
//
//   final QueryOrderByIdorderByIdcoupon _instance;
//
//   final TRes Function(QueryOrderByIdorderByIdcoupon) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? discount = _undefined,
//     Object? code = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryOrderByIdorderByIdcoupon(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined || title == null
//             ? _instance.title
//             : (title as String),
//         discount: discount == _undefined || discount == null
//             ? _instance.discount
//             : (discount as double),
//         code: code == _undefined ? _instance.code : (code as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryOrderByIdorderByIdcoupon<TRes>
//     implements CopyWithQueryOrderByIdorderByIdcoupon<TRes> {
//   _CopyWithStubImplQueryOrderByIdorderByIdcoupon(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     double? discount,
//     String? code,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryOrderByIdorderByIdpuncher {
//   QueryOrderByIdorderByIdpuncher({
//     required this.id,
//     this.name,
//     this.mobile,
//     this.email,
//     this.imageUrl,
//     this.$__typename = 'Puncher',
//   });
//
//   factory QueryOrderByIdorderByIdpuncher.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$mobile = json['mobile'];
//     final l$email = json['email'];
//     final l$imageUrl = json['imageUrl'];
//     final l$$__typename = json['__typename'];
//     return QueryOrderByIdorderByIdpuncher(
//       id: (l$id as String),
//       name: (l$name as String?),
//       mobile: (l$mobile as String?),
//       email: (l$email as String?),
//       imageUrl: (l$imageUrl as String?),
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
//     final l$mobile = mobile;
//     _resultData['mobile'] = l$mobile;
//     final l$email = email;
//     _resultData['email'] = l$email;
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
//     final l$mobile = mobile;
//     final l$email = email;
//     final l$imageUrl = imageUrl;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$name,
//       l$mobile,
//       l$email,
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
//     if (!(other is QueryOrderByIdorderByIdpuncher) ||
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
// extension UtilityExtensionQueryOrderByIdorderByIdpuncher
//     on QueryOrderByIdorderByIdpuncher {
//   CopyWithQueryOrderByIdorderByIdpuncher<QueryOrderByIdorderByIdpuncher>
//       get copyWith => CopyWithQueryOrderByIdorderByIdpuncher(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryOrderByIdorderByIdpuncher<TRes> {
//   factory CopyWithQueryOrderByIdorderByIdpuncher(
//     QueryOrderByIdorderByIdpuncher instance,
//     TRes Function(QueryOrderByIdorderByIdpuncher) then,
//   ) = _CopyWithImplQueryOrderByIdorderByIdpuncher;
//
//   factory CopyWithQueryOrderByIdorderByIdpuncher.stub(TRes res) =
//       _CopyWithStubImplQueryOrderByIdorderByIdpuncher;
//
//   TRes call({
//     String? id,
//     String? name,
//     String? mobile,
//     String? email,
//     String? imageUrl,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryOrderByIdorderByIdpuncher<TRes>
//     implements CopyWithQueryOrderByIdorderByIdpuncher<TRes> {
//   _CopyWithImplQueryOrderByIdorderByIdpuncher(
//     this._instance,
//     this._then,
//   );
//
//   final QueryOrderByIdorderByIdpuncher _instance;
//
//   final TRes Function(QueryOrderByIdorderByIdpuncher) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? name = _undefined,
//     Object? mobile = _undefined,
//     Object? email = _undefined,
//     Object? imageUrl = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryOrderByIdorderByIdpuncher(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         name: name == _undefined ? _instance.name : (name as String?),
//         mobile: mobile == _undefined ? _instance.mobile : (mobile as String?),
//         email: email == _undefined ? _instance.email : (email as String?),
//         imageUrl:
//             imageUrl == _undefined ? _instance.imageUrl : (imageUrl as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryOrderByIdorderByIdpuncher<TRes>
//     implements CopyWithQueryOrderByIdorderByIdpuncher<TRes> {
//   _CopyWithStubImplQueryOrderByIdorderByIdpuncher(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? name,
//     String? mobile,
//     String? email,
//     String? imageUrl,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryOrderByIdorderByIdcompany {
//   QueryOrderByIdorderByIdcompany({
//     this.id,
//     this.name,
//     this.$__typename = 'Company',
//   });
//
//   factory QueryOrderByIdorderByIdcompany.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$$__typename = json['__typename'];
//     return QueryOrderByIdorderByIdcompany(
//       id: (l$id as String?),
//       name: (l$name as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String? id;
//
//   final String? name;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$name = name;
//     _resultData['name'] = l$name;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$name = name;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$name,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryOrderByIdorderByIdcompany) ||
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
//     final l$$__typename = $__typename;
//     final lOther$$__typename = other.$__typename;
//     if (l$$__typename != lOther$$__typename) {
//       return false;
//     }
//     return true;
//   }
// }
//
// extension UtilityExtensionQueryOrderByIdorderByIdcompany
//     on QueryOrderByIdorderByIdcompany {
//   CopyWithQueryOrderByIdorderByIdcompany<QueryOrderByIdorderByIdcompany>
//       get copyWith => CopyWithQueryOrderByIdorderByIdcompany(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryOrderByIdorderByIdcompany<TRes> {
//   factory CopyWithQueryOrderByIdorderByIdcompany(
//     QueryOrderByIdorderByIdcompany instance,
//     TRes Function(QueryOrderByIdorderByIdcompany) then,
//   ) = _CopyWithImplQueryOrderByIdorderByIdcompany;
//
//   factory CopyWithQueryOrderByIdorderByIdcompany.stub(TRes res) =
//       _CopyWithStubImplQueryOrderByIdorderByIdcompany;
//
//   TRes call({
//     String? id,
//     String? name,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryOrderByIdorderByIdcompany<TRes>
//     implements CopyWithQueryOrderByIdorderByIdcompany<TRes> {
//   _CopyWithImplQueryOrderByIdorderByIdcompany(
//     this._instance,
//     this._then,
//   );
//
//   final QueryOrderByIdorderByIdcompany _instance;
//
//   final TRes Function(QueryOrderByIdorderByIdcompany) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? name = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryOrderByIdorderByIdcompany(
//         id: id == _undefined ? _instance.id : (id as String?),
//         name: name == _undefined ? _instance.name : (name as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryOrderByIdorderByIdcompany<TRes>
//     implements CopyWithQueryOrderByIdorderByIdcompany<TRes> {
//   _CopyWithStubImplQueryOrderByIdorderByIdcompany(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? name,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryOrderByIdorderByIdproducts {
//   QueryOrderByIdorderByIdproducts({
//     this.product,
//     this.unit_price,
//     this.total_price,
//     this.quantity,
//     this.discount,
//     this.discount_value,
//     this.$__typename = 'OrderProduct',
//   });
//
//   factory QueryOrderByIdorderByIdproducts.fromJson(Map<String, dynamic> json) {
//     final l$product = json['product'];
//     final l$unit_price = json['unit_price'];
//     final l$total_price = json['total_price'];
//     final l$quantity = json['quantity'];
//     final l$discount = json['discount'];
//     final l$discount_value = json['discount_value'];
//     final l$$__typename = json['__typename'];
//     return QueryOrderByIdorderByIdproducts(
//       product: l$product == null
//           ? null
//           : QueryOrderByIdorderByIdproductsproduct.fromJson(
//               (l$product as Map<String, dynamic>)),
//       unit_price: (l$unit_price as num?)?.toDouble(),
//       total_price: (l$total_price as num?)?.toDouble(),
//       quantity: (l$quantity as int?),
//       discount: (l$discount as num?)?.toDouble(),
//       discount_value: (l$discount_value as num?)?.toDouble(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryOrderByIdorderByIdproductsproduct? product;
//
//   final double? unit_price;
//
//   final double? total_price;
//
//   final int? quantity;
//
//   final double? discount;
//
//   final double? discount_value;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$product = product;
//     _resultData['product'] = l$product?.toJson();
//     final l$unit_price = unit_price;
//     _resultData['unit_price'] = l$unit_price;
//     final l$total_price = total_price;
//     _resultData['total_price'] = l$total_price;
//     final l$quantity = quantity;
//     _resultData['quantity'] = l$quantity;
//     final l$discount = discount;
//     _resultData['discount'] = l$discount;
//     final l$discount_value = discount_value;
//     _resultData['discount_value'] = l$discount_value;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$product = product;
//     final l$unit_price = unit_price;
//     final l$total_price = total_price;
//     final l$quantity = quantity;
//     final l$discount = discount;
//     final l$discount_value = discount_value;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$product,
//       l$unit_price,
//       l$total_price,
//       l$quantity,
//       l$discount,
//       l$discount_value,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryOrderByIdorderByIdproducts) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$product = product;
//     final lOther$product = other.product;
//     if (l$product != lOther$product) {
//       return false;
//     }
//     final l$unit_price = unit_price;
//     final lOther$unit_price = other.unit_price;
//     if (l$unit_price != lOther$unit_price) {
//       return false;
//     }
//     final l$total_price = total_price;
//     final lOther$total_price = other.total_price;
//     if (l$total_price != lOther$total_price) {
//       return false;
//     }
//     final l$quantity = quantity;
//     final lOther$quantity = other.quantity;
//     if (l$quantity != lOther$quantity) {
//       return false;
//     }
//     final l$discount = discount;
//     final lOther$discount = other.discount;
//     if (l$discount != lOther$discount) {
//       return false;
//     }
//     final l$discount_value = discount_value;
//     final lOther$discount_value = other.discount_value;
//     if (l$discount_value != lOther$discount_value) {
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
// extension UtilityExtensionQueryOrderByIdorderByIdproducts
//     on QueryOrderByIdorderByIdproducts {
//   CopyWithQueryOrderByIdorderByIdproducts<QueryOrderByIdorderByIdproducts>
//       get copyWith => CopyWithQueryOrderByIdorderByIdproducts(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryOrderByIdorderByIdproducts<TRes> {
//   factory CopyWithQueryOrderByIdorderByIdproducts(
//     QueryOrderByIdorderByIdproducts instance,
//     TRes Function(QueryOrderByIdorderByIdproducts) then,
//   ) = _CopyWithImplQueryOrderByIdorderByIdproducts;
//
//   factory CopyWithQueryOrderByIdorderByIdproducts.stub(TRes res) =
//       _CopyWithStubImplQueryOrderByIdorderByIdproducts;
//
//   TRes call({
//     QueryOrderByIdorderByIdproductsproduct? product,
//     double? unit_price,
//     double? total_price,
//     int? quantity,
//     double? discount,
//     double? discount_value,
//     String? $__typename,
//   });
//   CopyWithQueryOrderByIdorderByIdproductsproduct<TRes> get product;
// }
//
// class _CopyWithImplQueryOrderByIdorderByIdproducts<TRes>
//     implements CopyWithQueryOrderByIdorderByIdproducts<TRes> {
//   _CopyWithImplQueryOrderByIdorderByIdproducts(
//     this._instance,
//     this._then,
//   );
//
//   final QueryOrderByIdorderByIdproducts _instance;
//
//   final TRes Function(QueryOrderByIdorderByIdproducts) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? product = _undefined,
//     Object? unit_price = _undefined,
//     Object? total_price = _undefined,
//     Object? quantity = _undefined,
//     Object? discount = _undefined,
//     Object? discount_value = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryOrderByIdorderByIdproducts(
//         product: product == _undefined
//             ? _instance.product
//             : (product as QueryOrderByIdorderByIdproductsproduct?),
//         unit_price: unit_price == _undefined
//             ? _instance.unit_price
//             : (unit_price as double?),
//         total_price: total_price == _undefined
//             ? _instance.total_price
//             : (total_price as double?),
//         quantity:
//             quantity == _undefined ? _instance.quantity : (quantity as int?),
//         discount:
//             discount == _undefined ? _instance.discount : (discount as double?),
//         discount_value: discount_value == _undefined
//             ? _instance.discount_value
//             : (discount_value as double?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryOrderByIdorderByIdproductsproduct<TRes> get product {
//     final local$product = _instance.product;
//     return local$product == null
//         ? CopyWithQueryOrderByIdorderByIdproductsproduct.stub(_then(_instance))
//         : CopyWithQueryOrderByIdorderByIdproductsproduct(
//             local$product, (e) => call(product: e));
//   }
// }
//
// class _CopyWithStubImplQueryOrderByIdorderByIdproducts<TRes>
//     implements CopyWithQueryOrderByIdorderByIdproducts<TRes> {
//   _CopyWithStubImplQueryOrderByIdorderByIdproducts(this._res);
//
//   TRes _res;
//
//   call({
//     QueryOrderByIdorderByIdproductsproduct? product,
//     double? unit_price,
//     double? total_price,
//     int? quantity,
//     double? discount,
//     double? discount_value,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryOrderByIdorderByIdproductsproduct<TRes> get product =>
//       CopyWithQueryOrderByIdorderByIdproductsproduct.stub(_res);
// }
//
// class QueryOrderByIdorderByIdproductsproduct {
//   QueryOrderByIdorderByIdproductsproduct({
//     required this.id,
//     this.title,
//     this.price,
//     this.image_path,
//     this.discount,
//     this.$__typename = 'Product',
//   });
//
//   factory QueryOrderByIdorderByIdproductsproduct.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$price = json['price'];
//     final l$image_path = json['image_path'];
//     final l$discount = json['discount'];
//     final l$$__typename = json['__typename'];
//     return QueryOrderByIdorderByIdproductsproduct(
//       id: (l$id as String),
//       title: (l$title as String?),
//       price: (l$price as num?)?.toDouble(),
//       image_path: (l$image_path as String?),
//       discount: (l$discount as num?)?.toDouble(),
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
//   final String? image_path;
//
//   final double? discount;
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
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$discount = discount;
//     _resultData['discount'] = l$discount;
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
//     final l$image_path = image_path;
//     final l$discount = discount;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$price,
//       l$image_path,
//       l$discount,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryOrderByIdorderByIdproductsproduct) ||
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
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
//       return false;
//     }
//     final l$discount = discount;
//     final lOther$discount = other.discount;
//     if (l$discount != lOther$discount) {
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
// extension UtilityExtensionQueryOrderByIdorderByIdproductsproduct
//     on QueryOrderByIdorderByIdproductsproduct {
//   CopyWithQueryOrderByIdorderByIdproductsproduct<
//           QueryOrderByIdorderByIdproductsproduct>
//       get copyWith => CopyWithQueryOrderByIdorderByIdproductsproduct(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryOrderByIdorderByIdproductsproduct<TRes> {
//   factory CopyWithQueryOrderByIdorderByIdproductsproduct(
//     QueryOrderByIdorderByIdproductsproduct instance,
//     TRes Function(QueryOrderByIdorderByIdproductsproduct) then,
//   ) = _CopyWithImplQueryOrderByIdorderByIdproductsproduct;
//
//   factory CopyWithQueryOrderByIdorderByIdproductsproduct.stub(TRes res) =
//       _CopyWithStubImplQueryOrderByIdorderByIdproductsproduct;
//
//   TRes call({
//     String? id,
//     String? title,
//     double? price,
//     String? image_path,
//     double? discount,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryOrderByIdorderByIdproductsproduct<TRes>
//     implements CopyWithQueryOrderByIdorderByIdproductsproduct<TRes> {
//   _CopyWithImplQueryOrderByIdorderByIdproductsproduct(
//     this._instance,
//     this._then,
//   );
//
//   final QueryOrderByIdorderByIdproductsproduct _instance;
//
//   final TRes Function(QueryOrderByIdorderByIdproductsproduct) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? price = _undefined,
//     Object? image_path = _undefined,
//     Object? discount = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryOrderByIdorderByIdproductsproduct(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined ? _instance.title : (title as String?),
//         price: price == _undefined ? _instance.price : (price as double?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         discount:
//             discount == _undefined ? _instance.discount : (discount as double?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryOrderByIdorderByIdproductsproduct<TRes>
//     implements CopyWithQueryOrderByIdorderByIdproductsproduct<TRes> {
//   _CopyWithStubImplQueryOrderByIdorderByIdproductsproduct(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     double? price,
//     String? image_path,
//     double? discount,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesMutationCancelOrder {
//   factory VariablesMutationCancelOrder({required String referenceNumber}) =>
//       VariablesMutationCancelOrder._({
//         r'referenceNumber': referenceNumber,
//       });
//
//   VariablesMutationCancelOrder._(this._$data);
//
//   factory VariablesMutationCancelOrder.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$referenceNumber = data['referenceNumber'];
//     result$data['referenceNumber'] = (l$referenceNumber as String);
//     return VariablesMutationCancelOrder._(result$data);
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
//   CopyWithVariablesMutationCancelOrder<VariablesMutationCancelOrder>
//       get copyWith => CopyWithVariablesMutationCancelOrder(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationCancelOrder) ||
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
// abstract class CopyWithVariablesMutationCancelOrder<TRes> {
//   factory CopyWithVariablesMutationCancelOrder(
//     VariablesMutationCancelOrder instance,
//     TRes Function(VariablesMutationCancelOrder) then,
//   ) = _CopyWithImplVariablesMutationCancelOrder;
//
//   factory CopyWithVariablesMutationCancelOrder.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationCancelOrder;
//
//   TRes call({String? referenceNumber});
// }
//
// class _CopyWithImplVariablesMutationCancelOrder<TRes>
//     implements CopyWithVariablesMutationCancelOrder<TRes> {
//   _CopyWithImplVariablesMutationCancelOrder(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationCancelOrder _instance;
//
//   final TRes Function(VariablesMutationCancelOrder) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? referenceNumber = _undefined}) =>
//       _then(VariablesMutationCancelOrder._({
//         ..._instance._$data,
//         if (referenceNumber != _undefined && referenceNumber != null)
//           'referenceNumber': (referenceNumber as String),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationCancelOrder<TRes>
//     implements CopyWithVariablesMutationCancelOrder<TRes> {
//   _CopyWithStubImplVariablesMutationCancelOrder(this._res);
//
//   TRes _res;
//
//   call({String? referenceNumber}) => _res;
// }
//
// class MutationCancelOrder {
//   MutationCancelOrder({
//     required this.cancelOrder,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationCancelOrder.fromJson(Map<String, dynamic> json) {
//     final l$cancelOrder = json['cancelOrder'];
//     final l$$__typename = json['__typename'];
//     return MutationCancelOrder(
//       cancelOrder: MutationCancelOrdercancelOrder.fromJson(
//           (l$cancelOrder as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationCancelOrdercancelOrder cancelOrder;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$cancelOrder = cancelOrder;
//     _resultData['cancelOrder'] = l$cancelOrder.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$cancelOrder = cancelOrder;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$cancelOrder,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationCancelOrder) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$cancelOrder = cancelOrder;
//     final lOther$cancelOrder = other.cancelOrder;
//     if (l$cancelOrder != lOther$cancelOrder) {
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
// extension UtilityExtensionMutationCancelOrder on MutationCancelOrder {
//   CopyWithMutationCancelOrder<MutationCancelOrder> get copyWith =>
//       CopyWithMutationCancelOrder(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationCancelOrder<TRes> {
//   factory CopyWithMutationCancelOrder(
//     MutationCancelOrder instance,
//     TRes Function(MutationCancelOrder) then,
//   ) = _CopyWithImplMutationCancelOrder;
//
//   factory CopyWithMutationCancelOrder.stub(TRes res) =
//       _CopyWithStubImplMutationCancelOrder;
//
//   TRes call({
//     MutationCancelOrdercancelOrder? cancelOrder,
//     String? $__typename,
//   });
//   CopyWithMutationCancelOrdercancelOrder<TRes> get cancelOrder;
// }
//
// class _CopyWithImplMutationCancelOrder<TRes>
//     implements CopyWithMutationCancelOrder<TRes> {
//   _CopyWithImplMutationCancelOrder(
//     this._instance,
//     this._then,
//   );
//
//   final MutationCancelOrder _instance;
//
//   final TRes Function(MutationCancelOrder) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? cancelOrder = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationCancelOrder(
//         cancelOrder: cancelOrder == _undefined || cancelOrder == null
//             ? _instance.cancelOrder
//             : (cancelOrder as MutationCancelOrdercancelOrder),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationCancelOrdercancelOrder<TRes> get cancelOrder {
//     final local$cancelOrder = _instance.cancelOrder;
//     return CopyWithMutationCancelOrdercancelOrder(
//         local$cancelOrder, (e) => call(cancelOrder: e));
//   }
// }
//
// class _CopyWithStubImplMutationCancelOrder<TRes>
//     implements CopyWithMutationCancelOrder<TRes> {
//   _CopyWithStubImplMutationCancelOrder(this._res);
//
//   TRes _res;
//
//   call({
//     MutationCancelOrdercancelOrder? cancelOrder,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationCancelOrdercancelOrder<TRes> get cancelOrder =>
//       CopyWithMutationCancelOrdercancelOrder.stub(_res);
// }
//
// const documentNodeMutationCancelOrder = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'CancelOrder'),
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
//         name: NameNode(value: 'cancelOrder'),
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
// MutationCancelOrder _parserFnMutationCancelOrder(Map<String, dynamic> data) =>
//     MutationCancelOrder.fromJson(data);
// typedef OnMutationCompletedMutationCancelOrder = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationCancelOrder?,
// );
//
// class OptionsMutationCancelOrder
//     extends graphql.MutationOptions<MutationCancelOrder> {
//   OptionsMutationCancelOrder({
//     String? operationName,
//     required VariablesMutationCancelOrder variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationCancelOrder? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationCancelOrder? onCompleted,
//     graphql.OnMutationUpdate<MutationCancelOrder>? update,
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
//                     data == null ? null : _parserFnMutationCancelOrder(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationCancelOrder,
//           parserFn: _parserFnMutationCancelOrder,
//         );
//
//   final OnMutationCompletedMutationCancelOrder? onCompletedWithParsed;
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
// class WatchOptionsMutationCancelOrder
//     extends graphql.WatchQueryOptions<MutationCancelOrder> {
//   WatchOptionsMutationCancelOrder({
//     String? operationName,
//     required VariablesMutationCancelOrder variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationCancelOrder? typedOptimisticResult,
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
//           document: documentNodeMutationCancelOrder,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationCancelOrder,
//         );
// }
//
// extension ClientExtensionMutationCancelOrder on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationCancelOrder>> mutateCancelOrder(
//           OptionsMutationCancelOrder options) async =>
//       await this.mutate(options);
//   graphql.ObservableQuery<MutationCancelOrder> watchMutationCancelOrder(
//           WatchOptionsMutationCancelOrder options) =>
//       this.watchMutation(options);
// }
//
// class MutationCancelOrderHookResult {
//   MutationCancelOrderHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationCancelOrder runMutation;
//
//   final graphql.QueryResult<MutationCancelOrder> result;
// }
//
// MutationCancelOrderHookResult useMutationCancelOrder(
//     [WidgetOptionsMutationCancelOrder? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationCancelOrder());
//   return MutationCancelOrderHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationCancelOrder> useWatchMutationCancelOrder(
//         WatchOptionsMutationCancelOrder options) =>
//     graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationCancelOrder
//     extends graphql.MutationOptions<MutationCancelOrder> {
//   WidgetOptionsMutationCancelOrder({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationCancelOrder? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationCancelOrder? onCompleted,
//     graphql.OnMutationUpdate<MutationCancelOrder>? update,
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
//                     data == null ? null : _parserFnMutationCancelOrder(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationCancelOrder,
//           parserFn: _parserFnMutationCancelOrder,
//         );
//
//   final OnMutationCompletedMutationCancelOrder? onCompletedWithParsed;
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
// typedef RunMutationMutationCancelOrder
//     = graphql.MultiSourceResult<MutationCancelOrder> Function(
//   VariablesMutationCancelOrder, {
//   Object? optimisticResult,
//   MutationCancelOrder? typedOptimisticResult,
// });
// typedef BuilderMutationCancelOrder = widgets.Widget Function(
//   RunMutationMutationCancelOrder,
//   graphql.QueryResult<MutationCancelOrder>?,
// );
//
// class MutationCancelOrderWidget
//     extends graphql_flutter.Mutation<MutationCancelOrder> {
//   MutationCancelOrderWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationCancelOrder? options,
//     required BuilderMutationCancelOrder builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationCancelOrder(),
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
// class MutationCancelOrdercancelOrder {
//   MutationCancelOrdercancelOrder({
//     required this.error,
//     required this.status,
//     this.message,
//     this.$__typename = 'Result',
//   });
//
//   factory MutationCancelOrdercancelOrder.fromJson(Map<String, dynamic> json) {
//     final l$error = json['error'];
//     final l$status = json['status'];
//     final l$message = json['message'];
//     final l$$__typename = json['__typename'];
//     return MutationCancelOrdercancelOrder(
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
//     if (!(other is MutationCancelOrdercancelOrder) ||
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
// extension UtilityExtensionMutationCancelOrdercancelOrder
//     on MutationCancelOrdercancelOrder {
//   CopyWithMutationCancelOrdercancelOrder<MutationCancelOrdercancelOrder>
//       get copyWith => CopyWithMutationCancelOrdercancelOrder(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationCancelOrdercancelOrder<TRes> {
//   factory CopyWithMutationCancelOrdercancelOrder(
//     MutationCancelOrdercancelOrder instance,
//     TRes Function(MutationCancelOrdercancelOrder) then,
//   ) = _CopyWithImplMutationCancelOrdercancelOrder;
//
//   factory CopyWithMutationCancelOrdercancelOrder.stub(TRes res) =
//       _CopyWithStubImplMutationCancelOrdercancelOrder;
//
//   TRes call({
//     int? error,
//     String? status,
//     String? message,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationCancelOrdercancelOrder<TRes>
//     implements CopyWithMutationCancelOrdercancelOrder<TRes> {
//   _CopyWithImplMutationCancelOrdercancelOrder(
//     this._instance,
//     this._then,
//   );
//
//   final MutationCancelOrdercancelOrder _instance;
//
//   final TRes Function(MutationCancelOrdercancelOrder) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? error = _undefined,
//     Object? status = _undefined,
//     Object? message = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationCancelOrdercancelOrder(
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
// class _CopyWithStubImplMutationCancelOrdercancelOrder<TRes>
//     implements CopyWithMutationCancelOrdercancelOrder<TRes> {
//   _CopyWithStubImplMutationCancelOrdercancelOrder(this._res);
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
// class VariablesMutationSendOtpToEmployee {
//   factory VariablesMutationSendOtpToEmployee(
//           {required String referenceNumber}) =>
//       VariablesMutationSendOtpToEmployee._({
//         r'referenceNumber': referenceNumber,
//       });
//
//   VariablesMutationSendOtpToEmployee._(this._$data);
//
//   factory VariablesMutationSendOtpToEmployee.fromJson(
//       Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$referenceNumber = data['referenceNumber'];
//     result$data['referenceNumber'] = (l$referenceNumber as String);
//     return VariablesMutationSendOtpToEmployee._(result$data);
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
//   CopyWithVariablesMutationSendOtpToEmployee<VariablesMutationSendOtpToEmployee>
//       get copyWith => CopyWithVariablesMutationSendOtpToEmployee(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationSendOtpToEmployee) ||
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
// abstract class CopyWithVariablesMutationSendOtpToEmployee<TRes> {
//   factory CopyWithVariablesMutationSendOtpToEmployee(
//     VariablesMutationSendOtpToEmployee instance,
//     TRes Function(VariablesMutationSendOtpToEmployee) then,
//   ) = _CopyWithImplVariablesMutationSendOtpToEmployee;
//
//   factory CopyWithVariablesMutationSendOtpToEmployee.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationSendOtpToEmployee;
//
//   TRes call({String? referenceNumber});
// }
//
// class _CopyWithImplVariablesMutationSendOtpToEmployee<TRes>
//     implements CopyWithVariablesMutationSendOtpToEmployee<TRes> {
//   _CopyWithImplVariablesMutationSendOtpToEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationSendOtpToEmployee _instance;
//
//   final TRes Function(VariablesMutationSendOtpToEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? referenceNumber = _undefined}) =>
//       _then(VariablesMutationSendOtpToEmployee._({
//         ..._instance._$data,
//         if (referenceNumber != _undefined && referenceNumber != null)
//           'referenceNumber': (referenceNumber as String),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationSendOtpToEmployee<TRes>
//     implements CopyWithVariablesMutationSendOtpToEmployee<TRes> {
//   _CopyWithStubImplVariablesMutationSendOtpToEmployee(this._res);
//
//   TRes _res;
//
//   call({String? referenceNumber}) => _res;
// }
//
// class MutationSendOtpToEmployee {
//   MutationSendOtpToEmployee({
//     required this.validateQrCodeOrder,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationSendOtpToEmployee.fromJson(Map<String, dynamic> json) {
//     final l$validateQrCodeOrder = json['validateQrCodeOrder'];
//     final l$$__typename = json['__typename'];
//     return MutationSendOtpToEmployee(
//       validateQrCodeOrder:
//           MutationSendOtpToEmployeevalidateQrCodeOrder.fromJson(
//               (l$validateQrCodeOrder as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationSendOtpToEmployeevalidateQrCodeOrder validateQrCodeOrder;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$validateQrCodeOrder = validateQrCodeOrder;
//     _resultData['validateQrCodeOrder'] = l$validateQrCodeOrder.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$validateQrCodeOrder = validateQrCodeOrder;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$validateQrCodeOrder,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationSendOtpToEmployee) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$validateQrCodeOrder = validateQrCodeOrder;
//     final lOther$validateQrCodeOrder = other.validateQrCodeOrder;
//     if (l$validateQrCodeOrder != lOther$validateQrCodeOrder) {
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
// extension UtilityExtensionMutationSendOtpToEmployee
//     on MutationSendOtpToEmployee {
//   CopyWithMutationSendOtpToEmployee<MutationSendOtpToEmployee> get copyWith =>
//       CopyWithMutationSendOtpToEmployee(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationSendOtpToEmployee<TRes> {
//   factory CopyWithMutationSendOtpToEmployee(
//     MutationSendOtpToEmployee instance,
//     TRes Function(MutationSendOtpToEmployee) then,
//   ) = _CopyWithImplMutationSendOtpToEmployee;
//
//   factory CopyWithMutationSendOtpToEmployee.stub(TRes res) =
//       _CopyWithStubImplMutationSendOtpToEmployee;
//
//   TRes call({
//     MutationSendOtpToEmployeevalidateQrCodeOrder? validateQrCodeOrder,
//     String? $__typename,
//   });
//   CopyWithMutationSendOtpToEmployeevalidateQrCodeOrder<TRes>
//       get validateQrCodeOrder;
// }
//
// class _CopyWithImplMutationSendOtpToEmployee<TRes>
//     implements CopyWithMutationSendOtpToEmployee<TRes> {
//   _CopyWithImplMutationSendOtpToEmployee(
//     this._instance,
//     this._then,
//   );
//
//   final MutationSendOtpToEmployee _instance;
//
//   final TRes Function(MutationSendOtpToEmployee) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? validateQrCodeOrder = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationSendOtpToEmployee(
//         validateQrCodeOrder:
//             validateQrCodeOrder == _undefined || validateQrCodeOrder == null
//                 ? _instance.validateQrCodeOrder
//                 : (validateQrCodeOrder
//                     as MutationSendOtpToEmployeevalidateQrCodeOrder),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationSendOtpToEmployeevalidateQrCodeOrder<TRes>
//       get validateQrCodeOrder {
//     final local$validateQrCodeOrder = _instance.validateQrCodeOrder;
//     return CopyWithMutationSendOtpToEmployeevalidateQrCodeOrder(
//         local$validateQrCodeOrder, (e) => call(validateQrCodeOrder: e));
//   }
// }
//
// class _CopyWithStubImplMutationSendOtpToEmployee<TRes>
//     implements CopyWithMutationSendOtpToEmployee<TRes> {
//   _CopyWithStubImplMutationSendOtpToEmployee(this._res);
//
//   TRes _res;
//
//   call({
//     MutationSendOtpToEmployeevalidateQrCodeOrder? validateQrCodeOrder,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationSendOtpToEmployeevalidateQrCodeOrder<TRes>
//       get validateQrCodeOrder =>
//           CopyWithMutationSendOtpToEmployeevalidateQrCodeOrder.stub(_res);
// }
//
// const documentNodeMutationSendOtpToEmployee = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'SendOtpToEmployee'),
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
//         name: NameNode(value: 'validateQrCodeOrder'),
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
// MutationSendOtpToEmployee _parserFnMutationSendOtpToEmployee(
//         Map<String, dynamic> data) =>
//     MutationSendOtpToEmployee.fromJson(data);
// typedef OnMutationCompletedMutationSendOtpToEmployee = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationSendOtpToEmployee?,
// );
//
// class OptionsMutationSendOtpToEmployee
//     extends graphql.MutationOptions<MutationSendOtpToEmployee> {
//   OptionsMutationSendOtpToEmployee({
//     String? operationName,
//     required VariablesMutationSendOtpToEmployee variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationSendOtpToEmployee? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationSendOtpToEmployee? onCompleted,
//     graphql.OnMutationUpdate<MutationSendOtpToEmployee>? update,
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
//                         : _parserFnMutationSendOtpToEmployee(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationSendOtpToEmployee,
//           parserFn: _parserFnMutationSendOtpToEmployee,
//         );
//
//   final OnMutationCompletedMutationSendOtpToEmployee? onCompletedWithParsed;
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
// class WatchOptionsMutationSendOtpToEmployee
//     extends graphql.WatchQueryOptions<MutationSendOtpToEmployee> {
//   WatchOptionsMutationSendOtpToEmployee({
//     String? operationName,
//     required VariablesMutationSendOtpToEmployee variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationSendOtpToEmployee? typedOptimisticResult,
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
//           document: documentNodeMutationSendOtpToEmployee,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationSendOtpToEmployee,
//         );
// }
//
// extension ClientExtensionMutationSendOtpToEmployee on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationSendOtpToEmployee>>
//       mutateSendOtpToEmployee(OptionsMutationSendOtpToEmployee options) async =>
//           await this.mutate(options);
//   graphql.ObservableQuery<MutationSendOtpToEmployee>
//       watchMutationSendOtpToEmployee(
//               WatchOptionsMutationSendOtpToEmployee options) =>
//           this.watchMutation(options);
// }
//
// class MutationSendOtpToEmployeeHookResult {
//   MutationSendOtpToEmployeeHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationSendOtpToEmployee runMutation;
//
//   final graphql.QueryResult<MutationSendOtpToEmployee> result;
// }
//
// MutationSendOtpToEmployeeHookResult useMutationSendOtpToEmployee(
//     [WidgetOptionsMutationSendOtpToEmployee? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationSendOtpToEmployee());
//   return MutationSendOtpToEmployeeHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationSendOtpToEmployee>
//     useWatchMutationSendOtpToEmployee(
//             WatchOptionsMutationSendOtpToEmployee options) =>
//         graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationSendOtpToEmployee
//     extends graphql.MutationOptions<MutationSendOtpToEmployee> {
//   WidgetOptionsMutationSendOtpToEmployee({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationSendOtpToEmployee? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationSendOtpToEmployee? onCompleted,
//     graphql.OnMutationUpdate<MutationSendOtpToEmployee>? update,
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
//                         : _parserFnMutationSendOtpToEmployee(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationSendOtpToEmployee,
//           parserFn: _parserFnMutationSendOtpToEmployee,
//         );
//
//   final OnMutationCompletedMutationSendOtpToEmployee? onCompletedWithParsed;
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
// typedef RunMutationMutationSendOtpToEmployee
//     = graphql.MultiSourceResult<MutationSendOtpToEmployee> Function(
//   VariablesMutationSendOtpToEmployee, {
//   Object? optimisticResult,
//   MutationSendOtpToEmployee? typedOptimisticResult,
// });
// typedef BuilderMutationSendOtpToEmployee = widgets.Widget Function(
//   RunMutationMutationSendOtpToEmployee,
//   graphql.QueryResult<MutationSendOtpToEmployee>?,
// );
//
// class MutationSendOtpToEmployeeWidget
//     extends graphql_flutter.Mutation<MutationSendOtpToEmployee> {
//   MutationSendOtpToEmployeeWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationSendOtpToEmployee? options,
//     required BuilderMutationSendOtpToEmployee builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationSendOtpToEmployee(),
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
// class MutationSendOtpToEmployeevalidateQrCodeOrder {
//   MutationSendOtpToEmployeevalidateQrCodeOrder({
//     required this.error,
//     required this.status,
//     this.message,
//     this.$__typename = 'Result',
//   });
//
//   factory MutationSendOtpToEmployeevalidateQrCodeOrder.fromJson(
//       Map<String, dynamic> json) {
//     final l$error = json['error'];
//     final l$status = json['status'];
//     final l$message = json['message'];
//     final l$$__typename = json['__typename'];
//     return MutationSendOtpToEmployeevalidateQrCodeOrder(
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
//     if (!(other is MutationSendOtpToEmployeevalidateQrCodeOrder) ||
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
// extension UtilityExtensionMutationSendOtpToEmployeevalidateQrCodeOrder
//     on MutationSendOtpToEmployeevalidateQrCodeOrder {
//   CopyWithMutationSendOtpToEmployeevalidateQrCodeOrder<
//           MutationSendOtpToEmployeevalidateQrCodeOrder>
//       get copyWith => CopyWithMutationSendOtpToEmployeevalidateQrCodeOrder(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationSendOtpToEmployeevalidateQrCodeOrder<TRes> {
//   factory CopyWithMutationSendOtpToEmployeevalidateQrCodeOrder(
//     MutationSendOtpToEmployeevalidateQrCodeOrder instance,
//     TRes Function(MutationSendOtpToEmployeevalidateQrCodeOrder) then,
//   ) = _CopyWithImplMutationSendOtpToEmployeevalidateQrCodeOrder;
//
//   factory CopyWithMutationSendOtpToEmployeevalidateQrCodeOrder.stub(TRes res) =
//       _CopyWithStubImplMutationSendOtpToEmployeevalidateQrCodeOrder;
//
//   TRes call({
//     int? error,
//     String? status,
//     String? message,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationSendOtpToEmployeevalidateQrCodeOrder<TRes>
//     implements CopyWithMutationSendOtpToEmployeevalidateQrCodeOrder<TRes> {
//   _CopyWithImplMutationSendOtpToEmployeevalidateQrCodeOrder(
//     this._instance,
//     this._then,
//   );
//
//   final MutationSendOtpToEmployeevalidateQrCodeOrder _instance;
//
//   final TRes Function(MutationSendOtpToEmployeevalidateQrCodeOrder) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? error = _undefined,
//     Object? status = _undefined,
//     Object? message = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationSendOtpToEmployeevalidateQrCodeOrder(
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
// class _CopyWithStubImplMutationSendOtpToEmployeevalidateQrCodeOrder<TRes>
//     implements CopyWithMutationSendOtpToEmployeevalidateQrCodeOrder<TRes> {
//   _CopyWithStubImplMutationSendOtpToEmployeevalidateQrCodeOrder(this._res);
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
// class VariablesMutationConfirmOrder {
//   factory VariablesMutationConfirmOrder({
//     required String code,
//     required String referenceNumber,
//   }) =>
//       VariablesMutationConfirmOrder._({
//         r'code': code,
//         r'referenceNumber': referenceNumber,
//       });
//
//   VariablesMutationConfirmOrder._(this._$data);
//
//   factory VariablesMutationConfirmOrder.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$code = data['code'];
//     result$data['code'] = (l$code as String);
//     final l$referenceNumber = data['referenceNumber'];
//     result$data['referenceNumber'] = (l$referenceNumber as String);
//     return VariablesMutationConfirmOrder._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   String get code => (_$data['code'] as String);
//
//   String get referenceNumber => (_$data['referenceNumber'] as String);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$code = code;
//     result$data['code'] = l$code;
//     final l$referenceNumber = referenceNumber;
//     result$data['referenceNumber'] = l$referenceNumber;
//     return result$data;
//   }
//
//   CopyWithVariablesMutationConfirmOrder<VariablesMutationConfirmOrder>
//       get copyWith => CopyWithVariablesMutationConfirmOrder(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationConfirmOrder) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$code = code;
//     final lOther$code = other.code;
//     if (l$code != lOther$code) {
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
//     final l$code = code;
//     final l$referenceNumber = referenceNumber;
//     return Object.hashAll([
//       l$code,
//       l$referenceNumber,
//     ]);
//   }
// }
//
// abstract class CopyWithVariablesMutationConfirmOrder<TRes> {
//   factory CopyWithVariablesMutationConfirmOrder(
//     VariablesMutationConfirmOrder instance,
//     TRes Function(VariablesMutationConfirmOrder) then,
//   ) = _CopyWithImplVariablesMutationConfirmOrder;
//
//   factory CopyWithVariablesMutationConfirmOrder.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationConfirmOrder;
//
//   TRes call({
//     String? code,
//     String? referenceNumber,
//   });
// }
//
// class _CopyWithImplVariablesMutationConfirmOrder<TRes>
//     implements CopyWithVariablesMutationConfirmOrder<TRes> {
//   _CopyWithImplVariablesMutationConfirmOrder(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationConfirmOrder _instance;
//
//   final TRes Function(VariablesMutationConfirmOrder) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? code = _undefined,
//     Object? referenceNumber = _undefined,
//   }) =>
//       _then(VariablesMutationConfirmOrder._({
//         ..._instance._$data,
//         if (code != _undefined && code != null) 'code': (code as String),
//         if (referenceNumber != _undefined && referenceNumber != null)
//           'referenceNumber': (referenceNumber as String),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationConfirmOrder<TRes>
//     implements CopyWithVariablesMutationConfirmOrder<TRes> {
//   _CopyWithStubImplVariablesMutationConfirmOrder(this._res);
//
//   TRes _res;
//
//   call({
//     String? code,
//     String? referenceNumber,
//   }) =>
//       _res;
// }
//
// class MutationConfirmOrder {
//   MutationConfirmOrder({
//     required this.confirmOrder,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationConfirmOrder.fromJson(Map<String, dynamic> json) {
//     final l$confirmOrder = json['confirmOrder'];
//     final l$$__typename = json['__typename'];
//     return MutationConfirmOrder(
//       confirmOrder: MutationConfirmOrderconfirmOrder.fromJson(
//           (l$confirmOrder as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationConfirmOrderconfirmOrder confirmOrder;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$confirmOrder = confirmOrder;
//     _resultData['confirmOrder'] = l$confirmOrder.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$confirmOrder = confirmOrder;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$confirmOrder,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationConfirmOrder) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$confirmOrder = confirmOrder;
//     final lOther$confirmOrder = other.confirmOrder;
//     if (l$confirmOrder != lOther$confirmOrder) {
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
// extension UtilityExtensionMutationConfirmOrder on MutationConfirmOrder {
//   CopyWithMutationConfirmOrder<MutationConfirmOrder> get copyWith =>
//       CopyWithMutationConfirmOrder(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationConfirmOrder<TRes> {
//   factory CopyWithMutationConfirmOrder(
//     MutationConfirmOrder instance,
//     TRes Function(MutationConfirmOrder) then,
//   ) = _CopyWithImplMutationConfirmOrder;
//
//   factory CopyWithMutationConfirmOrder.stub(TRes res) =
//       _CopyWithStubImplMutationConfirmOrder;
//
//   TRes call({
//     MutationConfirmOrderconfirmOrder? confirmOrder,
//     String? $__typename,
//   });
//   CopyWithMutationConfirmOrderconfirmOrder<TRes> get confirmOrder;
// }
//
// class _CopyWithImplMutationConfirmOrder<TRes>
//     implements CopyWithMutationConfirmOrder<TRes> {
//   _CopyWithImplMutationConfirmOrder(
//     this._instance,
//     this._then,
//   );
//
//   final MutationConfirmOrder _instance;
//
//   final TRes Function(MutationConfirmOrder) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? confirmOrder = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationConfirmOrder(
//         confirmOrder: confirmOrder == _undefined || confirmOrder == null
//             ? _instance.confirmOrder
//             : (confirmOrder as MutationConfirmOrderconfirmOrder),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationConfirmOrderconfirmOrder<TRes> get confirmOrder {
//     final local$confirmOrder = _instance.confirmOrder;
//     return CopyWithMutationConfirmOrderconfirmOrder(
//         local$confirmOrder, (e) => call(confirmOrder: e));
//   }
// }
//
// class _CopyWithStubImplMutationConfirmOrder<TRes>
//     implements CopyWithMutationConfirmOrder<TRes> {
//   _CopyWithStubImplMutationConfirmOrder(this._res);
//
//   TRes _res;
//
//   call({
//     MutationConfirmOrderconfirmOrder? confirmOrder,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationConfirmOrderconfirmOrder<TRes> get confirmOrder =>
//       CopyWithMutationConfirmOrderconfirmOrder.stub(_res);
// }
//
// const documentNodeMutationConfirmOrder = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'ConfirmOrder'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'code')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'referenceNumber')),
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
//         name: NameNode(value: 'confirmOrder'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'code'),
//                 value: VariableNode(name: NameNode(value: 'code')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'reference_number'),
//                 value: VariableNode(name: NameNode(value: 'referenceNumber')),
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
// MutationConfirmOrder _parserFnMutationConfirmOrder(Map<String, dynamic> data) =>
//     MutationConfirmOrder.fromJson(data);
// typedef OnMutationCompletedMutationConfirmOrder = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationConfirmOrder?,
// );
//
// class OptionsMutationConfirmOrder
//     extends graphql.MutationOptions<MutationConfirmOrder> {
//   OptionsMutationConfirmOrder({
//     String? operationName,
//     required VariablesMutationConfirmOrder variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationConfirmOrder? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationConfirmOrder? onCompleted,
//     graphql.OnMutationUpdate<MutationConfirmOrder>? update,
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
//                     data == null ? null : _parserFnMutationConfirmOrder(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationConfirmOrder,
//           parserFn: _parserFnMutationConfirmOrder,
//         );
//
//   final OnMutationCompletedMutationConfirmOrder? onCompletedWithParsed;
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
// class WatchOptionsMutationConfirmOrder
//     extends graphql.WatchQueryOptions<MutationConfirmOrder> {
//   WatchOptionsMutationConfirmOrder({
//     String? operationName,
//     required VariablesMutationConfirmOrder variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationConfirmOrder? typedOptimisticResult,
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
//           document: documentNodeMutationConfirmOrder,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationConfirmOrder,
//         );
// }
//
// extension ClientExtensionMutationConfirmOrder on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationConfirmOrder>> mutateConfirmOrder(
//           OptionsMutationConfirmOrder options) async =>
//       await this.mutate(options);
//   graphql.ObservableQuery<MutationConfirmOrder> watchMutationConfirmOrder(
//           WatchOptionsMutationConfirmOrder options) =>
//       this.watchMutation(options);
// }
//
// class MutationConfirmOrderHookResult {
//   MutationConfirmOrderHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationConfirmOrder runMutation;
//
//   final graphql.QueryResult<MutationConfirmOrder> result;
// }
//
// MutationConfirmOrderHookResult useMutationConfirmOrder(
//     [WidgetOptionsMutationConfirmOrder? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationConfirmOrder());
//   return MutationConfirmOrderHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationConfirmOrder> useWatchMutationConfirmOrder(
//         WatchOptionsMutationConfirmOrder options) =>
//     graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationConfirmOrder
//     extends graphql.MutationOptions<MutationConfirmOrder> {
//   WidgetOptionsMutationConfirmOrder({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationConfirmOrder? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationConfirmOrder? onCompleted,
//     graphql.OnMutationUpdate<MutationConfirmOrder>? update,
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
//                     data == null ? null : _parserFnMutationConfirmOrder(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationConfirmOrder,
//           parserFn: _parserFnMutationConfirmOrder,
//         );
//
//   final OnMutationCompletedMutationConfirmOrder? onCompletedWithParsed;
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
// typedef RunMutationMutationConfirmOrder
//     = graphql.MultiSourceResult<MutationConfirmOrder> Function(
//   VariablesMutationConfirmOrder, {
//   Object? optimisticResult,
//   MutationConfirmOrder? typedOptimisticResult,
// });
// typedef BuilderMutationConfirmOrder = widgets.Widget Function(
//   RunMutationMutationConfirmOrder,
//   graphql.QueryResult<MutationConfirmOrder>?,
// );
//
// class MutationConfirmOrderWidget
//     extends graphql_flutter.Mutation<MutationConfirmOrder> {
//   MutationConfirmOrderWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationConfirmOrder? options,
//     required BuilderMutationConfirmOrder builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationConfirmOrder(),
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
// class MutationConfirmOrderconfirmOrder {
//   MutationConfirmOrderconfirmOrder({
//     required this.status,
//     this.message,
//     required this.error,
//     this.$__typename = 'Result',
//   });
//
//   factory MutationConfirmOrderconfirmOrder.fromJson(Map<String, dynamic> json) {
//     final l$status = json['status'];
//     final l$message = json['message'];
//     final l$error = json['error'];
//     final l$$__typename = json['__typename'];
//     return MutationConfirmOrderconfirmOrder(
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
//     if (!(other is MutationConfirmOrderconfirmOrder) ||
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
// extension UtilityExtensionMutationConfirmOrderconfirmOrder
//     on MutationConfirmOrderconfirmOrder {
//   CopyWithMutationConfirmOrderconfirmOrder<MutationConfirmOrderconfirmOrder>
//       get copyWith => CopyWithMutationConfirmOrderconfirmOrder(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationConfirmOrderconfirmOrder<TRes> {
//   factory CopyWithMutationConfirmOrderconfirmOrder(
//     MutationConfirmOrderconfirmOrder instance,
//     TRes Function(MutationConfirmOrderconfirmOrder) then,
//   ) = _CopyWithImplMutationConfirmOrderconfirmOrder;
//
//   factory CopyWithMutationConfirmOrderconfirmOrder.stub(TRes res) =
//       _CopyWithStubImplMutationConfirmOrderconfirmOrder;
//
//   TRes call({
//     String? status,
//     String? message,
//     int? error,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationConfirmOrderconfirmOrder<TRes>
//     implements CopyWithMutationConfirmOrderconfirmOrder<TRes> {
//   _CopyWithImplMutationConfirmOrderconfirmOrder(
//     this._instance,
//     this._then,
//   );
//
//   final MutationConfirmOrderconfirmOrder _instance;
//
//   final TRes Function(MutationConfirmOrderconfirmOrder) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? status = _undefined,
//     Object? message = _undefined,
//     Object? error = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationConfirmOrderconfirmOrder(
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
// class _CopyWithStubImplMutationConfirmOrderconfirmOrder<TRes>
//     implements CopyWithMutationConfirmOrderconfirmOrder<TRes> {
//   _CopyWithStubImplMutationConfirmOrderconfirmOrder(this._res);
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
// class VariablesMutationValidateCoupon {
//   factory VariablesMutationValidateCoupon({
//     required int puncherId,
//     required List<InputProductItem> products,
//     String? coupon,
//   }) =>
//       VariablesMutationValidateCoupon._({
//         r'puncherId': puncherId,
//         r'products': products,
//         if (coupon != null) r'coupon': coupon,
//       });
//
//   VariablesMutationValidateCoupon._(this._$data);
//
//   factory VariablesMutationValidateCoupon.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$puncherId = data['puncherId'];
//     result$data['puncherId'] = (l$puncherId as int);
//     final l$products = data['products'];
//     result$data['products'] = (l$products as List<dynamic>)
//         .map((e) => InputProductItem.fromJson((e as Map<String, dynamic>)))
//         .toList();
//     if (data.containsKey('coupon')) {
//       final l$coupon = data['coupon'];
//       result$data['coupon'] = (l$coupon as String?);
//     }
//     return VariablesMutationValidateCoupon._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   int get puncherId => (_$data['puncherId'] as int);
//
//   List<InputProductItem> get products =>
//       (_$data['products'] as List<InputProductItem>);
//
//   String? get coupon => (_$data['coupon'] as String?);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$puncherId = puncherId;
//     result$data['puncherId'] = l$puncherId;
//     final l$products = products;
//     result$data['products'] = l$products.map((e) => e.toJson()).toList();
//     if (_$data.containsKey('coupon')) {
//       final l$coupon = coupon;
//       result$data['coupon'] = l$coupon;
//     }
//     return result$data;
//   }
//
//   CopyWithVariablesMutationValidateCoupon<VariablesMutationValidateCoupon>
//       get copyWith => CopyWithVariablesMutationValidateCoupon(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationValidateCoupon) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$puncherId = puncherId;
//     final lOther$puncherId = other.puncherId;
//     if (l$puncherId != lOther$puncherId) {
//       return false;
//     }
//     final l$products = products;
//     final lOther$products = other.products;
//     if (l$products.length != lOther$products.length) {
//       return false;
//     }
//     for (int i = 0; i < l$products.length; i++) {
//       final l$products$entry = l$products[i];
//       final lOther$products$entry = lOther$products[i];
//       if (l$products$entry != lOther$products$entry) {
//         return false;
//       }
//     }
//     final l$coupon = coupon;
//     final lOther$coupon = other.coupon;
//     if (_$data.containsKey('coupon') != other._$data.containsKey('coupon')) {
//       return false;
//     }
//     if (l$coupon != lOther$coupon) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$puncherId = puncherId;
//     final l$products = products;
//     final l$coupon = coupon;
//     return Object.hashAll([
//       l$puncherId,
//       Object.hashAll(l$products.map((v) => v)),
//       _$data.containsKey('coupon') ? l$coupon : const {},
//     ]);
//   }
// }
//
// abstract class CopyWithVariablesMutationValidateCoupon<TRes> {
//   factory CopyWithVariablesMutationValidateCoupon(
//     VariablesMutationValidateCoupon instance,
//     TRes Function(VariablesMutationValidateCoupon) then,
//   ) = _CopyWithImplVariablesMutationValidateCoupon;
//
//   factory CopyWithVariablesMutationValidateCoupon.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationValidateCoupon;
//
//   TRes call({
//     int? puncherId,
//     List<InputProductItem>? products,
//     String? coupon,
//   });
// }
//
// class _CopyWithImplVariablesMutationValidateCoupon<TRes>
//     implements CopyWithVariablesMutationValidateCoupon<TRes> {
//   _CopyWithImplVariablesMutationValidateCoupon(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationValidateCoupon _instance;
//
//   final TRes Function(VariablesMutationValidateCoupon) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? puncherId = _undefined,
//     Object? products = _undefined,
//     Object? coupon = _undefined,
//   }) =>
//       _then(VariablesMutationValidateCoupon._({
//         ..._instance._$data,
//         if (puncherId != _undefined && puncherId != null)
//           'puncherId': (puncherId as int),
//         if (products != _undefined && products != null)
//           'products': (products as List<InputProductItem>),
//         if (coupon != _undefined) 'coupon': (coupon as String?),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationValidateCoupon<TRes>
//     implements CopyWithVariablesMutationValidateCoupon<TRes> {
//   _CopyWithStubImplVariablesMutationValidateCoupon(this._res);
//
//   TRes _res;
//
//   call({
//     int? puncherId,
//     List<InputProductItem>? products,
//     String? coupon,
//   }) =>
//       _res;
// }
//
// class MutationValidateCoupon {
//   MutationValidateCoupon({
//     required this.validateCoupon,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationValidateCoupon.fromJson(Map<String, dynamic> json) {
//     final l$validateCoupon = json['validateCoupon'];
//     final l$$__typename = json['__typename'];
//     return MutationValidateCoupon(
//       validateCoupon: MutationValidateCouponvalidateCoupon.fromJson(
//           (l$validateCoupon as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationValidateCouponvalidateCoupon validateCoupon;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$validateCoupon = validateCoupon;
//     _resultData['validateCoupon'] = l$validateCoupon.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$validateCoupon = validateCoupon;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$validateCoupon,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationValidateCoupon) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$validateCoupon = validateCoupon;
//     final lOther$validateCoupon = other.validateCoupon;
//     if (l$validateCoupon != lOther$validateCoupon) {
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
// extension UtilityExtensionMutationValidateCoupon on MutationValidateCoupon {
//   CopyWithMutationValidateCoupon<MutationValidateCoupon> get copyWith =>
//       CopyWithMutationValidateCoupon(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationValidateCoupon<TRes> {
//   factory CopyWithMutationValidateCoupon(
//     MutationValidateCoupon instance,
//     TRes Function(MutationValidateCoupon) then,
//   ) = _CopyWithImplMutationValidateCoupon;
//
//   factory CopyWithMutationValidateCoupon.stub(TRes res) =
//       _CopyWithStubImplMutationValidateCoupon;
//
//   TRes call({
//     MutationValidateCouponvalidateCoupon? validateCoupon,
//     String? $__typename,
//   });
//   CopyWithMutationValidateCouponvalidateCoupon<TRes> get validateCoupon;
// }
//
// class _CopyWithImplMutationValidateCoupon<TRes>
//     implements CopyWithMutationValidateCoupon<TRes> {
//   _CopyWithImplMutationValidateCoupon(
//     this._instance,
//     this._then,
//   );
//
//   final MutationValidateCoupon _instance;
//
//   final TRes Function(MutationValidateCoupon) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? validateCoupon = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationValidateCoupon(
//         validateCoupon: validateCoupon == _undefined || validateCoupon == null
//             ? _instance.validateCoupon
//             : (validateCoupon as MutationValidateCouponvalidateCoupon),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationValidateCouponvalidateCoupon<TRes> get validateCoupon {
//     final local$validateCoupon = _instance.validateCoupon;
//     return CopyWithMutationValidateCouponvalidateCoupon(
//         local$validateCoupon, (e) => call(validateCoupon: e));
//   }
// }
//
// class _CopyWithStubImplMutationValidateCoupon<TRes>
//     implements CopyWithMutationValidateCoupon<TRes> {
//   _CopyWithStubImplMutationValidateCoupon(this._res);
//
//   TRes _res;
//
//   call({
//     MutationValidateCouponvalidateCoupon? validateCoupon,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationValidateCouponvalidateCoupon<TRes> get validateCoupon =>
//       CopyWithMutationValidateCouponvalidateCoupon.stub(_res);
// }
//
// const documentNodeMutationValidateCoupon = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'ValidateCoupon'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'puncherId')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'Int'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'products')),
//         type: ListTypeNode(
//           type: NamedTypeNode(
//             name: NameNode(value: 'ProductItem'),
//             isNonNull: true,
//           ),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'coupon')),
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
//         name: NameNode(value: 'validateCoupon'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'puncher'),
//                 value: VariableNode(name: NameNode(value: 'puncherId')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'products'),
//                 value: VariableNode(name: NameNode(value: 'products')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'coupon'),
//                 value: VariableNode(name: NameNode(value: 'coupon')),
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
//             name: NameNode(value: 'data'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: SelectionSetNode(selections: [
//               FieldNode(
//                 name: NameNode(value: 'price'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'total_price'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'vat'),
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
//                 name: NameNode(value: 'vat_value'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'discount_value'),
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
// MutationValidateCoupon _parserFnMutationValidateCoupon(
//         Map<String, dynamic> data) =>
//     MutationValidateCoupon.fromJson(data);
// typedef OnMutationCompletedMutationValidateCoupon = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationValidateCoupon?,
// );
//
// class OptionsMutationValidateCoupon
//     extends graphql.MutationOptions<MutationValidateCoupon> {
//   OptionsMutationValidateCoupon({
//     String? operationName,
//     required VariablesMutationValidateCoupon variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationValidateCoupon? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationValidateCoupon? onCompleted,
//     graphql.OnMutationUpdate<MutationValidateCoupon>? update,
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
//                     data == null ? null : _parserFnMutationValidateCoupon(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationValidateCoupon,
//           parserFn: _parserFnMutationValidateCoupon,
//         );
//
//   final OnMutationCompletedMutationValidateCoupon? onCompletedWithParsed;
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
// class WatchOptionsMutationValidateCoupon
//     extends graphql.WatchQueryOptions<MutationValidateCoupon> {
//   WatchOptionsMutationValidateCoupon({
//     String? operationName,
//     required VariablesMutationValidateCoupon variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationValidateCoupon? typedOptimisticResult,
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
//           document: documentNodeMutationValidateCoupon,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationValidateCoupon,
//         );
// }
//
// extension ClientExtensionMutationValidateCoupon on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationValidateCoupon>> mutateValidateCoupon(
//           OptionsMutationValidateCoupon options) async =>
//       await this.mutate(options);
//   graphql.ObservableQuery<MutationValidateCoupon> watchMutationValidateCoupon(
//           WatchOptionsMutationValidateCoupon options) =>
//       this.watchMutation(options);
// }
//
// class MutationValidateCouponHookResult {
//   MutationValidateCouponHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationValidateCoupon runMutation;
//
//   final graphql.QueryResult<MutationValidateCoupon> result;
// }
//
// MutationValidateCouponHookResult useMutationValidateCoupon(
//     [WidgetOptionsMutationValidateCoupon? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationValidateCoupon());
//   return MutationValidateCouponHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationValidateCoupon> useWatchMutationValidateCoupon(
//         WatchOptionsMutationValidateCoupon options) =>
//     graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationValidateCoupon
//     extends graphql.MutationOptions<MutationValidateCoupon> {
//   WidgetOptionsMutationValidateCoupon({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationValidateCoupon? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationValidateCoupon? onCompleted,
//     graphql.OnMutationUpdate<MutationValidateCoupon>? update,
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
//                     data == null ? null : _parserFnMutationValidateCoupon(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationValidateCoupon,
//           parserFn: _parserFnMutationValidateCoupon,
//         );
//
//   final OnMutationCompletedMutationValidateCoupon? onCompletedWithParsed;
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
// typedef RunMutationMutationValidateCoupon
//     = graphql.MultiSourceResult<MutationValidateCoupon> Function(
//   VariablesMutationValidateCoupon, {
//   Object? optimisticResult,
//   MutationValidateCoupon? typedOptimisticResult,
// });
// typedef BuilderMutationValidateCoupon = widgets.Widget Function(
//   RunMutationMutationValidateCoupon,
//   graphql.QueryResult<MutationValidateCoupon>?,
// );
//
// class MutationValidateCouponWidget
//     extends graphql_flutter.Mutation<MutationValidateCoupon> {
//   MutationValidateCouponWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationValidateCoupon? options,
//     required BuilderMutationValidateCoupon builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationValidateCoupon(),
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
// class MutationValidateCouponvalidateCoupon {
//   MutationValidateCouponvalidateCoupon({
//     required this.status,
//     this.message,
//     required this.error,
//     this.data,
//     this.$__typename = 'OrderResult',
//   });
//
//   factory MutationValidateCouponvalidateCoupon.fromJson(
//       Map<String, dynamic> json) {
//     final l$status = json['status'];
//     final l$message = json['message'];
//     final l$error = json['error'];
//     final l$data = json['data'];
//     final l$$__typename = json['__typename'];
//     return MutationValidateCouponvalidateCoupon(
//       status: (l$status as String),
//       message: (l$message as String?),
//       error: (l$error as int),
//       data: l$data == null
//           ? null
//           : MutationValidateCouponvalidateCoupondata.fromJson(
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
//   final MutationValidateCouponvalidateCoupondata? data;
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
//     if (!(other is MutationValidateCouponvalidateCoupon) ||
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
// extension UtilityExtensionMutationValidateCouponvalidateCoupon
//     on MutationValidateCouponvalidateCoupon {
//   CopyWithMutationValidateCouponvalidateCoupon<
//           MutationValidateCouponvalidateCoupon>
//       get copyWith => CopyWithMutationValidateCouponvalidateCoupon(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationValidateCouponvalidateCoupon<TRes> {
//   factory CopyWithMutationValidateCouponvalidateCoupon(
//     MutationValidateCouponvalidateCoupon instance,
//     TRes Function(MutationValidateCouponvalidateCoupon) then,
//   ) = _CopyWithImplMutationValidateCouponvalidateCoupon;
//
//   factory CopyWithMutationValidateCouponvalidateCoupon.stub(TRes res) =
//       _CopyWithStubImplMutationValidateCouponvalidateCoupon;
//
//   TRes call({
//     String? status,
//     String? message,
//     int? error,
//     MutationValidateCouponvalidateCoupondata? data,
//     String? $__typename,
//   });
//   CopyWithMutationValidateCouponvalidateCoupondata<TRes> get data;
// }
//
// class _CopyWithImplMutationValidateCouponvalidateCoupon<TRes>
//     implements CopyWithMutationValidateCouponvalidateCoupon<TRes> {
//   _CopyWithImplMutationValidateCouponvalidateCoupon(
//     this._instance,
//     this._then,
//   );
//
//   final MutationValidateCouponvalidateCoupon _instance;
//
//   final TRes Function(MutationValidateCouponvalidateCoupon) _then;
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
//       _then(MutationValidateCouponvalidateCoupon(
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
//             : (data as MutationValidateCouponvalidateCoupondata?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationValidateCouponvalidateCoupondata<TRes> get data {
//     final local$data = _instance.data;
//     return local$data == null
//         ? CopyWithMutationValidateCouponvalidateCoupondata.stub(
//             _then(_instance))
//         : CopyWithMutationValidateCouponvalidateCoupondata(
//             local$data, (e) => call(data: e));
//   }
// }
//
// class _CopyWithStubImplMutationValidateCouponvalidateCoupon<TRes>
//     implements CopyWithMutationValidateCouponvalidateCoupon<TRes> {
//   _CopyWithStubImplMutationValidateCouponvalidateCoupon(this._res);
//
//   TRes _res;
//
//   call({
//     String? status,
//     String? message,
//     int? error,
//     MutationValidateCouponvalidateCoupondata? data,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationValidateCouponvalidateCoupondata<TRes> get data =>
//       CopyWithMutationValidateCouponvalidateCoupondata.stub(_res);
// }
//
// class MutationValidateCouponvalidateCoupondata {
//   MutationValidateCouponvalidateCoupondata({
//     this.price,
//     this.total_price,
//     this.vat,
//     this.discount,
//     this.vat_value,
//     this.discount_value,
//     this.$__typename = 'OrderPricing',
//   });
//
//   factory MutationValidateCouponvalidateCoupondata.fromJson(
//       Map<String, dynamic> json) {
//     final l$price = json['price'];
//     final l$total_price = json['total_price'];
//     final l$vat = json['vat'];
//     final l$discount = json['discount'];
//     final l$vat_value = json['vat_value'];
//     final l$discount_value = json['discount_value'];
//     final l$$__typename = json['__typename'];
//     return MutationValidateCouponvalidateCoupondata(
//       price: (l$price as num?)?.toDouble(),
//       total_price: (l$total_price as num?)?.toDouble(),
//       vat: (l$vat as num?)?.toDouble(),
//       discount: (l$discount as num?)?.toDouble(),
//       vat_value: (l$vat_value as num?)?.toDouble(),
//       discount_value: (l$discount_value as num?)?.toDouble(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final double? price;
//
//   final double? total_price;
//
//   final double? vat;
//
//   final double? discount;
//
//   final double? vat_value;
//
//   final double? discount_value;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$price = price;
//     _resultData['price'] = l$price;
//     final l$total_price = total_price;
//     _resultData['total_price'] = l$total_price;
//     final l$vat = vat;
//     _resultData['vat'] = l$vat;
//     final l$discount = discount;
//     _resultData['discount'] = l$discount;
//     final l$vat_value = vat_value;
//     _resultData['vat_value'] = l$vat_value;
//     final l$discount_value = discount_value;
//     _resultData['discount_value'] = l$discount_value;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$price = price;
//     final l$total_price = total_price;
//     final l$vat = vat;
//     final l$discount = discount;
//     final l$vat_value = vat_value;
//     final l$discount_value = discount_value;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$price,
//       l$total_price,
//       l$vat,
//       l$discount,
//       l$vat_value,
//       l$discount_value,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationValidateCouponvalidateCoupondata) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$price = price;
//     final lOther$price = other.price;
//     if (l$price != lOther$price) {
//       return false;
//     }
//     final l$total_price = total_price;
//     final lOther$total_price = other.total_price;
//     if (l$total_price != lOther$total_price) {
//       return false;
//     }
//     final l$vat = vat;
//     final lOther$vat = other.vat;
//     if (l$vat != lOther$vat) {
//       return false;
//     }
//     final l$discount = discount;
//     final lOther$discount = other.discount;
//     if (l$discount != lOther$discount) {
//       return false;
//     }
//     final l$vat_value = vat_value;
//     final lOther$vat_value = other.vat_value;
//     if (l$vat_value != lOther$vat_value) {
//       return false;
//     }
//     final l$discount_value = discount_value;
//     final lOther$discount_value = other.discount_value;
//     if (l$discount_value != lOther$discount_value) {
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
// extension UtilityExtensionMutationValidateCouponvalidateCoupondata
//     on MutationValidateCouponvalidateCoupondata {
//   CopyWithMutationValidateCouponvalidateCoupondata<
//           MutationValidateCouponvalidateCoupondata>
//       get copyWith => CopyWithMutationValidateCouponvalidateCoupondata(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationValidateCouponvalidateCoupondata<TRes> {
//   factory CopyWithMutationValidateCouponvalidateCoupondata(
//     MutationValidateCouponvalidateCoupondata instance,
//     TRes Function(MutationValidateCouponvalidateCoupondata) then,
//   ) = _CopyWithImplMutationValidateCouponvalidateCoupondata;
//
//   factory CopyWithMutationValidateCouponvalidateCoupondata.stub(TRes res) =
//       _CopyWithStubImplMutationValidateCouponvalidateCoupondata;
//
//   TRes call({
//     double? price,
//     double? total_price,
//     double? vat,
//     double? discount,
//     double? vat_value,
//     double? discount_value,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationValidateCouponvalidateCoupondata<TRes>
//     implements CopyWithMutationValidateCouponvalidateCoupondata<TRes> {
//   _CopyWithImplMutationValidateCouponvalidateCoupondata(
//     this._instance,
//     this._then,
//   );
//
//   final MutationValidateCouponvalidateCoupondata _instance;
//
//   final TRes Function(MutationValidateCouponvalidateCoupondata) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? price = _undefined,
//     Object? total_price = _undefined,
//     Object? vat = _undefined,
//     Object? discount = _undefined,
//     Object? vat_value = _undefined,
//     Object? discount_value = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationValidateCouponvalidateCoupondata(
//         price: price == _undefined ? _instance.price : (price as double?),
//         total_price: total_price == _undefined
//             ? _instance.total_price
//             : (total_price as double?),
//         vat: vat == _undefined ? _instance.vat : (vat as double?),
//         discount:
//             discount == _undefined ? _instance.discount : (discount as double?),
//         vat_value: vat_value == _undefined
//             ? _instance.vat_value
//             : (vat_value as double?),
//         discount_value: discount_value == _undefined
//             ? _instance.discount_value
//             : (discount_value as double?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplMutationValidateCouponvalidateCoupondata<TRes>
//     implements CopyWithMutationValidateCouponvalidateCoupondata<TRes> {
//   _CopyWithStubImplMutationValidateCouponvalidateCoupondata(this._res);
//
//   TRes _res;
//
//   call({
//     double? price,
//     double? total_price,
//     double? vat,
//     double? discount,
//     double? vat_value,
//     double? discount_value,
//     String? $__typename,
//   }) =>
//       _res;
// }
