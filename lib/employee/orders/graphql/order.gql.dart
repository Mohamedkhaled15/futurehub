// import '../../../common/graphql/schema.gql.dart';
// import 'dart:async';
// import 'package:flutter/widgets.dart' as widgets;
// import 'package:gql/ast.dart';
// import 'package:graphql/client.dart' as graphql;
// import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
//
// class VariablesMutationCreateOrder {
//   factory VariablesMutationCreateOrder({
//     required int puncher,
//     required int branch,
//     String? coupon,
//     required List<InputProductItem> products,
//   }) =>
//       VariablesMutationCreateOrder._({
//         r'puncher': puncher,
//         r'branch': branch,
//         if (coupon != null) r'coupon': coupon,
//         r'products': products,
//       });
//
//   VariablesMutationCreateOrder._(this._$data);
//
//   factory VariablesMutationCreateOrder.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$puncher = data['puncher'];
//     result$data['puncher'] = (l$puncher as int);
//     final l$branch = data['branch'];
//     result$data['branch'] = (l$branch as int);
//     if (data.containsKey('coupon')) {
//       final l$coupon = data['coupon'];
//       result$data['coupon'] = (l$coupon as String?);
//     }
//     final l$products = data['products'];
//     result$data['products'] = (l$products as List<dynamic>)
//         .map((e) => InputProductItem.fromJson((e as Map<String, dynamic>)))
//         .toList();
//     return VariablesMutationCreateOrder._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   int get puncher => (_$data['puncher'] as int);
//
//   int get branch => (_$data['branch'] as int);
//
//   String? get coupon => (_$data['coupon'] as String?);
//
//   List<InputProductItem> get products =>
//       (_$data['products'] as List<InputProductItem>);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$puncher = puncher;
//     result$data['puncher'] = l$puncher;
//     final l$branch = branch;
//     result$data['branch'] = l$branch;
//     if (_$data.containsKey('coupon')) {
//       final l$coupon = coupon;
//       result$data['coupon'] = l$coupon;
//     }
//     final l$products = products;
//     result$data['products'] = l$products.map((e) => e.toJson()).toList();
//     return result$data;
//   }
//
//   CopyWithVariablesMutationCreateOrder<VariablesMutationCreateOrder>
//       get copyWith => CopyWithVariablesMutationCreateOrder(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationCreateOrder) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$puncher = puncher;
//     final lOther$puncher = other.puncher;
//     if (l$puncher != lOther$puncher) {
//       return false;
//     }
//     final l$branch = branch;
//     final lOther$branch = other.branch;
//     if (l$branch != lOther$branch) {
//       return false;
//     }
//     final l$coupon = coupon;
//     final lOther$coupon = other.coupon;
//     if (_$data.containsKey('coupon') != other._$data.containsKey('coupon')) {
//       return false;
//     }
//     if (l$coupon != lOther$coupon) {
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
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$puncher = puncher;
//     final l$branch = branch;
//     final l$coupon = coupon;
//     final l$products = products;
//     return Object.hashAll([
//       l$puncher,
//       l$branch,
//       _$data.containsKey('coupon') ? l$coupon : const {},
//       Object.hashAll(l$products.map((v) => v)),
//     ]);
//   }
// }
//
// abstract class CopyWithVariablesMutationCreateOrder<TRes> {
//   factory CopyWithVariablesMutationCreateOrder(
//     VariablesMutationCreateOrder instance,
//     TRes Function(VariablesMutationCreateOrder) then,
//   ) = _CopyWithImplVariablesMutationCreateOrder;
//
//   factory CopyWithVariablesMutationCreateOrder.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationCreateOrder;
//
//   TRes call({
//     int? puncher,
//     int? branch,
//     String? coupon,
//     List<InputProductItem>? products,
//   });
// }
//
// class _CopyWithImplVariablesMutationCreateOrder<TRes>
//     implements CopyWithVariablesMutationCreateOrder<TRes> {
//   _CopyWithImplVariablesMutationCreateOrder(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationCreateOrder _instance;
//
//   final TRes Function(VariablesMutationCreateOrder) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? puncher = _undefined,
//     Object? branch = _undefined,
//     Object? coupon = _undefined,
//     Object? products = _undefined,
//   }) =>
//       _then(VariablesMutationCreateOrder._({
//         ..._instance._$data,
//         if (puncher != _undefined && puncher != null)
//           'puncher': (puncher as int),
//         if (branch != _undefined && branch != null) 'branch': (branch as int),
//         if (coupon != _undefined) 'coupon': (coupon as String?),
//         if (products != _undefined && products != null)
//           'products': (products as List<InputProductItem>),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationCreateOrder<TRes>
//     implements CopyWithVariablesMutationCreateOrder<TRes> {
//   _CopyWithStubImplVariablesMutationCreateOrder(this._res);
//
//   TRes _res;
//
//   call({
//     int? puncher,
//     int? branch,
//     String? coupon,
//     List<InputProductItem>? products,
//   }) =>
//       _res;
// }
//
// class MutationCreateOrder {
//   MutationCreateOrder({
//     required this.createOrder,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationCreateOrder.fromJson(Map<String, dynamic> json) {
//     final l$createOrder = json['createOrder'];
//     final l$$__typename = json['__typename'];
//     return MutationCreateOrder(
//       createOrder: MutationCreateOrdercreateOrder.fromJson(
//           (l$createOrder as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationCreateOrdercreateOrder createOrder;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$createOrder = createOrder;
//     _resultData['createOrder'] = l$createOrder.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$createOrder = createOrder;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$createOrder,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationCreateOrder) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$createOrder = createOrder;
//     final lOther$createOrder = other.createOrder;
//     if (l$createOrder != lOther$createOrder) {
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
// extension UtilityExtensionMutationCreateOrder on MutationCreateOrder {
//   CopyWithMutationCreateOrder<MutationCreateOrder> get copyWith =>
//       CopyWithMutationCreateOrder(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationCreateOrder<TRes> {
//   factory CopyWithMutationCreateOrder(
//     MutationCreateOrder instance,
//     TRes Function(MutationCreateOrder) then,
//   ) = _CopyWithImplMutationCreateOrder;
//
//   factory CopyWithMutationCreateOrder.stub(TRes res) =
//       _CopyWithStubImplMutationCreateOrder;
//
//   TRes call({
//     MutationCreateOrdercreateOrder? createOrder,
//     String? $__typename,
//   });
//   CopyWithMutationCreateOrdercreateOrder<TRes> get createOrder;
// }
//
// class _CopyWithImplMutationCreateOrder<TRes>
//     implements CopyWithMutationCreateOrder<TRes> {
//   _CopyWithImplMutationCreateOrder(
//     this._instance,
//     this._then,
//   );
//
//   final MutationCreateOrder _instance;
//
//   final TRes Function(MutationCreateOrder) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? createOrder = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationCreateOrder(
//         createOrder: createOrder == _undefined || createOrder == null
//             ? _instance.createOrder
//             : (createOrder as MutationCreateOrdercreateOrder),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationCreateOrdercreateOrder<TRes> get createOrder {
//     final local$createOrder = _instance.createOrder;
//     return CopyWithMutationCreateOrdercreateOrder(
//         local$createOrder, (e) => call(createOrder: e));
//   }
// }
//
// class _CopyWithStubImplMutationCreateOrder<TRes>
//     implements CopyWithMutationCreateOrder<TRes> {
//   _CopyWithStubImplMutationCreateOrder(this._res);
//
//   TRes _res;
//
//   call({
//     MutationCreateOrdercreateOrder? createOrder,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationCreateOrdercreateOrder<TRes> get createOrder =>
//       CopyWithMutationCreateOrdercreateOrder.stub(_res);
// }
//
// const documentNodeMutationCreateOrder = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'CreateOrder'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'puncher')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'Int'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'branch')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'Int'),
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
//     ],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'createOrder'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'puncher'),
//                 value: VariableNode(name: NameNode(value: 'puncher')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'branch'),
//                 value: VariableNode(name: NameNode(value: 'branch')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'coupon'),
//                 value: VariableNode(name: NameNode(value: 'coupon')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'products'),
//                 value: VariableNode(name: NameNode(value: 'products')),
//               ),
//             ]),
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
//             name: NameNode(value: 'status'),
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
// MutationCreateOrder _parserFnMutationCreateOrder(Map<String, dynamic> data) =>
//     MutationCreateOrder.fromJson(data);
// typedef OnMutationCompletedMutationCreateOrder = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationCreateOrder?,
// );
//
// class OptionsMutationCreateOrder
//     extends graphql.MutationOptions<MutationCreateOrder> {
//   OptionsMutationCreateOrder({
//     String? operationName,
//     required VariablesMutationCreateOrder variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationCreateOrder? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationCreateOrder? onCompleted,
//     graphql.OnMutationUpdate<MutationCreateOrder>? update,
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
//                     data == null ? null : _parserFnMutationCreateOrder(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationCreateOrder,
//           parserFn: _parserFnMutationCreateOrder,
//         );
//
//   final OnMutationCompletedMutationCreateOrder? onCompletedWithParsed;
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
// class WatchOptionsMutationCreateOrder
//     extends graphql.WatchQueryOptions<MutationCreateOrder> {
//   WatchOptionsMutationCreateOrder({
//     String? operationName,
//     required VariablesMutationCreateOrder variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationCreateOrder? typedOptimisticResult,
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
//           document: documentNodeMutationCreateOrder,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationCreateOrder,
//         );
// }
//
// extension ClientExtensionMutationCreateOrder on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationCreateOrder>> mutateCreateOrder(
//           OptionsMutationCreateOrder options) async =>
//       await this.mutate(options);
//   graphql.ObservableQuery<MutationCreateOrder> watchMutationCreateOrder(
//           WatchOptionsMutationCreateOrder options) =>
//       this.watchMutation(options);
// }
//
// class MutationCreateOrderHookResult {
//   MutationCreateOrderHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationCreateOrder runMutation;
//
//   final graphql.QueryResult<MutationCreateOrder> result;
// }
//
// MutationCreateOrderHookResult useMutationCreateOrder(
//     [WidgetOptionsMutationCreateOrder? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationCreateOrder());
//   return MutationCreateOrderHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationCreateOrder> useWatchMutationCreateOrder(
//         WatchOptionsMutationCreateOrder options) =>
//     graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationCreateOrder
//     extends graphql.MutationOptions<MutationCreateOrder> {
//   WidgetOptionsMutationCreateOrder({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationCreateOrder? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationCreateOrder? onCompleted,
//     graphql.OnMutationUpdate<MutationCreateOrder>? update,
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
//                     data == null ? null : _parserFnMutationCreateOrder(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationCreateOrder,
//           parserFn: _parserFnMutationCreateOrder,
//         );
//
//   final OnMutationCompletedMutationCreateOrder? onCompletedWithParsed;
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
// typedef RunMutationMutationCreateOrder
//     = graphql.MultiSourceResult<MutationCreateOrder> Function(
//   VariablesMutationCreateOrder, {
//   Object? optimisticResult,
//   MutationCreateOrder? typedOptimisticResult,
// });
// typedef BuilderMutationCreateOrder = widgets.Widget Function(
//   RunMutationMutationCreateOrder,
//   graphql.QueryResult<MutationCreateOrder>?,
// );
//
// class MutationCreateOrderWidget
//     extends graphql_flutter.Mutation<MutationCreateOrder> {
//   MutationCreateOrderWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationCreateOrder? options,
//     required BuilderMutationCreateOrder builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationCreateOrder(),
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
// class MutationCreateOrdercreateOrder {
//   MutationCreateOrdercreateOrder({
//     required this.id,
//     this.reference_number,
//     this.price,
//     this.total_price,
//     this.discount,
//     this.discount_value,
//     this.vat,
//     this.vat_value,
//     this.status,
//     this.$__typename = 'Order',
//   });
//
//   factory MutationCreateOrdercreateOrder.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$reference_number = json['reference_number'];
//     final l$price = json['price'];
//     final l$total_price = json['total_price'];
//     final l$discount = json['discount'];
//     final l$discount_value = json['discount_value'];
//     final l$vat = json['vat'];
//     final l$vat_value = json['vat_value'];
//     final l$status = json['status'];
//     final l$$__typename = json['__typename'];
//     return MutationCreateOrdercreateOrder(
//       id: (l$id as String),
//       reference_number: (l$reference_number as String?),
//       price: (l$price as num?)?.toDouble(),
//       total_price: (l$total_price as num?)?.toDouble(),
//       discount: (l$discount as num?)?.toDouble(),
//       discount_value: (l$discount_value as num?)?.toDouble(),
//       vat: (l$vat as num?)?.toDouble(),
//       vat_value: (l$vat_value as num?)?.toDouble(),
//       status: (l$status as int?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
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
//   final int? status;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
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
//     final l$status = status;
//     _resultData['status'] = l$status;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$id = id;
//     final l$reference_number = reference_number;
//     final l$price = price;
//     final l$total_price = total_price;
//     final l$discount = discount;
//     final l$discount_value = discount_value;
//     final l$vat = vat;
//     final l$vat_value = vat_value;
//     final l$status = status;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$reference_number,
//       l$price,
//       l$total_price,
//       l$discount,
//       l$discount_value,
//       l$vat,
//       l$vat_value,
//       l$status,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationCreateOrdercreateOrder) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$id = id;
//     final lOther$id = other.id;
//     if (l$id != lOther$id) {
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
//     final l$status = status;
//     final lOther$status = other.status;
//     if (l$status != lOther$status) {
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
// extension UtilityExtensionMutationCreateOrdercreateOrder
//     on MutationCreateOrdercreateOrder {
//   CopyWithMutationCreateOrdercreateOrder<MutationCreateOrdercreateOrder>
//       get copyWith => CopyWithMutationCreateOrdercreateOrder(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationCreateOrdercreateOrder<TRes> {
//   factory CopyWithMutationCreateOrdercreateOrder(
//     MutationCreateOrdercreateOrder instance,
//     TRes Function(MutationCreateOrdercreateOrder) then,
//   ) = _CopyWithImplMutationCreateOrdercreateOrder;
//
//   factory CopyWithMutationCreateOrdercreateOrder.stub(TRes res) =
//       _CopyWithStubImplMutationCreateOrdercreateOrder;
//
//   TRes call({
//     String? id,
//     String? reference_number,
//     double? price,
//     double? total_price,
//     double? discount,
//     double? discount_value,
//     double? vat,
//     double? vat_value,
//     int? status,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationCreateOrdercreateOrder<TRes>
//     implements CopyWithMutationCreateOrdercreateOrder<TRes> {
//   _CopyWithImplMutationCreateOrdercreateOrder(
//     this._instance,
//     this._then,
//   );
//
//   final MutationCreateOrdercreateOrder _instance;
//
//   final TRes Function(MutationCreateOrdercreateOrder) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? reference_number = _undefined,
//     Object? price = _undefined,
//     Object? total_price = _undefined,
//     Object? discount = _undefined,
//     Object? discount_value = _undefined,
//     Object? vat = _undefined,
//     Object? vat_value = _undefined,
//     Object? status = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationCreateOrdercreateOrder(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
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
//         status: status == _undefined ? _instance.status : (status as int?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplMutationCreateOrdercreateOrder<TRes>
//     implements CopyWithMutationCreateOrdercreateOrder<TRes> {
//   _CopyWithStubImplMutationCreateOrdercreateOrder(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? reference_number,
//     double? price,
//     double? total_price,
//     double? discount,
//     double? discount_value,
//     double? vat,
//     double? vat_value,
//     int? status,
//     String? $__typename,
//   }) =>
//       _res;
// }
