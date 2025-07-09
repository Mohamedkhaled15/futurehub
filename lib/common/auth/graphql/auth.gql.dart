// import '../../graphql/schema.gql.dart';
// import 'dart:async';
// import 'package:flutter/widgets.dart' as widgets;
// import 'package:gql/ast.dart';
// import 'package:graphql/client.dart' as graphql;
// import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
//
// class VariablesMutationValidateMobile {
//   factory VariablesMutationValidateMobile({required String phone}) =>
//       VariablesMutationValidateMobile._({
//         r'phone': phone,
//       });
//
//   VariablesMutationValidateMobile._(this._$data);
//
//   factory VariablesMutationValidateMobile.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$phone = data['phone'];
//     result$data['phone'] = (l$phone as String);
//     return VariablesMutationValidateMobile._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   String get phone => (_$data['phone'] as String);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$phone = phone;
//     result$data['phone'] = l$phone;
//     return result$data;
//   }
//
//   CopyWithVariablesMutationValidateMobile<VariablesMutationValidateMobile>
//       get copyWith => CopyWithVariablesMutationValidateMobile(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationValidateMobile) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$phone = phone;
//     final lOther$phone = other.phone;
//     if (l$phone != lOther$phone) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$phone = phone;
//     return Object.hashAll([l$phone]);
//   }
// }
//
// abstract class CopyWithVariablesMutationValidateMobile<TRes> {
//   factory CopyWithVariablesMutationValidateMobile(
//     VariablesMutationValidateMobile instance,
//     TRes Function(VariablesMutationValidateMobile) then,
//   ) = _CopyWithImplVariablesMutationValidateMobile;
//
//   factory CopyWithVariablesMutationValidateMobile.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationValidateMobile;
//
//   TRes call({String? phone});
// }
//
// class _CopyWithImplVariablesMutationValidateMobile<TRes>
//     implements CopyWithVariablesMutationValidateMobile<TRes> {
//   _CopyWithImplVariablesMutationValidateMobile(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationValidateMobile _instance;
//
//   final TRes Function(VariablesMutationValidateMobile) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? phone = _undefined}) =>
//       _then(VariablesMutationValidateMobile._({
//         ..._instance._$data,
//         if (phone != _undefined && phone != null) 'phone': (phone as String),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationValidateMobile<TRes>
//     implements CopyWithVariablesMutationValidateMobile<TRes> {
//   _CopyWithStubImplVariablesMutationValidateMobile(this._res);
//
//   TRes _res;
//
//   call({String? phone}) => _res;
// }
//
// class MutationValidateMobile {
//   MutationValidateMobile({
//     this.validateMobile,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationValidateMobile.fromJson(Map<String, dynamic> json) {
//     final l$validateMobile = json['validateMobile'];
//     final l$$__typename = json['__typename'];
//     return MutationValidateMobile(
//       validateMobile: l$validateMobile == null
//           ? null
//           : MutationValidateMobilevalidateMobile.fromJson(
//               (l$validateMobile as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationValidateMobilevalidateMobile? validateMobile;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$validateMobile = validateMobile;
//     _resultData['validateMobile'] = l$validateMobile?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$validateMobile = validateMobile;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$validateMobile,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationValidateMobile) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$validateMobile = validateMobile;
//     final lOther$validateMobile = other.validateMobile;
//     if (l$validateMobile != lOther$validateMobile) {
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
// extension UtilityExtensionMutationValidateMobile on MutationValidateMobile {
//   CopyWithMutationValidateMobile<MutationValidateMobile> get copyWith =>
//       CopyWithMutationValidateMobile(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationValidateMobile<TRes> {
//   factory CopyWithMutationValidateMobile(
//     MutationValidateMobile instance,
//     TRes Function(MutationValidateMobile) then,
//   ) = _CopyWithImplMutationValidateMobile;
//
//   factory CopyWithMutationValidateMobile.stub(TRes res) =
//       _CopyWithStubImplMutationValidateMobile;
//
//   TRes call({
//     MutationValidateMobilevalidateMobile? validateMobile,
//     String? $__typename,
//   });
//   CopyWithMutationValidateMobilevalidateMobile<TRes> get validateMobile;
// }
//
// class _CopyWithImplMutationValidateMobile<TRes>
//     implements CopyWithMutationValidateMobile<TRes> {
//   _CopyWithImplMutationValidateMobile(
//     this._instance,
//     this._then,
//   );
//
//   final MutationValidateMobile _instance;
//
//   final TRes Function(MutationValidateMobile) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? validateMobile = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationValidateMobile(
//         validateMobile: validateMobile == _undefined
//             ? _instance.validateMobile
//             : (validateMobile as MutationValidateMobilevalidateMobile?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationValidateMobilevalidateMobile<TRes> get validateMobile {
//     final local$validateMobile = _instance.validateMobile;
//     return local$validateMobile == null
//         ? CopyWithMutationValidateMobilevalidateMobile.stub(_then(_instance))
//         : CopyWithMutationValidateMobilevalidateMobile(
//             local$validateMobile, (e) => call(validateMobile: e));
//   }
// }
//
// class _CopyWithStubImplMutationValidateMobile<TRes>
//     implements CopyWithMutationValidateMobile<TRes> {
//   _CopyWithStubImplMutationValidateMobile(this._res);
//
//   TRes _res;
//
//   call({
//     MutationValidateMobilevalidateMobile? validateMobile,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationValidateMobilevalidateMobile<TRes> get validateMobile =>
//       CopyWithMutationValidateMobilevalidateMobile.stub(_res);
// }
//
// const documentNodeMutationValidateMobile = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'ValidateMobile'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'phone')),
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
//         name: NameNode(value: 'validateMobile'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'mobile'),
//                 value: VariableNode(name: NameNode(value: 'phone')),
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
//             name: NameNode(value: 'first_login'),
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
// MutationValidateMobile _parserFnMutationValidateMobile(
//         Map<String, dynamic> data) =>
//     MutationValidateMobile.fromJson(data);
// typedef OnMutationCompletedMutationValidateMobile = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationValidateMobile?,
// );
//
// class OptionsMutationValidateMobile
//     extends graphql.MutationOptions<MutationValidateMobile> {
//   OptionsMutationValidateMobile({
//     String? operationName,
//     required VariablesMutationValidateMobile variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationValidateMobile? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationValidateMobile? onCompleted,
//     graphql.OnMutationUpdate<MutationValidateMobile>? update,
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
//                     data == null ? null : _parserFnMutationValidateMobile(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationValidateMobile,
//           parserFn: _parserFnMutationValidateMobile,
//         );
//
//   final OnMutationCompletedMutationValidateMobile? onCompletedWithParsed;
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
// class WatchOptionsMutationValidateMobile
//     extends graphql.WatchQueryOptions<MutationValidateMobile> {
//   WatchOptionsMutationValidateMobile({
//     String? operationName,
//     required VariablesMutationValidateMobile variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationValidateMobile? typedOptimisticResult,
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
//           document: documentNodeMutationValidateMobile,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationValidateMobile,
//         );
// }
//
// extension ClientExtensionMutationValidateMobile on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationValidateMobile>> mutateValidateMobile(
//           OptionsMutationValidateMobile options) async =>
//       await this.mutate(options);
//   graphql.ObservableQuery<MutationValidateMobile> watchMutationValidateMobile(
//           WatchOptionsMutationValidateMobile options) =>
//       this.watchMutation(options);
// }
//
// class MutationValidateMobileHookResult {
//   MutationValidateMobileHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationValidateMobile runMutation;
//
//   final graphql.QueryResult<MutationValidateMobile> result;
// }
//
// MutationValidateMobileHookResult useMutationValidateMobile(
//     [WidgetOptionsMutationValidateMobile? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationValidateMobile());
//   return MutationValidateMobileHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationValidateMobile> useWatchMutationValidateMobile(
//         WatchOptionsMutationValidateMobile options) =>
//     graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationValidateMobile
//     extends graphql.MutationOptions<MutationValidateMobile> {
//   WidgetOptionsMutationValidateMobile({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationValidateMobile? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationValidateMobile? onCompleted,
//     graphql.OnMutationUpdate<MutationValidateMobile>? update,
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
//                     data == null ? null : _parserFnMutationValidateMobile(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationValidateMobile,
//           parserFn: _parserFnMutationValidateMobile,
//         );
//
//   final OnMutationCompletedMutationValidateMobile? onCompletedWithParsed;
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
// typedef RunMutationMutationValidateMobile
//     = graphql.MultiSourceResult<MutationValidateMobile> Function(
//   VariablesMutationValidateMobile, {
//   Object? optimisticResult,
//   MutationValidateMobile? typedOptimisticResult,
// });
// typedef BuilderMutationValidateMobile = widgets.Widget Function(
//   RunMutationMutationValidateMobile,
//   graphql.QueryResult<MutationValidateMobile>?,
// );
//
// class MutationValidateMobileWidget
//     extends graphql_flutter.Mutation<MutationValidateMobile> {
//   MutationValidateMobileWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationValidateMobile? options,
//     required BuilderMutationValidateMobile builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationValidateMobile(),
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
// class MutationValidateMobilevalidateMobile {
//   MutationValidateMobilevalidateMobile({
//     required this.status,
//     required this.error,
//     this.message,
//     required this.first_login,
//     this.$__typename = 'ValidateMobileResult',
//   });
//
//   factory MutationValidateMobilevalidateMobile.fromJson(
//       Map<String, dynamic> json) {
//     final l$status = json['status'];
//     final l$error = json['error'];
//     final l$message = json['message'];
//     final l$first_login = json['first_login'];
//     final l$$__typename = json['__typename'];
//     return MutationValidateMobilevalidateMobile(
//       status: (l$status as String),
//       error: (l$error as int),
//       message: (l$message as String?),
//       first_login: (l$first_login as bool),
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
//   final bool first_login;
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
//     final l$first_login = first_login;
//     _resultData['first_login'] = l$first_login;
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
//     final l$first_login = first_login;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$status,
//       l$error,
//       l$message,
//       l$first_login,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationValidateMobilevalidateMobile) ||
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
//     final l$first_login = first_login;
//     final lOther$first_login = other.first_login;
//     if (l$first_login != lOther$first_login) {
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
// extension UtilityExtensionMutationValidateMobilevalidateMobile
//     on MutationValidateMobilevalidateMobile {
//   CopyWithMutationValidateMobilevalidateMobile<
//           MutationValidateMobilevalidateMobile>
//       get copyWith => CopyWithMutationValidateMobilevalidateMobile(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationValidateMobilevalidateMobile<TRes> {
//   factory CopyWithMutationValidateMobilevalidateMobile(
//     MutationValidateMobilevalidateMobile instance,
//     TRes Function(MutationValidateMobilevalidateMobile) then,
//   ) = _CopyWithImplMutationValidateMobilevalidateMobile;
//
//   factory CopyWithMutationValidateMobilevalidateMobile.stub(TRes res) =
//       _CopyWithStubImplMutationValidateMobilevalidateMobile;
//
//   TRes call({
//     String? status,
//     int? error,
//     String? message,
//     bool? first_login,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationValidateMobilevalidateMobile<TRes>
//     implements CopyWithMutationValidateMobilevalidateMobile<TRes> {
//   _CopyWithImplMutationValidateMobilevalidateMobile(
//     this._instance,
//     this._then,
//   );
//
//   final MutationValidateMobilevalidateMobile _instance;
//
//   final TRes Function(MutationValidateMobilevalidateMobile) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? status = _undefined,
//     Object? error = _undefined,
//     Object? message = _undefined,
//     Object? first_login = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationValidateMobilevalidateMobile(
//         status: status == _undefined || status == null
//             ? _instance.status
//             : (status as String),
//         error: error == _undefined || error == null
//             ? _instance.error
//             : (error as int),
//         message:
//             message == _undefined ? _instance.message : (message as String?),
//         first_login: first_login == _undefined || first_login == null
//             ? _instance.first_login
//             : (first_login as bool),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplMutationValidateMobilevalidateMobile<TRes>
//     implements CopyWithMutationValidateMobilevalidateMobile<TRes> {
//   _CopyWithStubImplMutationValidateMobilevalidateMobile(this._res);
//
//   TRes _res;
//
//   call({
//     String? status,
//     int? error,
//     String? message,
//     bool? first_login,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class MutationLogout {
//   MutationLogout({
//     required this.logout,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationLogout.fromJson(Map<String, dynamic> json) {
//     final l$logout = json['logout'];
//     final l$$__typename = json['__typename'];
//     return MutationLogout(
//       logout: MutationLogoutlogout.fromJson((l$logout as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationLogoutlogout logout;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$logout = logout;
//     _resultData['logout'] = l$logout.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$logout = logout;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$logout,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationLogout) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$logout = logout;
//     final lOther$logout = other.logout;
//     if (l$logout != lOther$logout) {
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
// extension UtilityExtensionMutationLogout on MutationLogout {
//   CopyWithMutationLogout<MutationLogout> get copyWith => CopyWithMutationLogout(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationLogout<TRes> {
//   factory CopyWithMutationLogout(
//     MutationLogout instance,
//     TRes Function(MutationLogout) then,
//   ) = _CopyWithImplMutationLogout;
//
//   factory CopyWithMutationLogout.stub(TRes res) =
//       _CopyWithStubImplMutationLogout;
//
//   TRes call({
//     MutationLogoutlogout? logout,
//     String? $__typename,
//   });
//   CopyWithMutationLogoutlogout<TRes> get logout;
// }
//
// class _CopyWithImplMutationLogout<TRes>
//     implements CopyWithMutationLogout<TRes> {
//   _CopyWithImplMutationLogout(
//     this._instance,
//     this._then,
//   );
//
//   final MutationLogout _instance;
//
//   final TRes Function(MutationLogout) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? logout = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationLogout(
//         logout: logout == _undefined || logout == null
//             ? _instance.logout
//             : (logout as MutationLogoutlogout),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationLogoutlogout<TRes> get logout {
//     final local$logout = _instance.logout;
//     return CopyWithMutationLogoutlogout(local$logout, (e) => call(logout: e));
//   }
// }
//
// class _CopyWithStubImplMutationLogout<TRes>
//     implements CopyWithMutationLogout<TRes> {
//   _CopyWithStubImplMutationLogout(this._res);
//
//   TRes _res;
//
//   call({
//     MutationLogoutlogout? logout,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationLogoutlogout<TRes> get logout =>
//       CopyWithMutationLogoutlogout.stub(_res);
// }
//
// const documentNodeMutationLogout = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'Logout'),
//     variableDefinitions: [],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'logout'),
//         alias: null,
//         arguments: [],
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
// MutationLogout _parserFnMutationLogout(Map<String, dynamic> data) =>
//     MutationLogout.fromJson(data);
// typedef OnMutationCompletedMutationLogout = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationLogout?,
// );
//
// class OptionsMutationLogout extends graphql.MutationOptions<MutationLogout> {
//   OptionsMutationLogout({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationLogout? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationLogout? onCompleted,
//     graphql.OnMutationUpdate<MutationLogout>? update,
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
//                     data == null ? null : _parserFnMutationLogout(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationLogout,
//           parserFn: _parserFnMutationLogout,
//         );
//
//   final OnMutationCompletedMutationLogout? onCompletedWithParsed;
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
// class WatchOptionsMutationLogout
//     extends graphql.WatchQueryOptions<MutationLogout> {
//   WatchOptionsMutationLogout({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationLogout? typedOptimisticResult,
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
//           document: documentNodeMutationLogout,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationLogout,
//         );
// }
//
// extension ClientExtensionMutationLogout on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationLogout>> mutateLogout(
//           [OptionsMutationLogout? options]) async =>
//       await this.mutate(options ?? OptionsMutationLogout());
//   graphql.ObservableQuery<MutationLogout> watchMutationLogout(
//           [WatchOptionsMutationLogout? options]) =>
//       this.watchMutation(options ?? WatchOptionsMutationLogout());
// }
//
// class MutationLogoutHookResult {
//   MutationLogoutHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationLogout runMutation;
//
//   final graphql.QueryResult<MutationLogout> result;
// }
//
// MutationLogoutHookResult useMutationLogout(
//     [WidgetOptionsMutationLogout? options]) {
//   final result =
//       graphql_flutter.useMutation(options ?? WidgetOptionsMutationLogout());
//   return MutationLogoutHookResult(
//     ({optimisticResult, typedOptimisticResult}) => result.runMutation(
//       const {},
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationLogout> useWatchMutationLogout(
//         [WatchOptionsMutationLogout? options]) =>
//     graphql_flutter.useWatchMutation(options ?? WatchOptionsMutationLogout());
//
// class WidgetOptionsMutationLogout
//     extends graphql.MutationOptions<MutationLogout> {
//   WidgetOptionsMutationLogout({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationLogout? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationLogout? onCompleted,
//     graphql.OnMutationUpdate<MutationLogout>? update,
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
//                     data == null ? null : _parserFnMutationLogout(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationLogout,
//           parserFn: _parserFnMutationLogout,
//         );
//
//   final OnMutationCompletedMutationLogout? onCompletedWithParsed;
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
// typedef RunMutationMutationLogout = graphql.MultiSourceResult<MutationLogout>
//     Function({
//   Object? optimisticResult,
//   MutationLogout? typedOptimisticResult,
// });
// typedef BuilderMutationLogout = widgets.Widget Function(
//   RunMutationMutationLogout,
//   graphql.QueryResult<MutationLogout>?,
// );
//
// class MutationLogoutWidget extends graphql_flutter.Mutation<MutationLogout> {
//   MutationLogoutWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationLogout? options,
//     required BuilderMutationLogout builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationLogout(),
//           builder: (
//             run,
//             result,
//           ) =>
//               builder(
//             ({
//               optimisticResult,
//               typedOptimisticResult,
//             }) =>
//                 run(
//               const {},
//               optimisticResult:
//                   optimisticResult ?? typedOptimisticResult?.toJson(),
//             ),
//             result,
//           ),
//         );
// }
//
// class MutationLogoutlogout {
//   MutationLogoutlogout({
//     required this.error,
//     required this.status,
//     this.message,
//     this.$__typename = 'Result',
//   });
//
//   factory MutationLogoutlogout.fromJson(Map<String, dynamic> json) {
//     final l$error = json['error'];
//     final l$status = json['status'];
//     final l$message = json['message'];
//     final l$$__typename = json['__typename'];
//     return MutationLogoutlogout(
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
//     if (!(other is MutationLogoutlogout) || runtimeType != other.runtimeType) {
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
// extension UtilityExtensionMutationLogoutlogout on MutationLogoutlogout {
//   CopyWithMutationLogoutlogout<MutationLogoutlogout> get copyWith =>
//       CopyWithMutationLogoutlogout(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationLogoutlogout<TRes> {
//   factory CopyWithMutationLogoutlogout(
//     MutationLogoutlogout instance,
//     TRes Function(MutationLogoutlogout) then,
//   ) = _CopyWithImplMutationLogoutlogout;
//
//   factory CopyWithMutationLogoutlogout.stub(TRes res) =
//       _CopyWithStubImplMutationLogoutlogout;
//
//   TRes call({
//     int? error,
//     String? status,
//     String? message,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationLogoutlogout<TRes>
//     implements CopyWithMutationLogoutlogout<TRes> {
//   _CopyWithImplMutationLogoutlogout(
//     this._instance,
//     this._then,
//   );
//
//   final MutationLogoutlogout _instance;
//
//   final TRes Function(MutationLogoutlogout) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? error = _undefined,
//     Object? status = _undefined,
//     Object? message = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationLogoutlogout(
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
// class _CopyWithStubImplMutationLogoutlogout<TRes>
//     implements CopyWithMutationLogoutlogout<TRes> {
//   _CopyWithStubImplMutationLogoutlogout(this._res);
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
// class VariablesMutationLogina {
//   factory VariablesMutationLogina({
//     required String phone,
//     required String password,
//   }) =>
//       VariablesMutationLogina._({
//         r'phone': phone,
//         r'password': password,
//       });
//
//   VariablesMutationLogina._(this._$data);
//
//   factory VariablesMutationLogina.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$phone = data['phone'];
//     result$data['phone'] = (l$phone as String);
//     final l$password = data['password'];
//     result$data['password'] = (l$password as String);
//     return VariablesMutationLogina._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   String get phone => (_$data['phone'] as String);
//
//   String get password => (_$data['password'] as String);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$phone = phone;
//     result$data['phone'] = l$phone;
//     final l$password = password;
//     result$data['password'] = l$password;
//     return result$data;
//   }
//
//   CopyWithVariablesMutationLogina<VariablesMutationLogina> get copyWith =>
//       CopyWithVariablesMutationLogina(
//         this,
//         (i) => i,
//       );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationLogina) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$phone = phone;
//     final lOther$phone = other.phone;
//     if (l$phone != lOther$phone) {
//       return false;
//     }
//     final l$password = password;
//     final lOther$password = other.password;
//     if (l$password != lOther$password) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$phone = phone;
//     final l$password = password;
//     return Object.hashAll([
//       l$phone,
//       l$password,
//     ]);
//   }
// }
//
// abstract class CopyWithVariablesMutationLogina<TRes> {
//   factory CopyWithVariablesMutationLogina(
//     VariablesMutationLogina instance,
//     TRes Function(VariablesMutationLogina) then,
//   ) = _CopyWithImplVariablesMutationLogina;
//
//   factory CopyWithVariablesMutationLogina.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationLogina;
//
//   TRes call({
//     String? phone,
//     String? password,
//   });
// }
//
// class _CopyWithImplVariablesMutationLogina<TRes>
//     implements CopyWithVariablesMutationLogina<TRes> {
//   _CopyWithImplVariablesMutationLogina(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationLogina _instance;
//
//   final TRes Function(VariablesMutationLogina) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? phone = _undefined,
//     Object? password = _undefined,
//   }) =>
//       _then(VariablesMutationLogina._({
//         ..._instance._$data,
//         if (phone != _undefined && phone != null) 'phone': (phone as String),
//         if (password != _undefined && password != null)
//           'password': (password as String),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationLogina<TRes>
//     implements CopyWithVariablesMutationLogina<TRes> {
//   _CopyWithStubImplVariablesMutationLogina(this._res);
//
//   TRes _res;
//
//   call({
//     String? phone,
//     String? password,
//   }) =>
//       _res;
// }
//
// class MutationLogina {
//   MutationLogina({
//     required this.login,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationLogina.fromJson(Map<String, dynamic> json) {
//     final l$login = json['login'];
//     final l$$__typename = json['__typename'];
//     return MutationLogina(
//       login: MutationLoginalogin.fromJson((l$login as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationLoginalogin login;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$login = login;
//     _resultData['login'] = l$login.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$login = login;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$login,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationLogina) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$login = login;
//     final lOther$login = other.login;
//     if (l$login != lOther$login) {
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
// extension UtilityExtensionMutationLogina on MutationLogina {
//   CopyWithMutationLogina<MutationLogina> get copyWith => CopyWithMutationLogina(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationLogina<TRes> {
//   factory CopyWithMutationLogina(
//     MutationLogina instance,
//     TRes Function(MutationLogina) then,
//   ) = _CopyWithImplMutationLogina;
//
//   factory CopyWithMutationLogina.stub(TRes res) =
//       _CopyWithStubImplMutationLogina;
//
//   TRes call({
//     MutationLoginalogin? login,
//     String? $__typename,
//   });
//   CopyWithMutationLoginalogin<TRes> get login;
// }
//
// class _CopyWithImplMutationLogina<TRes>
//     implements CopyWithMutationLogina<TRes> {
//   _CopyWithImplMutationLogina(
//     this._instance,
//     this._then,
//   );
//
//   final MutationLogina _instance;
//
//   final TRes Function(MutationLogina) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? login = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationLogina(
//         login: login == _undefined || login == null
//             ? _instance.login
//             : (login as MutationLoginalogin),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationLoginalogin<TRes> get login {
//     final local$login = _instance.login;
//     return CopyWithMutationLoginalogin(local$login, (e) => call(login: e));
//   }
// }
//
// class _CopyWithStubImplMutationLogina<TRes>
//     implements CopyWithMutationLogina<TRes> {
//   _CopyWithStubImplMutationLogina(this._res);
//
//   TRes _res;
//
//   call({
//     MutationLoginalogin? login,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationLoginalogin<TRes> get login =>
//       CopyWithMutationLoginalogin.stub(_res);
// }
//
// const documentNodeMutationLogina = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'Logina'),
//     variableDefinitions: [
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
//         variable: VariableNode(name: NameNode(value: 'password')),
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
//         name: NameNode(value: 'login'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'mobile'),
//                 value: VariableNode(name: NameNode(value: 'phone')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'password'),
//                 value: VariableNode(name: NameNode(value: 'password')),
//               ),
//             ]),
//           )
//         ],
//         directives: [],
//         selectionSet: SelectionSetNode(selections: [
//           FieldNode(
//             name: NameNode(value: 'token'),
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
//                 name: NameNode(value: 'lang'),
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
//                 name: NameNode(value: 'birth_date'),
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
//                 name: NameNode(value: 'type'),
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
//                 name: NameNode(value: 'username'),
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
//                 name: NameNode(value: 'wallet_limit'),
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
//                 name: NameNode(value: 'points'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'user_company'),
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
//                     name: NameNode(value: 'can_update_price'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'customer_points_benefit'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'points_benefit'),
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
// MutationLogina _parserFnMutationLogina(Map<String, dynamic> data) =>
//     MutationLogina.fromJson(data);
// typedef OnMutationCompletedMutationLogina = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationLogina?,
// );
//
// class OptionsMutationLogina extends graphql.MutationOptions<MutationLogina> {
//   OptionsMutationLogina({
//     String? operationName,
//     required VariablesMutationLogina variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationLogina? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationLogina? onCompleted,
//     graphql.OnMutationUpdate<MutationLogina>? update,
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
//                     data == null ? null : _parserFnMutationLogina(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationLogina,
//           parserFn: _parserFnMutationLogina,
//         );
//
//   final OnMutationCompletedMutationLogina? onCompletedWithParsed;
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
// class WatchOptionsMutationLogina
//     extends graphql.WatchQueryOptions<MutationLogina> {
//   WatchOptionsMutationLogina({
//     String? operationName,
//     required VariablesMutationLogina variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationLogina? typedOptimisticResult,
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
//           document: documentNodeMutationLogina,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationLogina,
//         );
// }
//
// extension ClientExtensionMutationLogina on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationLogina>> mutateLogina(
//           OptionsMutationLogina options) async =>
//       await this.mutate(options);
//   graphql.ObservableQuery<MutationLogina> watchMutationLogina(
//           WatchOptionsMutationLogina options) =>
//       this.watchMutation(options);
// }
//
// class MutationLoginaHookResult {
//   MutationLoginaHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationLogina runMutation;
//
//   final graphql.QueryResult<MutationLogina> result;
// }
//
// MutationLoginaHookResult useMutationLogina(
//     [WidgetOptionsMutationLogina? options]) {
//   final result =
//       graphql_flutter.useMutation(options ?? WidgetOptionsMutationLogina());
//   return MutationLoginaHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationLogina> useWatchMutationLogina(
//         WatchOptionsMutationLogina options) =>
//     graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationLogina
//     extends graphql.MutationOptions<MutationLogina> {
//   WidgetOptionsMutationLogina({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationLogina? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationLogina? onCompleted,
//     graphql.OnMutationUpdate<MutationLogina>? update,
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
//                     data == null ? null : _parserFnMutationLogina(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationLogina,
//           parserFn: _parserFnMutationLogina,
//         );
//
//   final OnMutationCompletedMutationLogina? onCompletedWithParsed;
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
// typedef RunMutationMutationLogina = graphql.MultiSourceResult<MutationLogina>
//     Function(
//   VariablesMutationLogina, {
//   Object? optimisticResult,
//   MutationLogina? typedOptimisticResult,
// });
// typedef BuilderMutationLogina = widgets.Widget Function(
//   RunMutationMutationLogina,
//   graphql.QueryResult<MutationLogina>?,
// );
//
// class MutationLoginaWidget extends graphql_flutter.Mutation<MutationLogina> {
//   MutationLoginaWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationLogina? options,
//     required BuilderMutationLogina builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationLogina(),
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
// class MutationLoginalogin {
//   MutationLoginalogin({
//     this.token,
//     this.user,
//     required this.error,
//     required this.status,
//     this.message,
//     this.$__typename = 'AccessToken',
//   });
//
//   factory MutationLoginalogin.fromJson(Map<String, dynamic> json) {
//     final l$token = json['token'];
//     final l$user = json['user'];
//     final l$error = json['error'];
//     final l$status = json['status'];
//     final l$message = json['message'];
//     final l$$__typename = json['__typename'];
//     return MutationLoginalogin(
//       token: (l$token as String?),
//       user: l$user == null
//           ? null
//           : MutationLoginaloginuser.fromJson((l$user as Map<String, dynamic>)),
//       error: (l$error as int),
//       status: (l$status as String),
//       message: (l$message as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String? token;
//
//   final MutationLoginaloginuser? user;
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
//     final l$token = token;
//     _resultData['token'] = l$token;
//     final l$user = user;
//     _resultData['user'] = l$user?.toJson();
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
//     final l$token = token;
//     final l$user = user;
//     final l$error = error;
//     final l$status = status;
//     final l$message = message;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$token,
//       l$user,
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
//     if (!(other is MutationLoginalogin) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$token = token;
//     final lOther$token = other.token;
//     if (l$token != lOther$token) {
//       return false;
//     }
//     final l$user = user;
//     final lOther$user = other.user;
//     if (l$user != lOther$user) {
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
// extension UtilityExtensionMutationLoginalogin on MutationLoginalogin {
//   CopyWithMutationLoginalogin<MutationLoginalogin> get copyWith =>
//       CopyWithMutationLoginalogin(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationLoginalogin<TRes> {
//   factory CopyWithMutationLoginalogin(
//     MutationLoginalogin instance,
//     TRes Function(MutationLoginalogin) then,
//   ) = _CopyWithImplMutationLoginalogin;
//
//   factory CopyWithMutationLoginalogin.stub(TRes res) =
//       _CopyWithStubImplMutationLoginalogin;
//
//   TRes call({
//     String? token,
//     MutationLoginaloginuser? user,
//     int? error,
//     String? status,
//     String? message,
//     String? $__typename,
//   });
//   CopyWithMutationLoginaloginuser<TRes> get user;
// }
//
// class _CopyWithImplMutationLoginalogin<TRes>
//     implements CopyWithMutationLoginalogin<TRes> {
//   _CopyWithImplMutationLoginalogin(
//     this._instance,
//     this._then,
//   );
//
//   final MutationLoginalogin _instance;
//
//   final TRes Function(MutationLoginalogin) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? token = _undefined,
//     Object? user = _undefined,
//     Object? error = _undefined,
//     Object? status = _undefined,
//     Object? message = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationLoginalogin(
//         token: token == _undefined ? _instance.token : (token as String?),
//         user: user == _undefined
//             ? _instance.user
//             : (user as MutationLoginaloginuser?),
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
//
//   CopyWithMutationLoginaloginuser<TRes> get user {
//     final local$user = _instance.user;
//     return local$user == null
//         ? CopyWithMutationLoginaloginuser.stub(_then(_instance))
//         : CopyWithMutationLoginaloginuser(local$user, (e) => call(user: e));
//   }
// }
//
// class _CopyWithStubImplMutationLoginalogin<TRes>
//     implements CopyWithMutationLoginalogin<TRes> {
//   _CopyWithStubImplMutationLoginalogin(this._res);
//
//   TRes _res;
//
//   call({
//     String? token,
//     MutationLoginaloginuser? user,
//     int? error,
//     String? status,
//     String? message,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationLoginaloginuser<TRes> get user =>
//       CopyWithMutationLoginaloginuser.stub(_res);
// }
//
// class MutationLoginaloginuser {
//   MutationLoginaloginuser({
//     required this.id,
//     this.name,
//     this.mobile,
//     this.email,
//     this.lang,
//     this.gender,
//     this.birth_date,
//     this.image_path,
//     this.type,
//     this.national_id,
//     this.username,
//     this.active,
//     this.wallet_limit,
//     this.wallet,
//     this.withdrawal,
//     this.points,
//     this.user_company,
//     this.$__typename = 'User',
//   });
//
//   factory MutationLoginaloginuser.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$mobile = json['mobile'];
//     final l$email = json['email'];
//     final l$lang = json['lang'];
//     final l$gender = json['gender'];
//     final l$birth_date = json['birth_date'];
//     final l$image_path = json['image_path'];
//     final l$type = json['type'];
//     final l$national_id = json['national_id'];
//     final l$username = json['username'];
//     final l$active = json['active'];
//     final l$wallet_limit = json['wallet_limit'];
//     final l$wallet = json['wallet'];
//     final l$withdrawal = json['withdrawal'];
//     final l$points = json['points'];
//     final l$user_company = json['user_company'];
//     final l$$__typename = json['__typename'];
//     return MutationLoginaloginuser(
//       id: (l$id as String),
//       name: (l$name as String?),
//       mobile: (l$mobile as String?),
//       email: (l$email as String?),
//       lang: (l$lang as String?),
//       gender: (l$gender as String?),
//       birth_date: (l$birth_date as String?),
//       image_path: (l$image_path as String?),
//       type: (l$type as String?),
//       national_id: (l$national_id as String?),
//       username: (l$username as String?),
//       active: (l$active as bool?),
//       wallet_limit: (l$wallet_limit as num?)?.toDouble(),
//       wallet: (l$wallet as num?)?.toDouble(),
//       withdrawal: (l$withdrawal as num?)?.toDouble(),
//       points: (l$points as int?),
//       user_company: l$user_company == null
//           ? null
//           : MutationLoginaloginuseruser_company.fromJson(
//               (l$user_company as Map<String, dynamic>)),
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
//   final String? lang;
//
//   final String? gender;
//
//   final String? birth_date;
//
//   final String? image_path;
//
//   final String? type;
//
//   final String? national_id;
//
//   final String? username;
//
//   final bool? active;
//
//   final double? wallet_limit;
//
//   final double? wallet;
//
//   final double? withdrawal;
//
//   final int? points;
//
//   final MutationLoginaloginuseruser_company? user_company;
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
//     final l$lang = lang;
//     _resultData['lang'] = l$lang;
//     final l$gender = gender;
//     _resultData['gender'] = l$gender;
//     final l$birth_date = birth_date;
//     _resultData['birth_date'] = l$birth_date;
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$type = type;
//     _resultData['type'] = l$type;
//     final l$national_id = national_id;
//     _resultData['national_id'] = l$national_id;
//     final l$username = username;
//     _resultData['username'] = l$username;
//     final l$active = active;
//     _resultData['active'] = l$active;
//     final l$wallet_limit = wallet_limit;
//     _resultData['wallet_limit'] = l$wallet_limit;
//     final l$wallet = wallet;
//     _resultData['wallet'] = l$wallet;
//     final l$withdrawal = withdrawal;
//     _resultData['withdrawal'] = l$withdrawal;
//     final l$points = points;
//     _resultData['points'] = l$points;
//     final l$user_company = user_company;
//     _resultData['user_company'] = l$user_company?.toJson();
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
//     final l$lang = lang;
//     final l$gender = gender;
//     final l$birth_date = birth_date;
//     final l$image_path = image_path;
//     final l$type = type;
//     final l$national_id = national_id;
//     final l$username = username;
//     final l$active = active;
//     final l$wallet_limit = wallet_limit;
//     final l$wallet = wallet;
//     final l$withdrawal = withdrawal;
//     final l$points = points;
//     final l$user_company = user_company;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$name,
//       l$mobile,
//       l$email,
//       l$lang,
//       l$gender,
//       l$birth_date,
//       l$image_path,
//       l$type,
//       l$national_id,
//       l$username,
//       l$active,
//       l$wallet_limit,
//       l$wallet,
//       l$withdrawal,
//       l$points,
//       l$user_company,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationLoginaloginuser) ||
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
//     final l$lang = lang;
//     final lOther$lang = other.lang;
//     if (l$lang != lOther$lang) {
//       return false;
//     }
//     final l$gender = gender;
//     final lOther$gender = other.gender;
//     if (l$gender != lOther$gender) {
//       return false;
//     }
//     final l$birth_date = birth_date;
//     final lOther$birth_date = other.birth_date;
//     if (l$birth_date != lOther$birth_date) {
//       return false;
//     }
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
//       return false;
//     }
//     final l$type = type;
//     final lOther$type = other.type;
//     if (l$type != lOther$type) {
//       return false;
//     }
//     final l$national_id = national_id;
//     final lOther$national_id = other.national_id;
//     if (l$national_id != lOther$national_id) {
//       return false;
//     }
//     final l$username = username;
//     final lOther$username = other.username;
//     if (l$username != lOther$username) {
//       return false;
//     }
//     final l$active = active;
//     final lOther$active = other.active;
//     if (l$active != lOther$active) {
//       return false;
//     }
//     final l$wallet_limit = wallet_limit;
//     final lOther$wallet_limit = other.wallet_limit;
//     if (l$wallet_limit != lOther$wallet_limit) {
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
//     final l$points = points;
//     final lOther$points = other.points;
//     if (l$points != lOther$points) {
//       return false;
//     }
//     final l$user_company = user_company;
//     final lOther$user_company = other.user_company;
//     if (l$user_company != lOther$user_company) {
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
// extension UtilityExtensionMutationLoginaloginuser on MutationLoginaloginuser {
//   CopyWithMutationLoginaloginuser<MutationLoginaloginuser> get copyWith =>
//       CopyWithMutationLoginaloginuser(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationLoginaloginuser<TRes> {
//   factory CopyWithMutationLoginaloginuser(
//     MutationLoginaloginuser instance,
//     TRes Function(MutationLoginaloginuser) then,
//   ) = _CopyWithImplMutationLoginaloginuser;
//
//   factory CopyWithMutationLoginaloginuser.stub(TRes res) =
//       _CopyWithStubImplMutationLoginaloginuser;
//
//   TRes call({
//     String? id,
//     String? name,
//     String? mobile,
//     String? email,
//     String? lang,
//     String? gender,
//     String? birth_date,
//     String? image_path,
//     String? type,
//     String? national_id,
//     String? username,
//     bool? active,
//     double? wallet_limit,
//     double? wallet,
//     double? withdrawal,
//     int? points,
//     MutationLoginaloginuseruser_company? user_company,
//     String? $__typename,
//   });
//   CopyWithMutationLoginaloginuseruser_company<TRes> get user_company;
// }
//
// class _CopyWithImplMutationLoginaloginuser<TRes>
//     implements CopyWithMutationLoginaloginuser<TRes> {
//   _CopyWithImplMutationLoginaloginuser(
//     this._instance,
//     this._then,
//   );
//
//   final MutationLoginaloginuser _instance;
//
//   final TRes Function(MutationLoginaloginuser) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? name = _undefined,
//     Object? mobile = _undefined,
//     Object? email = _undefined,
//     Object? lang = _undefined,
//     Object? gender = _undefined,
//     Object? birth_date = _undefined,
//     Object? image_path = _undefined,
//     Object? type = _undefined,
//     Object? national_id = _undefined,
//     Object? username = _undefined,
//     Object? active = _undefined,
//     Object? wallet_limit = _undefined,
//     Object? wallet = _undefined,
//     Object? withdrawal = _undefined,
//     Object? points = _undefined,
//     Object? user_company = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationLoginaloginuser(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         name: name == _undefined ? _instance.name : (name as String?),
//         mobile: mobile == _undefined ? _instance.mobile : (mobile as String?),
//         email: email == _undefined ? _instance.email : (email as String?),
//         lang: lang == _undefined ? _instance.lang : (lang as String?),
//         gender: gender == _undefined ? _instance.gender : (gender as String?),
//         birth_date: birth_date == _undefined
//             ? _instance.birth_date
//             : (birth_date as String?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         type: type == _undefined ? _instance.type : (type as String?),
//         national_id: national_id == _undefined
//             ? _instance.national_id
//             : (national_id as String?),
//         username:
//             username == _undefined ? _instance.username : (username as String?),
//         active: active == _undefined ? _instance.active : (active as bool?),
//         wallet_limit: wallet_limit == _undefined
//             ? _instance.wallet_limit
//             : (wallet_limit as double?),
//         wallet: wallet == _undefined ? _instance.wallet : (wallet as double?),
//         withdrawal: withdrawal == _undefined
//             ? _instance.withdrawal
//             : (withdrawal as double?),
//         points: points == _undefined ? _instance.points : (points as int?),
//         user_company: user_company == _undefined
//             ? _instance.user_company
//             : (user_company as MutationLoginaloginuseruser_company?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationLoginaloginuseruser_company<TRes> get user_company {
//     final local$user_company = _instance.user_company;
//     return local$user_company == null
//         ? CopyWithMutationLoginaloginuseruser_company.stub(_then(_instance))
//         : CopyWithMutationLoginaloginuseruser_company(
//             local$user_company, (e) => call(user_company: e));
//   }
// }
//
// class _CopyWithStubImplMutationLoginaloginuser<TRes>
//     implements CopyWithMutationLoginaloginuser<TRes> {
//   _CopyWithStubImplMutationLoginaloginuser(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? name,
//     String? mobile,
//     String? email,
//     String? lang,
//     String? gender,
//     String? birth_date,
//     String? image_path,
//     String? type,
//     String? national_id,
//     String? username,
//     bool? active,
//     double? wallet_limit,
//     double? wallet,
//     double? withdrawal,
//     int? points,
//     MutationLoginaloginuseruser_company? user_company,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationLoginaloginuseruser_company<TRes> get user_company =>
//       CopyWithMutationLoginaloginuseruser_company.stub(_res);
// }
//
// class MutationLoginaloginuseruser_company {
//   MutationLoginaloginuseruser_company({
//     this.id,
//     this.name,
//     this.can_update_price,
//     this.customer_points_benefit,
//     this.points_benefit,
//     this.image_path,
//     this.$__typename = 'Company',
//   });
//
//   factory MutationLoginaloginuseruser_company.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$can_update_price = json['can_update_price'];
//     final l$customer_points_benefit = json['customer_points_benefit'];
//     final l$points_benefit = json['points_benefit'];
//     final l$image_path = json['image_path'];
//     final l$$__typename = json['__typename'];
//     return MutationLoginaloginuseruser_company(
//       id: (l$id as String?),
//       name: (l$name as String?),
//       can_update_price: (l$can_update_price as bool?),
//       customer_points_benefit: (l$customer_points_benefit as bool?),
//       points_benefit: (l$points_benefit as bool?),
//       image_path: (l$image_path as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String? id;
//
//   final String? name;
//
//   final bool? can_update_price;
//
//   final bool? customer_points_benefit;
//
//   final bool? points_benefit;
//
//   final String? image_path;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$name = name;
//     _resultData['name'] = l$name;
//     final l$can_update_price = can_update_price;
//     _resultData['can_update_price'] = l$can_update_price;
//     final l$customer_points_benefit = customer_points_benefit;
//     _resultData['customer_points_benefit'] = l$customer_points_benefit;
//     final l$points_benefit = points_benefit;
//     _resultData['points_benefit'] = l$points_benefit;
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
//     final l$name = name;
//     final l$can_update_price = can_update_price;
//     final l$customer_points_benefit = customer_points_benefit;
//     final l$points_benefit = points_benefit;
//     final l$image_path = image_path;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$name,
//       l$can_update_price,
//       l$customer_points_benefit,
//       l$points_benefit,
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
//     if (!(other is MutationLoginaloginuseruser_company) ||
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
//     final l$can_update_price = can_update_price;
//     final lOther$can_update_price = other.can_update_price;
//     if (l$can_update_price != lOther$can_update_price) {
//       return false;
//     }
//     final l$customer_points_benefit = customer_points_benefit;
//     final lOther$customer_points_benefit = other.customer_points_benefit;
//     if (l$customer_points_benefit != lOther$customer_points_benefit) {
//       return false;
//     }
//     final l$points_benefit = points_benefit;
//     final lOther$points_benefit = other.points_benefit;
//     if (l$points_benefit != lOther$points_benefit) {
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
// extension UtilityExtensionMutationLoginaloginuseruser_company
//     on MutationLoginaloginuseruser_company {
//   CopyWithMutationLoginaloginuseruser_company<
//           MutationLoginaloginuseruser_company>
//       get copyWith => CopyWithMutationLoginaloginuseruser_company(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationLoginaloginuseruser_company<TRes> {
//   factory CopyWithMutationLoginaloginuseruser_company(
//     MutationLoginaloginuseruser_company instance,
//     TRes Function(MutationLoginaloginuseruser_company) then,
//   ) = _CopyWithImplMutationLoginaloginuseruser_company;
//
//   factory CopyWithMutationLoginaloginuseruser_company.stub(TRes res) =
//       _CopyWithStubImplMutationLoginaloginuseruser_company;
//
//   TRes call({
//     String? id,
//     String? name,
//     bool? can_update_price,
//     bool? customer_points_benefit,
//     bool? points_benefit,
//     String? image_path,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationLoginaloginuseruser_company<TRes>
//     implements CopyWithMutationLoginaloginuseruser_company<TRes> {
//   _CopyWithImplMutationLoginaloginuseruser_company(
//     this._instance,
//     this._then,
//   );
//
//   final MutationLoginaloginuseruser_company _instance;
//
//   final TRes Function(MutationLoginaloginuseruser_company) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? name = _undefined,
//     Object? can_update_price = _undefined,
//     Object? customer_points_benefit = _undefined,
//     Object? points_benefit = _undefined,
//     Object? image_path = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationLoginaloginuseruser_company(
//         id: id == _undefined ? _instance.id : (id as String?),
//         name: name == _undefined ? _instance.name : (name as String?),
//         can_update_price: can_update_price == _undefined
//             ? _instance.can_update_price
//             : (can_update_price as bool?),
//         customer_points_benefit: customer_points_benefit == _undefined
//             ? _instance.customer_points_benefit
//             : (customer_points_benefit as bool?),
//         points_benefit: points_benefit == _undefined
//             ? _instance.points_benefit
//             : (points_benefit as bool?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplMutationLoginaloginuseruser_company<TRes>
//     implements CopyWithMutationLoginaloginuseruser_company<TRes> {
//   _CopyWithStubImplMutationLoginaloginuseruser_company(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? name,
//     bool? can_update_price,
//     bool? customer_points_benefit,
//     bool? points_benefit,
//     String? image_path,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesMutationSendOTP {
//   factory VariablesMutationSendOTP({
//     required String phone,
//     required EnumVerifyEnum type,
//   }) =>
//       VariablesMutationSendOTP._({
//         r'phone': phone,
//         r'type': type,
//       });
//
//   VariablesMutationSendOTP._(this._$data);
//
//   factory VariablesMutationSendOTP.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$phone = data['phone'];
//     result$data['phone'] = (l$phone as String);
//     final l$type = data['type'];
//     result$data['type'] = fromJsonEnumVerifyEnum((l$type as String));
//     return VariablesMutationSendOTP._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   String get phone => (_$data['phone'] as String);
//
//   EnumVerifyEnum get type => (_$data['type'] as EnumVerifyEnum);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$phone = phone;
//     result$data['phone'] = l$phone;
//     final l$type = type;
//     result$data['type'] = toJsonEnumVerifyEnum(l$type);
//     return result$data;
//   }
//
//   CopyWithVariablesMutationSendOTP<VariablesMutationSendOTP> get copyWith =>
//       CopyWithVariablesMutationSendOTP(
//         this,
//         (i) => i,
//       );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationSendOTP) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$phone = phone;
//     final lOther$phone = other.phone;
//     if (l$phone != lOther$phone) {
//       return false;
//     }
//     final l$type = type;
//     final lOther$type = other.type;
//     if (l$type != lOther$type) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$phone = phone;
//     final l$type = type;
//     return Object.hashAll([
//       l$phone,
//       l$type,
//     ]);
//   }
// }
//
// abstract class CopyWithVariablesMutationSendOTP<TRes> {
//   factory CopyWithVariablesMutationSendOTP(
//     VariablesMutationSendOTP instance,
//     TRes Function(VariablesMutationSendOTP) then,
//   ) = _CopyWithImplVariablesMutationSendOTP;
//
//   factory CopyWithVariablesMutationSendOTP.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationSendOTP;
//
//   TRes call({
//     String? phone,
//     EnumVerifyEnum? type,
//   });
// }
//
// class _CopyWithImplVariablesMutationSendOTP<TRes>
//     implements CopyWithVariablesMutationSendOTP<TRes> {
//   _CopyWithImplVariablesMutationSendOTP(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationSendOTP _instance;
//
//   final TRes Function(VariablesMutationSendOTP) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? phone = _undefined,
//     Object? type = _undefined,
//   }) =>
//       _then(VariablesMutationSendOTP._({
//         ..._instance._$data,
//         if (phone != _undefined && phone != null) 'phone': (phone as String),
//         if (type != _undefined && type != null)
//           'type': (type as EnumVerifyEnum),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationSendOTP<TRes>
//     implements CopyWithVariablesMutationSendOTP<TRes> {
//   _CopyWithStubImplVariablesMutationSendOTP(this._res);
//
//   TRes _res;
//
//   call({
//     String? phone,
//     EnumVerifyEnum? type,
//   }) =>
//       _res;
// }
//
// class MutationSendOTP {
//   MutationSendOTP({
//     required this.sendMobileCode,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationSendOTP.fromJson(Map<String, dynamic> json) {
//     final l$sendMobileCode = json['sendMobileCode'];
//     final l$$__typename = json['__typename'];
//     return MutationSendOTP(
//       sendMobileCode: MutationSendOTPsendMobileCode.fromJson(
//           (l$sendMobileCode as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationSendOTPsendMobileCode sendMobileCode;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$sendMobileCode = sendMobileCode;
//     _resultData['sendMobileCode'] = l$sendMobileCode.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$sendMobileCode = sendMobileCode;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$sendMobileCode,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationSendOTP) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$sendMobileCode = sendMobileCode;
//     final lOther$sendMobileCode = other.sendMobileCode;
//     if (l$sendMobileCode != lOther$sendMobileCode) {
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
// extension UtilityExtensionMutationSendOTP on MutationSendOTP {
//   CopyWithMutationSendOTP<MutationSendOTP> get copyWith =>
//       CopyWithMutationSendOTP(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationSendOTP<TRes> {
//   factory CopyWithMutationSendOTP(
//     MutationSendOTP instance,
//     TRes Function(MutationSendOTP) then,
//   ) = _CopyWithImplMutationSendOTP;
//
//   factory CopyWithMutationSendOTP.stub(TRes res) =
//       _CopyWithStubImplMutationSendOTP;
//
//   TRes call({
//     MutationSendOTPsendMobileCode? sendMobileCode,
//     String? $__typename,
//   });
//   CopyWithMutationSendOTPsendMobileCode<TRes> get sendMobileCode;
// }
//
// class _CopyWithImplMutationSendOTP<TRes>
//     implements CopyWithMutationSendOTP<TRes> {
//   _CopyWithImplMutationSendOTP(
//     this._instance,
//     this._then,
//   );
//
//   final MutationSendOTP _instance;
//
//   final TRes Function(MutationSendOTP) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? sendMobileCode = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationSendOTP(
//         sendMobileCode: sendMobileCode == _undefined || sendMobileCode == null
//             ? _instance.sendMobileCode
//             : (sendMobileCode as MutationSendOTPsendMobileCode),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationSendOTPsendMobileCode<TRes> get sendMobileCode {
//     final local$sendMobileCode = _instance.sendMobileCode;
//     return CopyWithMutationSendOTPsendMobileCode(
//         local$sendMobileCode, (e) => call(sendMobileCode: e));
//   }
// }
//
// class _CopyWithStubImplMutationSendOTP<TRes>
//     implements CopyWithMutationSendOTP<TRes> {
//   _CopyWithStubImplMutationSendOTP(this._res);
//
//   TRes _res;
//
//   call({
//     MutationSendOTPsendMobileCode? sendMobileCode,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationSendOTPsendMobileCode<TRes> get sendMobileCode =>
//       CopyWithMutationSendOTPsendMobileCode.stub(_res);
// }
//
// const documentNodeMutationSendOTP = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'SendOTP'),
//     variableDefinitions: [
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
//         variable: VariableNode(name: NameNode(value: 'type')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'VerifyEnum'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//     ],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'sendMobileCode'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'mobile'),
//                 value: VariableNode(name: NameNode(value: 'phone')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'type'),
//                 value: VariableNode(name: NameNode(value: 'type')),
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
// MutationSendOTP _parserFnMutationSendOTP(Map<String, dynamic> data) =>
//     MutationSendOTP.fromJson(data);
// typedef OnMutationCompletedMutationSendOTP = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationSendOTP?,
// );
//
// class OptionsMutationSendOTP extends graphql.MutationOptions<MutationSendOTP> {
//   OptionsMutationSendOTP({
//     String? operationName,
//     required VariablesMutationSendOTP variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationSendOTP? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationSendOTP? onCompleted,
//     graphql.OnMutationUpdate<MutationSendOTP>? update,
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
//                     data == null ? null : _parserFnMutationSendOTP(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationSendOTP,
//           parserFn: _parserFnMutationSendOTP,
//         );
//
//   final OnMutationCompletedMutationSendOTP? onCompletedWithParsed;
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
// class WatchOptionsMutationSendOTP
//     extends graphql.WatchQueryOptions<MutationSendOTP> {
//   WatchOptionsMutationSendOTP({
//     String? operationName,
//     required VariablesMutationSendOTP variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationSendOTP? typedOptimisticResult,
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
//           document: documentNodeMutationSendOTP,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationSendOTP,
//         );
// }
//
// extension ClientExtensionMutationSendOTP on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationSendOTP>> mutateSendOTP(
//           OptionsMutationSendOTP options) async =>
//       await this.mutate(options);
//   graphql.ObservableQuery<MutationSendOTP> watchMutationSendOTP(
//           WatchOptionsMutationSendOTP options) =>
//       this.watchMutation(options);
// }
//
// class MutationSendOTPHookResult {
//   MutationSendOTPHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationSendOTP runMutation;
//
//   final graphql.QueryResult<MutationSendOTP> result;
// }
//
// MutationSendOTPHookResult useMutationSendOTP(
//     [WidgetOptionsMutationSendOTP? options]) {
//   final result =
//       graphql_flutter.useMutation(options ?? WidgetOptionsMutationSendOTP());
//   return MutationSendOTPHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationSendOTP> useWatchMutationSendOTP(
//         WatchOptionsMutationSendOTP options) =>
//     graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationSendOTP
//     extends graphql.MutationOptions<MutationSendOTP> {
//   WidgetOptionsMutationSendOTP({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationSendOTP? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationSendOTP? onCompleted,
//     graphql.OnMutationUpdate<MutationSendOTP>? update,
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
//                     data == null ? null : _parserFnMutationSendOTP(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationSendOTP,
//           parserFn: _parserFnMutationSendOTP,
//         );
//
//   final OnMutationCompletedMutationSendOTP? onCompletedWithParsed;
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
// typedef RunMutationMutationSendOTP = graphql.MultiSourceResult<MutationSendOTP>
//     Function(
//   VariablesMutationSendOTP, {
//   Object? optimisticResult,
//   MutationSendOTP? typedOptimisticResult,
// });
// typedef BuilderMutationSendOTP = widgets.Widget Function(
//   RunMutationMutationSendOTP,
//   graphql.QueryResult<MutationSendOTP>?,
// );
//
// class MutationSendOTPWidget extends graphql_flutter.Mutation<MutationSendOTP> {
//   MutationSendOTPWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationSendOTP? options,
//     required BuilderMutationSendOTP builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationSendOTP(),
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
// class MutationSendOTPsendMobileCode {
//   MutationSendOTPsendMobileCode({
//     required this.error,
//     required this.status,
//     this.message,
//     this.$__typename = 'Result',
//   });
//
//   factory MutationSendOTPsendMobileCode.fromJson(Map<String, dynamic> json) {
//     final l$error = json['error'];
//     final l$status = json['status'];
//     final l$message = json['message'];
//     final l$$__typename = json['__typename'];
//     return MutationSendOTPsendMobileCode(
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
//     if (!(other is MutationSendOTPsendMobileCode) ||
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
// extension UtilityExtensionMutationSendOTPsendMobileCode
//     on MutationSendOTPsendMobileCode {
//   CopyWithMutationSendOTPsendMobileCode<MutationSendOTPsendMobileCode>
//       get copyWith => CopyWithMutationSendOTPsendMobileCode(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationSendOTPsendMobileCode<TRes> {
//   factory CopyWithMutationSendOTPsendMobileCode(
//     MutationSendOTPsendMobileCode instance,
//     TRes Function(MutationSendOTPsendMobileCode) then,
//   ) = _CopyWithImplMutationSendOTPsendMobileCode;
//
//   factory CopyWithMutationSendOTPsendMobileCode.stub(TRes res) =
//       _CopyWithStubImplMutationSendOTPsendMobileCode;
//
//   TRes call({
//     int? error,
//     String? status,
//     String? message,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationSendOTPsendMobileCode<TRes>
//     implements CopyWithMutationSendOTPsendMobileCode<TRes> {
//   _CopyWithImplMutationSendOTPsendMobileCode(
//     this._instance,
//     this._then,
//   );
//
//   final MutationSendOTPsendMobileCode _instance;
//
//   final TRes Function(MutationSendOTPsendMobileCode) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? error = _undefined,
//     Object? status = _undefined,
//     Object? message = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationSendOTPsendMobileCode(
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
// class _CopyWithStubImplMutationSendOTPsendMobileCode<TRes>
//     implements CopyWithMutationSendOTPsendMobileCode<TRes> {
//   _CopyWithStubImplMutationSendOTPsendMobileCode(this._res);
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
// class VariablesMutationConfirmOTP {
//   factory VariablesMutationConfirmOTP({
//     required String phone,
//     required String otp,
//     required EnumVerifyEnum type,
//   }) =>
//       VariablesMutationConfirmOTP._({
//         r'phone': phone,
//         r'otp': otp,
//         r'type': type,
//       });
//
//   VariablesMutationConfirmOTP._(this._$data);
//
//   factory VariablesMutationConfirmOTP.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$phone = data['phone'];
//     result$data['phone'] = (l$phone as String);
//     final l$otp = data['otp'];
//     result$data['otp'] = (l$otp as String);
//     final l$type = data['type'];
//     result$data['type'] = fromJsonEnumVerifyEnum((l$type as String));
//     return VariablesMutationConfirmOTP._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   String get phone => (_$data['phone'] as String);
//
//   String get otp => (_$data['otp'] as String);
//
//   EnumVerifyEnum get type => (_$data['type'] as EnumVerifyEnum);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$phone = phone;
//     result$data['phone'] = l$phone;
//     final l$otp = otp;
//     result$data['otp'] = l$otp;
//     final l$type = type;
//     result$data['type'] = toJsonEnumVerifyEnum(l$type);
//     return result$data;
//   }
//
//   CopyWithVariablesMutationConfirmOTP<VariablesMutationConfirmOTP>
//       get copyWith => CopyWithVariablesMutationConfirmOTP(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationConfirmOTP) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$phone = phone;
//     final lOther$phone = other.phone;
//     if (l$phone != lOther$phone) {
//       return false;
//     }
//     final l$otp = otp;
//     final lOther$otp = other.otp;
//     if (l$otp != lOther$otp) {
//       return false;
//     }
//     final l$type = type;
//     final lOther$type = other.type;
//     if (l$type != lOther$type) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$phone = phone;
//     final l$otp = otp;
//     final l$type = type;
//     return Object.hashAll([
//       l$phone,
//       l$otp,
//       l$type,
//     ]);
//   }
// }
//
// abstract class CopyWithVariablesMutationConfirmOTP<TRes> {
//   factory CopyWithVariablesMutationConfirmOTP(
//     VariablesMutationConfirmOTP instance,
//     TRes Function(VariablesMutationConfirmOTP) then,
//   ) = _CopyWithImplVariablesMutationConfirmOTP;
//
//   factory CopyWithVariablesMutationConfirmOTP.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationConfirmOTP;
//
//   TRes call({
//     String? phone,
//     String? otp,
//     EnumVerifyEnum? type,
//   });
// }
//
// class _CopyWithImplVariablesMutationConfirmOTP<TRes>
//     implements CopyWithVariablesMutationConfirmOTP<TRes> {
//   _CopyWithImplVariablesMutationConfirmOTP(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationConfirmOTP _instance;
//
//   final TRes Function(VariablesMutationConfirmOTP) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? phone = _undefined,
//     Object? otp = _undefined,
//     Object? type = _undefined,
//   }) =>
//       _then(VariablesMutationConfirmOTP._({
//         ..._instance._$data,
//         if (phone != _undefined && phone != null) 'phone': (phone as String),
//         if (otp != _undefined && otp != null) 'otp': (otp as String),
//         if (type != _undefined && type != null)
//           'type': (type as EnumVerifyEnum),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationConfirmOTP<TRes>
//     implements CopyWithVariablesMutationConfirmOTP<TRes> {
//   _CopyWithStubImplVariablesMutationConfirmOTP(this._res);
//
//   TRes _res;
//
//   call({
//     String? phone,
//     String? otp,
//     EnumVerifyEnum? type,
//   }) =>
//       _res;
// }
//
// class MutationConfirmOTP {
//   MutationConfirmOTP({
//     required this.confirmMobileCode,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationConfirmOTP.fromJson(Map<String, dynamic> json) {
//     final l$confirmMobileCode = json['confirmMobileCode'];
//     final l$$__typename = json['__typename'];
//     return MutationConfirmOTP(
//       confirmMobileCode: MutationConfirmOTPconfirmMobileCode.fromJson(
//           (l$confirmMobileCode as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationConfirmOTPconfirmMobileCode confirmMobileCode;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$confirmMobileCode = confirmMobileCode;
//     _resultData['confirmMobileCode'] = l$confirmMobileCode.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$confirmMobileCode = confirmMobileCode;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$confirmMobileCode,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationConfirmOTP) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$confirmMobileCode = confirmMobileCode;
//     final lOther$confirmMobileCode = other.confirmMobileCode;
//     if (l$confirmMobileCode != lOther$confirmMobileCode) {
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
// extension UtilityExtensionMutationConfirmOTP on MutationConfirmOTP {
//   CopyWithMutationConfirmOTP<MutationConfirmOTP> get copyWith =>
//       CopyWithMutationConfirmOTP(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationConfirmOTP<TRes> {
//   factory CopyWithMutationConfirmOTP(
//     MutationConfirmOTP instance,
//     TRes Function(MutationConfirmOTP) then,
//   ) = _CopyWithImplMutationConfirmOTP;
//
//   factory CopyWithMutationConfirmOTP.stub(TRes res) =
//       _CopyWithStubImplMutationConfirmOTP;
//
//   TRes call({
//     MutationConfirmOTPconfirmMobileCode? confirmMobileCode,
//     String? $__typename,
//   });
//   CopyWithMutationConfirmOTPconfirmMobileCode<TRes> get confirmMobileCode;
// }
//
// class _CopyWithImplMutationConfirmOTP<TRes>
//     implements CopyWithMutationConfirmOTP<TRes> {
//   _CopyWithImplMutationConfirmOTP(
//     this._instance,
//     this._then,
//   );
//
//   final MutationConfirmOTP _instance;
//
//   final TRes Function(MutationConfirmOTP) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? confirmMobileCode = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationConfirmOTP(
//         confirmMobileCode:
//             confirmMobileCode == _undefined || confirmMobileCode == null
//                 ? _instance.confirmMobileCode
//                 : (confirmMobileCode as MutationConfirmOTPconfirmMobileCode),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationConfirmOTPconfirmMobileCode<TRes> get confirmMobileCode {
//     final local$confirmMobileCode = _instance.confirmMobileCode;
//     return CopyWithMutationConfirmOTPconfirmMobileCode(
//         local$confirmMobileCode, (e) => call(confirmMobileCode: e));
//   }
// }
//
// class _CopyWithStubImplMutationConfirmOTP<TRes>
//     implements CopyWithMutationConfirmOTP<TRes> {
//   _CopyWithStubImplMutationConfirmOTP(this._res);
//
//   TRes _res;
//
//   call({
//     MutationConfirmOTPconfirmMobileCode? confirmMobileCode,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationConfirmOTPconfirmMobileCode<TRes> get confirmMobileCode =>
//       CopyWithMutationConfirmOTPconfirmMobileCode.stub(_res);
// }
//
// const documentNodeMutationConfirmOTP = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'ConfirmOTP'),
//     variableDefinitions: [
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
//         variable: VariableNode(name: NameNode(value: 'otp')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'type')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'VerifyEnum'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//     ],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'confirmMobileCode'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'mobile'),
//                 value: VariableNode(name: NameNode(value: 'phone')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'code'),
//                 value: VariableNode(name: NameNode(value: 'otp')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'type'),
//                 value: VariableNode(name: NameNode(value: 'type')),
//               ),
//             ]),
//           )
//         ],
//         directives: [],
//         selectionSet: SelectionSetNode(selections: [
//           FieldNode(
//             name: NameNode(value: 'user'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: SelectionSetNode(selections: [
//               FieldNode(
//                 name: NameNode(value: 'name'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'company_name'),
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
// MutationConfirmOTP _parserFnMutationConfirmOTP(Map<String, dynamic> data) =>
//     MutationConfirmOTP.fromJson(data);
// typedef OnMutationCompletedMutationConfirmOTP = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationConfirmOTP?,
// );
//
// class OptionsMutationConfirmOTP
//     extends graphql.MutationOptions<MutationConfirmOTP> {
//   OptionsMutationConfirmOTP({
//     String? operationName,
//     required VariablesMutationConfirmOTP variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationConfirmOTP? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationConfirmOTP? onCompleted,
//     graphql.OnMutationUpdate<MutationConfirmOTP>? update,
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
//                     data == null ? null : _parserFnMutationConfirmOTP(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationConfirmOTP,
//           parserFn: _parserFnMutationConfirmOTP,
//         );
//
//   final OnMutationCompletedMutationConfirmOTP? onCompletedWithParsed;
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
// class WatchOptionsMutationConfirmOTP
//     extends graphql.WatchQueryOptions<MutationConfirmOTP> {
//   WatchOptionsMutationConfirmOTP({
//     String? operationName,
//     required VariablesMutationConfirmOTP variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationConfirmOTP? typedOptimisticResult,
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
//           document: documentNodeMutationConfirmOTP,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationConfirmOTP,
//         );
// }
//
// extension ClientExtensionMutationConfirmOTP on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationConfirmOTP>> mutateConfirmOTP(
//           OptionsMutationConfirmOTP options) async =>
//       await this.mutate(options);
//   graphql.ObservableQuery<MutationConfirmOTP> watchMutationConfirmOTP(
//           WatchOptionsMutationConfirmOTP options) =>
//       this.watchMutation(options);
// }
//
// class MutationConfirmOTPHookResult {
//   MutationConfirmOTPHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationConfirmOTP runMutation;
//
//   final graphql.QueryResult<MutationConfirmOTP> result;
// }
//
// MutationConfirmOTPHookResult useMutationConfirmOTP(
//     [WidgetOptionsMutationConfirmOTP? options]) {
//   final result =
//       graphql_flutter.useMutation(options ?? WidgetOptionsMutationConfirmOTP());
//   return MutationConfirmOTPHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationConfirmOTP> useWatchMutationConfirmOTP(
//         WatchOptionsMutationConfirmOTP options) =>
//     graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationConfirmOTP
//     extends graphql.MutationOptions<MutationConfirmOTP> {
//   WidgetOptionsMutationConfirmOTP({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationConfirmOTP? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationConfirmOTP? onCompleted,
//     graphql.OnMutationUpdate<MutationConfirmOTP>? update,
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
//                     data == null ? null : _parserFnMutationConfirmOTP(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationConfirmOTP,
//           parserFn: _parserFnMutationConfirmOTP,
//         );
//
//   final OnMutationCompletedMutationConfirmOTP? onCompletedWithParsed;
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
// typedef RunMutationMutationConfirmOTP
//     = graphql.MultiSourceResult<MutationConfirmOTP> Function(
//   VariablesMutationConfirmOTP, {
//   Object? optimisticResult,
//   MutationConfirmOTP? typedOptimisticResult,
// });
// typedef BuilderMutationConfirmOTP = widgets.Widget Function(
//   RunMutationMutationConfirmOTP,
//   graphql.QueryResult<MutationConfirmOTP>?,
// );
//
// class MutationConfirmOTPWidget
//     extends graphql_flutter.Mutation<MutationConfirmOTP> {
//   MutationConfirmOTPWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationConfirmOTP? options,
//     required BuilderMutationConfirmOTP builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationConfirmOTP(),
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
// class MutationConfirmOTPconfirmMobileCode {
//   MutationConfirmOTPconfirmMobileCode({
//     this.user,
//     required this.error,
//     required this.status,
//     this.message,
//     this.$__typename = 'ConfirmResult',
//   });
//
//   factory MutationConfirmOTPconfirmMobileCode.fromJson(
//       Map<String, dynamic> json) {
//     final l$user = json['user'];
//     final l$error = json['error'];
//     final l$status = json['status'];
//     final l$message = json['message'];
//     final l$$__typename = json['__typename'];
//     return MutationConfirmOTPconfirmMobileCode(
//       user: l$user == null
//           ? null
//           : MutationConfirmOTPconfirmMobileCodeuser.fromJson(
//               (l$user as Map<String, dynamic>)),
//       error: (l$error as int),
//       status: (l$status as String),
//       message: (l$message as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationConfirmOTPconfirmMobileCodeuser? user;
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
//     final l$user = user;
//     _resultData['user'] = l$user?.toJson();
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
//     final l$user = user;
//     final l$error = error;
//     final l$status = status;
//     final l$message = message;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$user,
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
//     if (!(other is MutationConfirmOTPconfirmMobileCode) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$user = user;
//     final lOther$user = other.user;
//     if (l$user != lOther$user) {
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
// extension UtilityExtensionMutationConfirmOTPconfirmMobileCode
//     on MutationConfirmOTPconfirmMobileCode {
//   CopyWithMutationConfirmOTPconfirmMobileCode<
//           MutationConfirmOTPconfirmMobileCode>
//       get copyWith => CopyWithMutationConfirmOTPconfirmMobileCode(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationConfirmOTPconfirmMobileCode<TRes> {
//   factory CopyWithMutationConfirmOTPconfirmMobileCode(
//     MutationConfirmOTPconfirmMobileCode instance,
//     TRes Function(MutationConfirmOTPconfirmMobileCode) then,
//   ) = _CopyWithImplMutationConfirmOTPconfirmMobileCode;
//
//   factory CopyWithMutationConfirmOTPconfirmMobileCode.stub(TRes res) =
//       _CopyWithStubImplMutationConfirmOTPconfirmMobileCode;
//
//   TRes call({
//     MutationConfirmOTPconfirmMobileCodeuser? user,
//     int? error,
//     String? status,
//     String? message,
//     String? $__typename,
//   });
//   CopyWithMutationConfirmOTPconfirmMobileCodeuser<TRes> get user;
// }
//
// class _CopyWithImplMutationConfirmOTPconfirmMobileCode<TRes>
//     implements CopyWithMutationConfirmOTPconfirmMobileCode<TRes> {
//   _CopyWithImplMutationConfirmOTPconfirmMobileCode(
//     this._instance,
//     this._then,
//   );
//
//   final MutationConfirmOTPconfirmMobileCode _instance;
//
//   final TRes Function(MutationConfirmOTPconfirmMobileCode) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? user = _undefined,
//     Object? error = _undefined,
//     Object? status = _undefined,
//     Object? message = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationConfirmOTPconfirmMobileCode(
//         user: user == _undefined
//             ? _instance.user
//             : (user as MutationConfirmOTPconfirmMobileCodeuser?),
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
//
//   CopyWithMutationConfirmOTPconfirmMobileCodeuser<TRes> get user {
//     final local$user = _instance.user;
//     return local$user == null
//         ? CopyWithMutationConfirmOTPconfirmMobileCodeuser.stub(_then(_instance))
//         : CopyWithMutationConfirmOTPconfirmMobileCodeuser(
//             local$user, (e) => call(user: e));
//   }
// }
//
// class _CopyWithStubImplMutationConfirmOTPconfirmMobileCode<TRes>
//     implements CopyWithMutationConfirmOTPconfirmMobileCode<TRes> {
//   _CopyWithStubImplMutationConfirmOTPconfirmMobileCode(this._res);
//
//   TRes _res;
//
//   call({
//     MutationConfirmOTPconfirmMobileCodeuser? user,
//     int? error,
//     String? status,
//     String? message,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationConfirmOTPconfirmMobileCodeuser<TRes> get user =>
//       CopyWithMutationConfirmOTPconfirmMobileCodeuser.stub(_res);
// }
//
// class MutationConfirmOTPconfirmMobileCodeuser {
//   MutationConfirmOTPconfirmMobileCodeuser({
//     this.name,
//     this.company_name,
//     this.$__typename = 'ValidateUser',
//   });
//
//   factory MutationConfirmOTPconfirmMobileCodeuser.fromJson(
//       Map<String, dynamic> json) {
//     final l$name = json['name'];
//     final l$company_name = json['company_name'];
//     final l$$__typename = json['__typename'];
//     return MutationConfirmOTPconfirmMobileCodeuser(
//       name: (l$name as String?),
//       company_name: (l$company_name as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String? name;
//
//   final String? company_name;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$name = name;
//     _resultData['name'] = l$name;
//     final l$company_name = company_name;
//     _resultData['company_name'] = l$company_name;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$name = name;
//     final l$company_name = company_name;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$name,
//       l$company_name,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationConfirmOTPconfirmMobileCodeuser) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$name = name;
//     final lOther$name = other.name;
//     if (l$name != lOther$name) {
//       return false;
//     }
//     final l$company_name = company_name;
//     final lOther$company_name = other.company_name;
//     if (l$company_name != lOther$company_name) {
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
// extension UtilityExtensionMutationConfirmOTPconfirmMobileCodeuser
//     on MutationConfirmOTPconfirmMobileCodeuser {
//   CopyWithMutationConfirmOTPconfirmMobileCodeuser<
//           MutationConfirmOTPconfirmMobileCodeuser>
//       get copyWith => CopyWithMutationConfirmOTPconfirmMobileCodeuser(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationConfirmOTPconfirmMobileCodeuser<TRes> {
//   factory CopyWithMutationConfirmOTPconfirmMobileCodeuser(
//     MutationConfirmOTPconfirmMobileCodeuser instance,
//     TRes Function(MutationConfirmOTPconfirmMobileCodeuser) then,
//   ) = _CopyWithImplMutationConfirmOTPconfirmMobileCodeuser;
//
//   factory CopyWithMutationConfirmOTPconfirmMobileCodeuser.stub(TRes res) =
//       _CopyWithStubImplMutationConfirmOTPconfirmMobileCodeuser;
//
//   TRes call({
//     String? name,
//     String? company_name,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationConfirmOTPconfirmMobileCodeuser<TRes>
//     implements CopyWithMutationConfirmOTPconfirmMobileCodeuser<TRes> {
//   _CopyWithImplMutationConfirmOTPconfirmMobileCodeuser(
//     this._instance,
//     this._then,
//   );
//
//   final MutationConfirmOTPconfirmMobileCodeuser _instance;
//
//   final TRes Function(MutationConfirmOTPconfirmMobileCodeuser) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? name = _undefined,
//     Object? company_name = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationConfirmOTPconfirmMobileCodeuser(
//         name: name == _undefined ? _instance.name : (name as String?),
//         company_name: company_name == _undefined
//             ? _instance.company_name
//             : (company_name as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplMutationConfirmOTPconfirmMobileCodeuser<TRes>
//     implements CopyWithMutationConfirmOTPconfirmMobileCodeuser<TRes> {
//   _CopyWithStubImplMutationConfirmOTPconfirmMobileCodeuser(this._res);
//
//   TRes _res;
//
//   call({
//     String? name,
//     String? company_name,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesMutationResetPasswordByCode {
//   factory VariablesMutationResetPasswordByCode({
//     required String phone,
//     required String otp,
//     required String password,
//     required String confirmPassword,
//     required EnumVerifyEnum type,
//   }) =>
//       VariablesMutationResetPasswordByCode._({
//         r'phone': phone,
//         r'otp': otp,
//         r'password': password,
//         r'confirmPassword': confirmPassword,
//         r'type': type,
//       });
//
//   VariablesMutationResetPasswordByCode._(this._$data);
//
//   factory VariablesMutationResetPasswordByCode.fromJson(
//       Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$phone = data['phone'];
//     result$data['phone'] = (l$phone as String);
//     final l$otp = data['otp'];
//     result$data['otp'] = (l$otp as String);
//     final l$password = data['password'];
//     result$data['password'] = (l$password as String);
//     final l$confirmPassword = data['confirmPassword'];
//     result$data['confirmPassword'] = (l$confirmPassword as String);
//     final l$type = data['type'];
//     result$data['type'] = fromJsonEnumVerifyEnum((l$type as String));
//     return VariablesMutationResetPasswordByCode._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   String get phone => (_$data['phone'] as String);
//
//   String get otp => (_$data['otp'] as String);
//
//   String get password => (_$data['password'] as String);
//
//   String get confirmPassword => (_$data['confirmPassword'] as String);
//
//   EnumVerifyEnum get type => (_$data['type'] as EnumVerifyEnum);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$phone = phone;
//     result$data['phone'] = l$phone;
//     final l$otp = otp;
//     result$data['otp'] = l$otp;
//     final l$password = password;
//     result$data['password'] = l$password;
//     final l$confirmPassword = confirmPassword;
//     result$data['confirmPassword'] = l$confirmPassword;
//     final l$type = type;
//     result$data['type'] = toJsonEnumVerifyEnum(l$type);
//     return result$data;
//   }
//
//   CopyWithVariablesMutationResetPasswordByCode<
//           VariablesMutationResetPasswordByCode>
//       get copyWith => CopyWithVariablesMutationResetPasswordByCode(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationResetPasswordByCode) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$phone = phone;
//     final lOther$phone = other.phone;
//     if (l$phone != lOther$phone) {
//       return false;
//     }
//     final l$otp = otp;
//     final lOther$otp = other.otp;
//     if (l$otp != lOther$otp) {
//       return false;
//     }
//     final l$password = password;
//     final lOther$password = other.password;
//     if (l$password != lOther$password) {
//       return false;
//     }
//     final l$confirmPassword = confirmPassword;
//     final lOther$confirmPassword = other.confirmPassword;
//     if (l$confirmPassword != lOther$confirmPassword) {
//       return false;
//     }
//     final l$type = type;
//     final lOther$type = other.type;
//     if (l$type != lOther$type) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$phone = phone;
//     final l$otp = otp;
//     final l$password = password;
//     final l$confirmPassword = confirmPassword;
//     final l$type = type;
//     return Object.hashAll([
//       l$phone,
//       l$otp,
//       l$password,
//       l$confirmPassword,
//       l$type,
//     ]);
//   }
// }
//
// abstract class CopyWithVariablesMutationResetPasswordByCode<TRes> {
//   factory CopyWithVariablesMutationResetPasswordByCode(
//     VariablesMutationResetPasswordByCode instance,
//     TRes Function(VariablesMutationResetPasswordByCode) then,
//   ) = _CopyWithImplVariablesMutationResetPasswordByCode;
//
//   factory CopyWithVariablesMutationResetPasswordByCode.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationResetPasswordByCode;
//
//   TRes call({
//     String? phone,
//     String? otp,
//     String? password,
//     String? confirmPassword,
//     EnumVerifyEnum? type,
//   });
// }
//
// class _CopyWithImplVariablesMutationResetPasswordByCode<TRes>
//     implements CopyWithVariablesMutationResetPasswordByCode<TRes> {
//   _CopyWithImplVariablesMutationResetPasswordByCode(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationResetPasswordByCode _instance;
//
//   final TRes Function(VariablesMutationResetPasswordByCode) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? phone = _undefined,
//     Object? otp = _undefined,
//     Object? password = _undefined,
//     Object? confirmPassword = _undefined,
//     Object? type = _undefined,
//   }) =>
//       _then(VariablesMutationResetPasswordByCode._({
//         ..._instance._$data,
//         if (phone != _undefined && phone != null) 'phone': (phone as String),
//         if (otp != _undefined && otp != null) 'otp': (otp as String),
//         if (password != _undefined && password != null)
//           'password': (password as String),
//         if (confirmPassword != _undefined && confirmPassword != null)
//           'confirmPassword': (confirmPassword as String),
//         if (type != _undefined && type != null)
//           'type': (type as EnumVerifyEnum),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationResetPasswordByCode<TRes>
//     implements CopyWithVariablesMutationResetPasswordByCode<TRes> {
//   _CopyWithStubImplVariablesMutationResetPasswordByCode(this._res);
//
//   TRes _res;
//
//   call({
//     String? phone,
//     String? otp,
//     String? password,
//     String? confirmPassword,
//     EnumVerifyEnum? type,
//   }) =>
//       _res;
// }
//
// class MutationResetPasswordByCode {
//   MutationResetPasswordByCode({
//     required this.resetPasswordByCode,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationResetPasswordByCode.fromJson(Map<String, dynamic> json) {
//     final l$resetPasswordByCode = json['resetPasswordByCode'];
//     final l$$__typename = json['__typename'];
//     return MutationResetPasswordByCode(
//       resetPasswordByCode:
//           MutationResetPasswordByCoderesetPasswordByCode.fromJson(
//               (l$resetPasswordByCode as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationResetPasswordByCoderesetPasswordByCode resetPasswordByCode;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$resetPasswordByCode = resetPasswordByCode;
//     _resultData['resetPasswordByCode'] = l$resetPasswordByCode.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$resetPasswordByCode = resetPasswordByCode;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$resetPasswordByCode,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationResetPasswordByCode) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$resetPasswordByCode = resetPasswordByCode;
//     final lOther$resetPasswordByCode = other.resetPasswordByCode;
//     if (l$resetPasswordByCode != lOther$resetPasswordByCode) {
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
// extension UtilityExtensionMutationResetPasswordByCode
//     on MutationResetPasswordByCode {
//   CopyWithMutationResetPasswordByCode<MutationResetPasswordByCode>
//       get copyWith => CopyWithMutationResetPasswordByCode(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationResetPasswordByCode<TRes> {
//   factory CopyWithMutationResetPasswordByCode(
//     MutationResetPasswordByCode instance,
//     TRes Function(MutationResetPasswordByCode) then,
//   ) = _CopyWithImplMutationResetPasswordByCode;
//
//   factory CopyWithMutationResetPasswordByCode.stub(TRes res) =
//       _CopyWithStubImplMutationResetPasswordByCode;
//
//   TRes call({
//     MutationResetPasswordByCoderesetPasswordByCode? resetPasswordByCode,
//     String? $__typename,
//   });
//   CopyWithMutationResetPasswordByCoderesetPasswordByCode<TRes>
//       get resetPasswordByCode;
// }
//
// class _CopyWithImplMutationResetPasswordByCode<TRes>
//     implements CopyWithMutationResetPasswordByCode<TRes> {
//   _CopyWithImplMutationResetPasswordByCode(
//     this._instance,
//     this._then,
//   );
//
//   final MutationResetPasswordByCode _instance;
//
//   final TRes Function(MutationResetPasswordByCode) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? resetPasswordByCode = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationResetPasswordByCode(
//         resetPasswordByCode:
//             resetPasswordByCode == _undefined || resetPasswordByCode == null
//                 ? _instance.resetPasswordByCode
//                 : (resetPasswordByCode
//                     as MutationResetPasswordByCoderesetPasswordByCode),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationResetPasswordByCoderesetPasswordByCode<TRes>
//       get resetPasswordByCode {
//     final local$resetPasswordByCode = _instance.resetPasswordByCode;
//     return CopyWithMutationResetPasswordByCoderesetPasswordByCode(
//         local$resetPasswordByCode, (e) => call(resetPasswordByCode: e));
//   }
// }
//
// class _CopyWithStubImplMutationResetPasswordByCode<TRes>
//     implements CopyWithMutationResetPasswordByCode<TRes> {
//   _CopyWithStubImplMutationResetPasswordByCode(this._res);
//
//   TRes _res;
//
//   call({
//     MutationResetPasswordByCoderesetPasswordByCode? resetPasswordByCode,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationResetPasswordByCoderesetPasswordByCode<TRes>
//       get resetPasswordByCode =>
//           CopyWithMutationResetPasswordByCoderesetPasswordByCode.stub(_res);
// }
//
// const documentNodeMutationResetPasswordByCode = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'ResetPasswordByCode'),
//     variableDefinitions: [
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
//         variable: VariableNode(name: NameNode(value: 'otp')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'password')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'confirmPassword')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'type')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'VerifyEnum'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//     ],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'resetPasswordByCode'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'mobile'),
//                 value: VariableNode(name: NameNode(value: 'phone')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'code'),
//                 value: VariableNode(name: NameNode(value: 'otp')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'password'),
//                 value: VariableNode(name: NameNode(value: 'password')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'password_confirmation'),
//                 value: VariableNode(name: NameNode(value: 'confirmPassword')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'type'),
//                 value: VariableNode(name: NameNode(value: 'type')),
//               ),
//             ]),
//           )
//         ],
//         directives: [],
//         selectionSet: SelectionSetNode(selections: [
//           FieldNode(
//             name: NameNode(value: 'token'),
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
//                 name: NameNode(value: 'lang'),
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
//                 name: NameNode(value: 'birth_date'),
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
//                 name: NameNode(value: 'type'),
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
//                 name: NameNode(value: 'username'),
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
//                 name: NameNode(value: 'wallet_limit'),
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
//                 name: NameNode(value: 'points'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'user_company'),
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
//                     name: NameNode(value: 'can_update_price'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'customer_points_benefit'),
//                     alias: null,
//                     arguments: [],
//                     directives: [],
//                     selectionSet: null,
//                   ),
//                   FieldNode(
//                     name: NameNode(value: 'points_benefit'),
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
// MutationResetPasswordByCode _parserFnMutationResetPasswordByCode(
//         Map<String, dynamic> data) =>
//     MutationResetPasswordByCode.fromJson(data);
// typedef OnMutationCompletedMutationResetPasswordByCode = FutureOr<void>
//     Function(
//   Map<String, dynamic>?,
//   MutationResetPasswordByCode?,
// );
//
// class OptionsMutationResetPasswordByCode
//     extends graphql.MutationOptions<MutationResetPasswordByCode> {
//   OptionsMutationResetPasswordByCode({
//     String? operationName,
//     required VariablesMutationResetPasswordByCode variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationResetPasswordByCode? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationResetPasswordByCode? onCompleted,
//     graphql.OnMutationUpdate<MutationResetPasswordByCode>? update,
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
//                         : _parserFnMutationResetPasswordByCode(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationResetPasswordByCode,
//           parserFn: _parserFnMutationResetPasswordByCode,
//         );
//
//   final OnMutationCompletedMutationResetPasswordByCode? onCompletedWithParsed;
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
// class WatchOptionsMutationResetPasswordByCode
//     extends graphql.WatchQueryOptions<MutationResetPasswordByCode> {
//   WatchOptionsMutationResetPasswordByCode({
//     String? operationName,
//     required VariablesMutationResetPasswordByCode variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationResetPasswordByCode? typedOptimisticResult,
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
//           document: documentNodeMutationResetPasswordByCode,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationResetPasswordByCode,
//         );
// }
//
// extension ClientExtensionMutationResetPasswordByCode on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationResetPasswordByCode>>
//       mutateResetPasswordByCode(
//               OptionsMutationResetPasswordByCode options) async =>
//           await this.mutate(options);
//   graphql.ObservableQuery<MutationResetPasswordByCode>
//       watchMutationResetPasswordByCode(
//               WatchOptionsMutationResetPasswordByCode options) =>
//           this.watchMutation(options);
// }
//
// class MutationResetPasswordByCodeHookResult {
//   MutationResetPasswordByCodeHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationResetPasswordByCode runMutation;
//
//   final graphql.QueryResult<MutationResetPasswordByCode> result;
// }
//
// MutationResetPasswordByCodeHookResult useMutationResetPasswordByCode(
//     [WidgetOptionsMutationResetPasswordByCode? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationResetPasswordByCode());
//   return MutationResetPasswordByCodeHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationResetPasswordByCode>
//     useWatchMutationResetPasswordByCode(
//             WatchOptionsMutationResetPasswordByCode options) =>
//         graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationResetPasswordByCode
//     extends graphql.MutationOptions<MutationResetPasswordByCode> {
//   WidgetOptionsMutationResetPasswordByCode({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationResetPasswordByCode? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationResetPasswordByCode? onCompleted,
//     graphql.OnMutationUpdate<MutationResetPasswordByCode>? update,
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
//                         : _parserFnMutationResetPasswordByCode(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationResetPasswordByCode,
//           parserFn: _parserFnMutationResetPasswordByCode,
//         );
//
//   final OnMutationCompletedMutationResetPasswordByCode? onCompletedWithParsed;
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
// typedef RunMutationMutationResetPasswordByCode
//     = graphql.MultiSourceResult<MutationResetPasswordByCode> Function(
//   VariablesMutationResetPasswordByCode, {
//   Object? optimisticResult,
//   MutationResetPasswordByCode? typedOptimisticResult,
// });
// typedef BuilderMutationResetPasswordByCode = widgets.Widget Function(
//   RunMutationMutationResetPasswordByCode,
//   graphql.QueryResult<MutationResetPasswordByCode>?,
// );
//
// class MutationResetPasswordByCodeWidget
//     extends graphql_flutter.Mutation<MutationResetPasswordByCode> {
//   MutationResetPasswordByCodeWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationResetPasswordByCode? options,
//     required BuilderMutationResetPasswordByCode builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationResetPasswordByCode(),
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
// class MutationResetPasswordByCoderesetPasswordByCode {
//   MutationResetPasswordByCoderesetPasswordByCode({
//     this.token,
//     this.user,
//     required this.error,
//     required this.status,
//     this.message,
//     this.$__typename = 'AccessToken',
//   });
//
//   factory MutationResetPasswordByCoderesetPasswordByCode.fromJson(
//       Map<String, dynamic> json) {
//     final l$token = json['token'];
//     final l$user = json['user'];
//     final l$error = json['error'];
//     final l$status = json['status'];
//     final l$message = json['message'];
//     final l$$__typename = json['__typename'];
//     return MutationResetPasswordByCoderesetPasswordByCode(
//       token: (l$token as String?),
//       user: l$user == null
//           ? null
//           : MutationResetPasswordByCoderesetPasswordByCodeuser.fromJson(
//               (l$user as Map<String, dynamic>)),
//       error: (l$error as int),
//       status: (l$status as String),
//       message: (l$message as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String? token;
//
//   final MutationResetPasswordByCoderesetPasswordByCodeuser? user;
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
//     final l$token = token;
//     _resultData['token'] = l$token;
//     final l$user = user;
//     _resultData['user'] = l$user?.toJson();
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
//     final l$token = token;
//     final l$user = user;
//     final l$error = error;
//     final l$status = status;
//     final l$message = message;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$token,
//       l$user,
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
//     if (!(other is MutationResetPasswordByCoderesetPasswordByCode) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$token = token;
//     final lOther$token = other.token;
//     if (l$token != lOther$token) {
//       return false;
//     }
//     final l$user = user;
//     final lOther$user = other.user;
//     if (l$user != lOther$user) {
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
// extension UtilityExtensionMutationResetPasswordByCoderesetPasswordByCode
//     on MutationResetPasswordByCoderesetPasswordByCode {
//   CopyWithMutationResetPasswordByCoderesetPasswordByCode<
//           MutationResetPasswordByCoderesetPasswordByCode>
//       get copyWith => CopyWithMutationResetPasswordByCoderesetPasswordByCode(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationResetPasswordByCoderesetPasswordByCode<TRes> {
//   factory CopyWithMutationResetPasswordByCoderesetPasswordByCode(
//     MutationResetPasswordByCoderesetPasswordByCode instance,
//     TRes Function(MutationResetPasswordByCoderesetPasswordByCode) then,
//   ) = _CopyWithImplMutationResetPasswordByCoderesetPasswordByCode;
//
//   factory CopyWithMutationResetPasswordByCoderesetPasswordByCode.stub(
//           TRes res) =
//       _CopyWithStubImplMutationResetPasswordByCoderesetPasswordByCode;
//
//   TRes call({
//     String? token,
//     MutationResetPasswordByCoderesetPasswordByCodeuser? user,
//     int? error,
//     String? status,
//     String? message,
//     String? $__typename,
//   });
//   CopyWithMutationResetPasswordByCoderesetPasswordByCodeuser<TRes> get user;
// }
//
// class _CopyWithImplMutationResetPasswordByCoderesetPasswordByCode<TRes>
//     implements CopyWithMutationResetPasswordByCoderesetPasswordByCode<TRes> {
//   _CopyWithImplMutationResetPasswordByCoderesetPasswordByCode(
//     this._instance,
//     this._then,
//   );
//
//   final MutationResetPasswordByCoderesetPasswordByCode _instance;
//
//   final TRes Function(MutationResetPasswordByCoderesetPasswordByCode) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? token = _undefined,
//     Object? user = _undefined,
//     Object? error = _undefined,
//     Object? status = _undefined,
//     Object? message = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationResetPasswordByCoderesetPasswordByCode(
//         token: token == _undefined ? _instance.token : (token as String?),
//         user: user == _undefined
//             ? _instance.user
//             : (user as MutationResetPasswordByCoderesetPasswordByCodeuser?),
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
//
//   CopyWithMutationResetPasswordByCoderesetPasswordByCodeuser<TRes> get user {
//     final local$user = _instance.user;
//     return local$user == null
//         ? CopyWithMutationResetPasswordByCoderesetPasswordByCodeuser.stub(
//             _then(_instance))
//         : CopyWithMutationResetPasswordByCoderesetPasswordByCodeuser(
//             local$user, (e) => call(user: e));
//   }
// }
//
// class _CopyWithStubImplMutationResetPasswordByCoderesetPasswordByCode<TRes>
//     implements CopyWithMutationResetPasswordByCoderesetPasswordByCode<TRes> {
//   _CopyWithStubImplMutationResetPasswordByCoderesetPasswordByCode(this._res);
//
//   TRes _res;
//
//   call({
//     String? token,
//     MutationResetPasswordByCoderesetPasswordByCodeuser? user,
//     int? error,
//     String? status,
//     String? message,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationResetPasswordByCoderesetPasswordByCodeuser<TRes> get user =>
//       CopyWithMutationResetPasswordByCoderesetPasswordByCodeuser.stub(_res);
// }
//
// class MutationResetPasswordByCoderesetPasswordByCodeuser {
//   MutationResetPasswordByCoderesetPasswordByCodeuser({
//     required this.id,
//     this.name,
//     this.mobile,
//     this.email,
//     this.lang,
//     this.gender,
//     this.birth_date,
//     this.image_path,
//     this.type,
//     this.national_id,
//     this.username,
//     this.active,
//     this.wallet_limit,
//     this.wallet,
//     this.withdrawal,
//     this.points,
//     this.user_company,
//     this.$__typename = 'User',
//   });
//
//   factory MutationResetPasswordByCoderesetPasswordByCodeuser.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$mobile = json['mobile'];
//     final l$email = json['email'];
//     final l$lang = json['lang'];
//     final l$gender = json['gender'];
//     final l$birth_date = json['birth_date'];
//     final l$image_path = json['image_path'];
//     final l$type = json['type'];
//     final l$national_id = json['national_id'];
//     final l$username = json['username'];
//     final l$active = json['active'];
//     final l$wallet_limit = json['wallet_limit'];
//     final l$wallet = json['wallet'];
//     final l$withdrawal = json['withdrawal'];
//     final l$points = json['points'];
//     final l$user_company = json['user_company'];
//     final l$$__typename = json['__typename'];
//     return MutationResetPasswordByCoderesetPasswordByCodeuser(
//       id: (l$id as int),
//       name: (l$name as String?),
//       mobile: (l$mobile as String?),
//       email: (l$email as String?),
//       lang: (l$lang as String?),
//       gender: (l$gender as String?),
//       birth_date: (l$birth_date as String?),
//       image_path: (l$image_path as String?),
//       type: (l$type as String?),
//       national_id: (l$national_id as String?),
//       username: (l$username as String?),
//       active: (l$active as int?),
//       wallet_limit: (l$wallet_limit as num?)?.toDouble(),
//       wallet: (l$wallet as num?)?.toDouble(),
//       withdrawal: (l$withdrawal as num?)?.toDouble(),
//       points: (l$points as int?),
//       user_company: l$user_company == null
//           ? null
//           : MutationResetPasswordByCoderesetPasswordByCodeuseruser_company
//               .fromJson((l$user_company as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final int id;
//
//   final String? name;
//
//   final String? mobile;
//
//   final String? email;
//
//   final String? lang;
//
//   final String? gender;
//
//   final String? birth_date;
//
//   final String? image_path;
//
//   final String? type;
//
//   final String? national_id;
//
//   final String? username;
//
//   final int? active;
//
//   final double? wallet_limit;
//
//   final double? wallet;
//
//   final double? withdrawal;
//
//   final int? points;
//
//   final MutationResetPasswordByCoderesetPasswordByCodeuseruser_company?
//       user_company;
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
//     final l$lang = lang;
//     _resultData['lang'] = l$lang;
//     final l$gender = gender;
//     _resultData['gender'] = l$gender;
//     final l$birth_date = birth_date;
//     _resultData['birth_date'] = l$birth_date;
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$type = type;
//     _resultData['type'] = l$type;
//     final l$national_id = national_id;
//     _resultData['national_id'] = l$national_id;
//     final l$username = username;
//     _resultData['username'] = l$username;
//     final l$active = active;
//     _resultData['active'] = l$active;
//     final l$wallet_limit = wallet_limit;
//     _resultData['wallet_limit'] = l$wallet_limit;
//     final l$wallet = wallet;
//     _resultData['wallet'] = l$wallet;
//     final l$withdrawal = withdrawal;
//     _resultData['withdrawal'] = l$withdrawal;
//     final l$points = points;
//     _resultData['points'] = l$points;
//     final l$user_company = user_company;
//     _resultData['user_company'] = l$user_company?.toJson();
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
//     final l$lang = lang;
//     final l$gender = gender;
//     final l$birth_date = birth_date;
//     final l$image_path = image_path;
//     final l$type = type;
//     final l$national_id = national_id;
//     final l$username = username;
//     final l$active = active;
//     final l$wallet_limit = wallet_limit;
//     final l$wallet = wallet;
//     final l$withdrawal = withdrawal;
//     final l$points = points;
//     final l$user_company = user_company;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$name,
//       l$mobile,
//       l$email,
//       l$lang,
//       l$gender,
//       l$birth_date,
//       l$image_path,
//       l$type,
//       l$national_id,
//       l$username,
//       l$active,
//       l$wallet_limit,
//       l$wallet,
//       l$withdrawal,
//       l$points,
//       l$user_company,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationResetPasswordByCoderesetPasswordByCodeuser) ||
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
//     final l$lang = lang;
//     final lOther$lang = other.lang;
//     if (l$lang != lOther$lang) {
//       return false;
//     }
//     final l$gender = gender;
//     final lOther$gender = other.gender;
//     if (l$gender != lOther$gender) {
//       return false;
//     }
//     final l$birth_date = birth_date;
//     final lOther$birth_date = other.birth_date;
//     if (l$birth_date != lOther$birth_date) {
//       return false;
//     }
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
//       return false;
//     }
//     final l$type = type;
//     final lOther$type = other.type;
//     if (l$type != lOther$type) {
//       return false;
//     }
//     final l$national_id = national_id;
//     final lOther$national_id = other.national_id;
//     if (l$national_id != lOther$national_id) {
//       return false;
//     }
//     final l$username = username;
//     final lOther$username = other.username;
//     if (l$username != lOther$username) {
//       return false;
//     }
//     final l$active = active;
//     final lOther$active = other.active;
//     if (l$active != lOther$active) {
//       return false;
//     }
//     final l$wallet_limit = wallet_limit;
//     final lOther$wallet_limit = other.wallet_limit;
//     if (l$wallet_limit != lOther$wallet_limit) {
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
//     final l$points = points;
//     final lOther$points = other.points;
//     if (l$points != lOther$points) {
//       return false;
//     }
//     final l$user_company = user_company;
//     final lOther$user_company = other.user_company;
//     if (l$user_company != lOther$user_company) {
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
// extension UtilityExtensionMutationResetPasswordByCoderesetPasswordByCodeuser
//     on MutationResetPasswordByCoderesetPasswordByCodeuser {
//   CopyWithMutationResetPasswordByCoderesetPasswordByCodeuser<
//           MutationResetPasswordByCoderesetPasswordByCodeuser>
//       get copyWith =>
//           CopyWithMutationResetPasswordByCoderesetPasswordByCodeuser(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationResetPasswordByCoderesetPasswordByCodeuser<
//     TRes> {
//   factory CopyWithMutationResetPasswordByCoderesetPasswordByCodeuser(
//     MutationResetPasswordByCoderesetPasswordByCodeuser instance,
//     TRes Function(MutationResetPasswordByCoderesetPasswordByCodeuser) then,
//   ) = _CopyWithImplMutationResetPasswordByCoderesetPasswordByCodeuser;
//
//   factory CopyWithMutationResetPasswordByCoderesetPasswordByCodeuser.stub(
//           TRes res) =
//       _CopyWithStubImplMutationResetPasswordByCoderesetPasswordByCodeuser;
//
//   TRes call({
//     String? id,
//     String? name,
//     String? mobile,
//     String? email,
//     String? lang,
//     String? gender,
//     String? birth_date,
//     String? image_path,
//     String? type,
//     String? national_id,
//     String? username,
//     bool? active,
//     double? wallet_limit,
//     double? wallet,
//     double? withdrawal,
//     int? points,
//     MutationResetPasswordByCoderesetPasswordByCodeuseruser_company?
//         user_company,
//     String? $__typename,
//   });
//   CopyWithMutationResetPasswordByCoderesetPasswordByCodeuseruser_company<TRes>
//       get user_company;
// }
//
// class _CopyWithImplMutationResetPasswordByCoderesetPasswordByCodeuser<TRes>
//     implements
//         CopyWithMutationResetPasswordByCoderesetPasswordByCodeuser<TRes> {
//   _CopyWithImplMutationResetPasswordByCoderesetPasswordByCodeuser(
//     this._instance,
//     this._then,
//   );
//
//   final MutationResetPasswordByCoderesetPasswordByCodeuser _instance;
//
//   final TRes Function(MutationResetPasswordByCoderesetPasswordByCodeuser) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? name = _undefined,
//     Object? mobile = _undefined,
//     Object? email = _undefined,
//     Object? lang = _undefined,
//     Object? gender = _undefined,
//     Object? birth_date = _undefined,
//     Object? image_path = _undefined,
//     Object? type = _undefined,
//     Object? national_id = _undefined,
//     Object? username = _undefined,
//     Object? active = _undefined,
//     Object? wallet_limit = _undefined,
//     Object? wallet = _undefined,
//     Object? withdrawal = _undefined,
//     Object? points = _undefined,
//     Object? user_company = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationResetPasswordByCoderesetPasswordByCodeuser(
//         id: id == _undefined || id == null ? _instance.id : (id as int),
//         name: name == _undefined ? _instance.name : (name as String?),
//         mobile: mobile == _undefined ? _instance.mobile : (mobile as String?),
//         email: email == _undefined ? _instance.email : (email as String?),
//         lang: lang == _undefined ? _instance.lang : (lang as String?),
//         gender: gender == _undefined ? _instance.gender : (gender as String?),
//         birth_date: birth_date == _undefined
//             ? _instance.birth_date
//             : (birth_date as String?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         type: type == _undefined ? _instance.type : (type as String?),
//         national_id: national_id == _undefined
//             ? _instance.national_id
//             : (national_id as String?),
//         username:
//             username == _undefined ? _instance.username : (username as String?),
//         active: active == _undefined ? _instance.active : (active as int?),
//         wallet_limit: wallet_limit == _undefined
//             ? _instance.wallet_limit
//             : (wallet_limit as double?),
//         wallet: wallet == _undefined ? _instance.wallet : (wallet as double?),
//         withdrawal: withdrawal == _undefined
//             ? _instance.withdrawal
//             : (withdrawal as double?),
//         points: points == _undefined ? _instance.points : (points as int?),
//         user_company: user_company == _undefined
//             ? _instance.user_company
//             : (user_company
//                 as MutationResetPasswordByCoderesetPasswordByCodeuseruser_company?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationResetPasswordByCoderesetPasswordByCodeuseruser_company<TRes>
//       get user_company {
//     final local$user_company = _instance.user_company;
//     return local$user_company == null
//         ? CopyWithMutationResetPasswordByCoderesetPasswordByCodeuseruser_company
//             .stub(_then(_instance))
//         : CopyWithMutationResetPasswordByCoderesetPasswordByCodeuseruser_company(
//             local$user_company, (e) => call(user_company: e));
//   }
// }
//
// class _CopyWithStubImplMutationResetPasswordByCoderesetPasswordByCodeuser<TRes>
//     implements
//         CopyWithMutationResetPasswordByCoderesetPasswordByCodeuser<TRes> {
//   _CopyWithStubImplMutationResetPasswordByCoderesetPasswordByCodeuser(
//       this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? name,
//     String? mobile,
//     String? email,
//     String? lang,
//     String? gender,
//     String? birth_date,
//     String? image_path,
//     String? type,
//     String? national_id,
//     String? username,
//     bool? active,
//     double? wallet_limit,
//     double? wallet,
//     double? withdrawal,
//     int? points,
//     MutationResetPasswordByCoderesetPasswordByCodeuseruser_company?
//         user_company,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationResetPasswordByCoderesetPasswordByCodeuseruser_company<TRes>
//       get user_company =>
//           CopyWithMutationResetPasswordByCoderesetPasswordByCodeuseruser_company
//               .stub(_res);
// }
//
// class MutationResetPasswordByCoderesetPasswordByCodeuseruser_company {
//   MutationResetPasswordByCoderesetPasswordByCodeuseruser_company({
//     this.id,
//     this.name,
//     this.can_update_price,
//     this.customer_points_benefit,
//     this.points_benefit,
//     this.image_path,
//     this.$__typename = 'Company',
//   });
//
//   factory MutationResetPasswordByCoderesetPasswordByCodeuseruser_company.fromJson(
//       Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$can_update_price = json['can_update_price'];
//     final l$customer_points_benefit = json['customer_points_benefit'];
//     final l$points_benefit = json['points_benefit'];
//     final l$image_path = json['image_path'];
//     final l$$__typename = json['__typename'];
//     return MutationResetPasswordByCoderesetPasswordByCodeuseruser_company(
//       id: (l$id as int?),
//       name: (l$name as String?),
//       can_update_price: (l$can_update_price as bool?),
//       customer_points_benefit: (l$customer_points_benefit as bool?),
//       points_benefit: (l$points_benefit as bool?),
//       image_path: (l$image_path as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final int? id;
//
//   final String? name;
//
//   final bool? can_update_price;
//
//   final bool? customer_points_benefit;
//
//   final bool? points_benefit;
//
//   final String? image_path;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$name = name;
//     _resultData['name'] = l$name;
//     final l$can_update_price = can_update_price;
//     _resultData['can_update_price'] = l$can_update_price;
//     final l$customer_points_benefit = customer_points_benefit;
//     _resultData['customer_points_benefit'] = l$customer_points_benefit;
//     final l$points_benefit = points_benefit;
//     _resultData['points_benefit'] = l$points_benefit;
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
//     final l$name = name;
//     final l$can_update_price = can_update_price;
//     final l$customer_points_benefit = customer_points_benefit;
//     final l$points_benefit = points_benefit;
//     final l$image_path = image_path;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$name,
//       l$can_update_price,
//       l$customer_points_benefit,
//       l$points_benefit,
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
//             is MutationResetPasswordByCoderesetPasswordByCodeuseruser_company) ||
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
//     final l$can_update_price = can_update_price;
//     final lOther$can_update_price = other.can_update_price;
//     if (l$can_update_price != lOther$can_update_price) {
//       return false;
//     }
//     final l$customer_points_benefit = customer_points_benefit;
//     final lOther$customer_points_benefit = other.customer_points_benefit;
//     if (l$customer_points_benefit != lOther$customer_points_benefit) {
//       return false;
//     }
//     final l$points_benefit = points_benefit;
//     final lOther$points_benefit = other.points_benefit;
//     if (l$points_benefit != lOther$points_benefit) {
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
// extension UtilityExtensionMutationResetPasswordByCoderesetPasswordByCodeuseruser_company
//     on MutationResetPasswordByCoderesetPasswordByCodeuseruser_company {
//   CopyWithMutationResetPasswordByCoderesetPasswordByCodeuseruser_company<
//           MutationResetPasswordByCoderesetPasswordByCodeuseruser_company>
//       get copyWith =>
//           CopyWithMutationResetPasswordByCoderesetPasswordByCodeuseruser_company(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationResetPasswordByCoderesetPasswordByCodeuseruser_company<
//     TRes> {
//   factory CopyWithMutationResetPasswordByCoderesetPasswordByCodeuseruser_company(
//     MutationResetPasswordByCoderesetPasswordByCodeuseruser_company instance,
//     TRes Function(
//             MutationResetPasswordByCoderesetPasswordByCodeuseruser_company)
//         then,
//   ) = _CopyWithImplMutationResetPasswordByCoderesetPasswordByCodeuseruser_company;
//
//   factory CopyWithMutationResetPasswordByCoderesetPasswordByCodeuseruser_company.stub(
//           TRes res) =
//       _CopyWithStubImplMutationResetPasswordByCoderesetPasswordByCodeuseruser_company;
//
//   TRes call({
//     String? id,
//     String? name,
//     bool? can_update_price,
//     bool? customer_points_benefit,
//     bool? points_benefit,
//     String? image_path,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationResetPasswordByCoderesetPasswordByCodeuseruser_company<
//         TRes>
//     implements
//         CopyWithMutationResetPasswordByCoderesetPasswordByCodeuseruser_company<
//             TRes> {
//   _CopyWithImplMutationResetPasswordByCoderesetPasswordByCodeuseruser_company(
//     this._instance,
//     this._then,
//   );
//
//   final MutationResetPasswordByCoderesetPasswordByCodeuseruser_company
//       _instance;
//
//   final TRes Function(
//       MutationResetPasswordByCoderesetPasswordByCodeuseruser_company) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? name = _undefined,
//     Object? can_update_price = _undefined,
//     Object? customer_points_benefit = _undefined,
//     Object? points_benefit = _undefined,
//     Object? image_path = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationResetPasswordByCoderesetPasswordByCodeuseruser_company(
//         id: id == _undefined ? _instance.id : (id as int?),
//         name: name == _undefined ? _instance.name : (name as String?),
//         can_update_price: can_update_price == _undefined
//             ? _instance.can_update_price
//             : (can_update_price as bool?),
//         customer_points_benefit: customer_points_benefit == _undefined
//             ? _instance.customer_points_benefit
//             : (customer_points_benefit as bool?),
//         points_benefit: points_benefit == _undefined
//             ? _instance.points_benefit
//             : (points_benefit as bool?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplMutationResetPasswordByCoderesetPasswordByCodeuseruser_company<
//         TRes>
//     implements
//         CopyWithMutationResetPasswordByCoderesetPasswordByCodeuseruser_company<
//             TRes> {
//   _CopyWithStubImplMutationResetPasswordByCoderesetPasswordByCodeuseruser_company(
//       this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? name,
//     bool? can_update_price,
//     bool? customer_points_benefit,
//     bool? points_benefit,
//     String? image_path,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryMe {
//   QueryMe({
//     required this.me,
//     this.$__typename = 'Query',
//   });
//
//   factory QueryMe.fromJson(Map<String, dynamic> json) {
//     final l$me = json['me'];
//     final l$$__typename = json['__typename'];
//     return QueryMe(
//       me: QueryMeme.fromJson((l$me as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryMeme me;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$me = me;
//     _resultData['me'] = l$me.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$me = me;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$me,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryMe) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$me = me;
//     final lOther$me = other.me;
//     if (l$me != lOther$me) {
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
// extension UtilityExtensionQueryMe on QueryMe {
//   CopyWithQueryMe<QueryMe> get copyWith => CopyWithQueryMe(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryMe<TRes> {
//   factory CopyWithQueryMe(
//     QueryMe instance,
//     TRes Function(QueryMe) then,
//   ) = _CopyWithImplQueryMe;
//
//   factory CopyWithQueryMe.stub(TRes res) = _CopyWithStubImplQueryMe;
//
//   TRes call({
//     QueryMeme? me,
//     String? $__typename,
//   });
//   CopyWithQueryMeme<TRes> get me;
// }
//
// class _CopyWithImplQueryMe<TRes> implements CopyWithQueryMe<TRes> {
//   _CopyWithImplQueryMe(
//     this._instance,
//     this._then,
//   );
//
//   final QueryMe _instance;
//
//   final TRes Function(QueryMe) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? me = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryMe(
//         me: me == _undefined || me == null ? _instance.me : (me as QueryMeme),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryMeme<TRes> get me {
//     final local$me = _instance.me;
//     return CopyWithQueryMeme(local$me, (e) => call(me: e));
//   }
// }
//
// class _CopyWithStubImplQueryMe<TRes> implements CopyWithQueryMe<TRes> {
//   _CopyWithStubImplQueryMe(this._res);
//
//   TRes _res;
//
//   call({
//     QueryMeme? me,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryMeme<TRes> get me => CopyWithQueryMeme.stub(_res);
// }
//
// const documentNodeQueryMe = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.query,
//     name: NameNode(value: 'Me'),
//     variableDefinitions: [],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'me'),
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
//             name: NameNode(value: 'name'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'mobile'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'email'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'lang'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'gender'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'birth_date'),
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
//             name: NameNode(value: 'type'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'national_id'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'username'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'active'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'wallet_limit'),
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
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'withdrawal'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'points'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'user_company'),
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
//                 name: NameNode(value: 'can_update_price'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'customer_points_benefit'),
//                 alias: null,
//                 arguments: [],
//                 directives: [],
//                 selectionSet: null,
//               ),
//               FieldNode(
//                 name: NameNode(value: 'points_benefit'),
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
// QueryMe _parserFnQueryMe(Map<String, dynamic> data) => QueryMe.fromJson(data);
// typedef OnQueryCompleteQueryMe = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   QueryMe?,
// );
//
// class OptionsQueryMe extends graphql.QueryOptions<QueryMe> {
//   OptionsQueryMe({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryMe? typedOptimisticResult,
//     Duration? pollInterval,
//     graphql.Context? context,
//     OnQueryCompleteQueryMe? onComplete,
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
//                     data == null ? null : _parserFnQueryMe(data),
//                   ),
//           onError: onError,
//           document: documentNodeQueryMe,
//           parserFn: _parserFnQueryMe,
//         );
//
//   final OnQueryCompleteQueryMe? onCompleteWithParsed;
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
// class WatchOptionsQueryMe extends graphql.WatchQueryOptions<QueryMe> {
//   WatchOptionsQueryMe({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryMe? typedOptimisticResult,
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
//           document: documentNodeQueryMe,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnQueryMe,
//         );
// }
//
// class FetchMoreOptionsQueryMe extends graphql.FetchMoreOptions {
//   FetchMoreOptionsQueryMe({required graphql.UpdateQuery updateQuery})
//       : super(
//           updateQuery: updateQuery,
//           document: documentNodeQueryMe,
//         );
// }
//
// extension ClientExtensionQueryMe on graphql.GraphQLClient {
//   Future<graphql.QueryResult<QueryMe>> queryMe(
//           [OptionsQueryMe? options]) async =>
//       await this.query(options ?? OptionsQueryMe());
//   graphql.ObservableQuery<QueryMe> watchQueryMe(
//           [WatchOptionsQueryMe? options]) =>
//       this.watchQuery(options ?? WatchOptionsQueryMe());
//   void writeQueryMe({
//     required QueryMe data,
//     bool broadcast = true,
//   }) =>
//       this.writeQuery(
//         graphql.Request(
//             operation: graphql.Operation(document: documentNodeQueryMe)),
//         data: data.toJson(),
//         broadcast: broadcast,
//       );
//   QueryMe? readQueryMe({bool optimistic = true}) {
//     final result = this.readQuery(
//       graphql.Request(
//           operation: graphql.Operation(document: documentNodeQueryMe)),
//       optimistic: optimistic,
//     );
//     return result == null ? null : QueryMe.fromJson(result);
//   }
// }
//
// graphql_flutter.QueryHookResult<QueryMe> useQueryMe(
//         [OptionsQueryMe? options]) =>
//     graphql_flutter.useQuery(options ?? OptionsQueryMe());
// graphql.ObservableQuery<QueryMe> useWatchQueryMe(
//         [WatchOptionsQueryMe? options]) =>
//     graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryMe());
//
// class QueryMeWidget extends graphql_flutter.Query<QueryMe> {
//   QueryMeWidget({
//     widgets.Key? key,
//     OptionsQueryMe? options,
//     required graphql_flutter.QueryBuilder<QueryMe> builder,
//   }) : super(
//           key: key,
//           options: options ?? OptionsQueryMe(),
//           builder: builder,
//         );
// }
//
// class QueryMeme {
//   QueryMeme({
//     required this.id,
//     this.name,
//     this.mobile,
//     this.email,
//     this.lang,
//     this.gender,
//     this.birth_date,
//     this.image_path,
//     this.type,
//     this.national_id,
//     this.username,
//     this.active,
//     this.wallet_limit,
//     this.wallet,
//     this.withdrawal,
//     this.points,
//     this.user_company,
//     this.$__typename = 'User',
//   });
//
//   factory QueryMeme.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$mobile = json['mobile'];
//     final l$email = json['email'];
//     final l$lang = json['lang'];
//     final l$gender = json['gender'];
//     final l$birth_date = json['birth_date'];
//     final l$image_path = json['image_path'];
//     final l$type = json['type'];
//     final l$national_id = json['national_id'];
//     final l$username = json['username'];
//     final l$active = json['active'];
//     final l$wallet_limit = json['wallet_limit'];
//     final l$wallet = json['wallet'];
//     final l$withdrawal = json['withdrawal'];
//     final l$points = json['points'];
//     final l$user_company = json['user_company'];
//     final l$$__typename = json['__typename'];
//     return QueryMeme(
//       id: (l$id as String),
//       name: (l$name as String?),
//       mobile: (l$mobile as String?),
//       email: (l$email as String?),
//       lang: (l$lang as String?),
//       gender: (l$gender as String?),
//       birth_date: (l$birth_date as String?),
//       image_path: (l$image_path as String?),
//       type: (l$type as String?),
//       national_id: (l$national_id as String?),
//       username: (l$username as String?),
//       active: (l$active as bool?),
//       wallet_limit: (l$wallet_limit as num?)?.toDouble(),
//       wallet: (l$wallet as num?)?.toDouble(),
//       withdrawal: (l$withdrawal as num?)?.toDouble(),
//       points: (l$points as int?),
//       user_company: l$user_company == null
//           ? null
//           : QueryMemeuser_company.fromJson(
//               (l$user_company as Map<String, dynamic>)),
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
//   final String? lang;
//
//   final String? gender;
//
//   final String? birth_date;
//
//   final String? image_path;
//
//   final String? type;
//
//   final String? national_id;
//
//   final String? username;
//
//   final bool? active;
//
//   final double? wallet_limit;
//
//   final double? wallet;
//
//   final double? withdrawal;
//
//   final int? points;
//
//   final QueryMemeuser_company? user_company;
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
//     final l$lang = lang;
//     _resultData['lang'] = l$lang;
//     final l$gender = gender;
//     _resultData['gender'] = l$gender;
//     final l$birth_date = birth_date;
//     _resultData['birth_date'] = l$birth_date;
//     final l$image_path = image_path;
//     _resultData['image_path'] = l$image_path;
//     final l$type = type;
//     _resultData['type'] = l$type;
//     final l$national_id = national_id;
//     _resultData['national_id'] = l$national_id;
//     final l$username = username;
//     _resultData['username'] = l$username;
//     final l$active = active;
//     _resultData['active'] = l$active;
//     final l$wallet_limit = wallet_limit;
//     _resultData['wallet_limit'] = l$wallet_limit;
//     final l$wallet = wallet;
//     _resultData['wallet'] = l$wallet;
//     final l$withdrawal = withdrawal;
//     _resultData['withdrawal'] = l$withdrawal;
//     final l$points = points;
//     _resultData['points'] = l$points;
//     final l$user_company = user_company;
//     _resultData['user_company'] = l$user_company?.toJson();
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
//     final l$lang = lang;
//     final l$gender = gender;
//     final l$birth_date = birth_date;
//     final l$image_path = image_path;
//     final l$type = type;
//     final l$national_id = national_id;
//     final l$username = username;
//     final l$active = active;
//     final l$wallet_limit = wallet_limit;
//     final l$wallet = wallet;
//     final l$withdrawal = withdrawal;
//     final l$points = points;
//     final l$user_company = user_company;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$name,
//       l$mobile,
//       l$email,
//       l$lang,
//       l$gender,
//       l$birth_date,
//       l$image_path,
//       l$type,
//       l$national_id,
//       l$username,
//       l$active,
//       l$wallet_limit,
//       l$wallet,
//       l$withdrawal,
//       l$points,
//       l$user_company,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryMeme) || runtimeType != other.runtimeType) {
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
//     final l$lang = lang;
//     final lOther$lang = other.lang;
//     if (l$lang != lOther$lang) {
//       return false;
//     }
//     final l$gender = gender;
//     final lOther$gender = other.gender;
//     if (l$gender != lOther$gender) {
//       return false;
//     }
//     final l$birth_date = birth_date;
//     final lOther$birth_date = other.birth_date;
//     if (l$birth_date != lOther$birth_date) {
//       return false;
//     }
//     final l$image_path = image_path;
//     final lOther$image_path = other.image_path;
//     if (l$image_path != lOther$image_path) {
//       return false;
//     }
//     final l$type = type;
//     final lOther$type = other.type;
//     if (l$type != lOther$type) {
//       return false;
//     }
//     final l$national_id = national_id;
//     final lOther$national_id = other.national_id;
//     if (l$national_id != lOther$national_id) {
//       return false;
//     }
//     final l$username = username;
//     final lOther$username = other.username;
//     if (l$username != lOther$username) {
//       return false;
//     }
//     final l$active = active;
//     final lOther$active = other.active;
//     if (l$active != lOther$active) {
//       return false;
//     }
//     final l$wallet_limit = wallet_limit;
//     final lOther$wallet_limit = other.wallet_limit;
//     if (l$wallet_limit != lOther$wallet_limit) {
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
//     final l$points = points;
//     final lOther$points = other.points;
//     if (l$points != lOther$points) {
//       return false;
//     }
//     final l$user_company = user_company;
//     final lOther$user_company = other.user_company;
//     if (l$user_company != lOther$user_company) {
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
// extension UtilityExtensionQueryMeme on QueryMeme {
//   CopyWithQueryMeme<QueryMeme> get copyWith => CopyWithQueryMeme(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryMeme<TRes> {
//   factory CopyWithQueryMeme(
//     QueryMeme instance,
//     TRes Function(QueryMeme) then,
//   ) = _CopyWithImplQueryMeme;
//
//   factory CopyWithQueryMeme.stub(TRes res) = _CopyWithStubImplQueryMeme;
//
//   TRes call({
//     String? id,
//     String? name,
//     String? mobile,
//     String? email,
//     String? lang,
//     String? gender,
//     String? birth_date,
//     String? image_path,
//     String? type,
//     String? national_id,
//     String? username,
//     bool? active,
//     double? wallet_limit,
//     double? wallet,
//     double? withdrawal,
//     int? points,
//     QueryMemeuser_company? user_company,
//     String? $__typename,
//   });
//   CopyWithQueryMemeuser_company<TRes> get user_company;
// }
//
// class _CopyWithImplQueryMeme<TRes> implements CopyWithQueryMeme<TRes> {
//   _CopyWithImplQueryMeme(
//     this._instance,
//     this._then,
//   );
//
//   final QueryMeme _instance;
//
//   final TRes Function(QueryMeme) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? name = _undefined,
//     Object? mobile = _undefined,
//     Object? email = _undefined,
//     Object? lang = _undefined,
//     Object? gender = _undefined,
//     Object? birth_date = _undefined,
//     Object? image_path = _undefined,
//     Object? type = _undefined,
//     Object? national_id = _undefined,
//     Object? username = _undefined,
//     Object? active = _undefined,
//     Object? wallet_limit = _undefined,
//     Object? wallet = _undefined,
//     Object? withdrawal = _undefined,
//     Object? points = _undefined,
//     Object? user_company = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryMeme(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         name: name == _undefined ? _instance.name : (name as String?),
//         mobile: mobile == _undefined ? _instance.mobile : (mobile as String?),
//         email: email == _undefined ? _instance.email : (email as String?),
//         lang: lang == _undefined ? _instance.lang : (lang as String?),
//         gender: gender == _undefined ? _instance.gender : (gender as String?),
//         birth_date: birth_date == _undefined
//             ? _instance.birth_date
//             : (birth_date as String?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         type: type == _undefined ? _instance.type : (type as String?),
//         national_id: national_id == _undefined
//             ? _instance.national_id
//             : (national_id as String?),
//         username:
//             username == _undefined ? _instance.username : (username as String?),
//         active: active == _undefined ? _instance.active : (active as bool?),
//         wallet_limit: wallet_limit == _undefined
//             ? _instance.wallet_limit
//             : (wallet_limit as double?),
//         wallet: wallet == _undefined ? _instance.wallet : (wallet as double?),
//         withdrawal: withdrawal == _undefined
//             ? _instance.withdrawal
//             : (withdrawal as double?),
//         points: points == _undefined ? _instance.points : (points as int?),
//         user_company: user_company == _undefined
//             ? _instance.user_company
//             : (user_company as QueryMemeuser_company?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryMemeuser_company<TRes> get user_company {
//     final local$user_company = _instance.user_company;
//     return local$user_company == null
//         ? CopyWithQueryMemeuser_company.stub(_then(_instance))
//         : CopyWithQueryMemeuser_company(
//             local$user_company, (e) => call(user_company: e));
//   }
// }
//
// class _CopyWithStubImplQueryMeme<TRes> implements CopyWithQueryMeme<TRes> {
//   _CopyWithStubImplQueryMeme(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? name,
//     String? mobile,
//     String? email,
//     String? lang,
//     String? gender,
//     String? birth_date,
//     String? image_path,
//     String? type,
//     String? national_id,
//     String? username,
//     bool? active,
//     double? wallet_limit,
//     double? wallet,
//     double? withdrawal,
//     int? points,
//     QueryMemeuser_company? user_company,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryMemeuser_company<TRes> get user_company =>
//       CopyWithQueryMemeuser_company.stub(_res);
// }
//
// class QueryMemeuser_company {
//   QueryMemeuser_company({
//     this.id,
//     this.name,
//     this.can_update_price,
//     this.customer_points_benefit,
//     this.points_benefit,
//     this.image_path,
//     this.$__typename = 'Company',
//   });
//
//   factory QueryMemeuser_company.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$name = json['name'];
//     final l$can_update_price = json['can_update_price'];
//     final l$customer_points_benefit = json['customer_points_benefit'];
//     final l$points_benefit = json['points_benefit'];
//     final l$image_path = json['image_path'];
//     final l$$__typename = json['__typename'];
//     return QueryMemeuser_company(
//       id: (l$id as String?),
//       name: (l$name as String?),
//       can_update_price: (l$can_update_price as bool?),
//       customer_points_benefit: (l$customer_points_benefit as bool?),
//       points_benefit: (l$points_benefit as bool?),
//       image_path: (l$image_path as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String? id;
//
//   final String? name;
//
//   final bool? can_update_price;
//
//   final bool? customer_points_benefit;
//
//   final bool? points_benefit;
//
//   final String? image_path;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$id = id;
//     _resultData['id'] = l$id;
//     final l$name = name;
//     _resultData['name'] = l$name;
//     final l$can_update_price = can_update_price;
//     _resultData['can_update_price'] = l$can_update_price;
//     final l$customer_points_benefit = customer_points_benefit;
//     _resultData['customer_points_benefit'] = l$customer_points_benefit;
//     final l$points_benefit = points_benefit;
//     _resultData['points_benefit'] = l$points_benefit;
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
//     final l$name = name;
//     final l$can_update_price = can_update_price;
//     final l$customer_points_benefit = customer_points_benefit;
//     final l$points_benefit = points_benefit;
//     final l$image_path = image_path;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$name,
//       l$can_update_price,
//       l$customer_points_benefit,
//       l$points_benefit,
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
//     if (!(other is QueryMemeuser_company) || runtimeType != other.runtimeType) {
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
//     final l$can_update_price = can_update_price;
//     final lOther$can_update_price = other.can_update_price;
//     if (l$can_update_price != lOther$can_update_price) {
//       return false;
//     }
//     final l$customer_points_benefit = customer_points_benefit;
//     final lOther$customer_points_benefit = other.customer_points_benefit;
//     if (l$customer_points_benefit != lOther$customer_points_benefit) {
//       return false;
//     }
//     final l$points_benefit = points_benefit;
//     final lOther$points_benefit = other.points_benefit;
//     if (l$points_benefit != lOther$points_benefit) {
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
// extension UtilityExtensionQueryMemeuser_company on QueryMemeuser_company {
//   CopyWithQueryMemeuser_company<QueryMemeuser_company> get copyWith =>
//       CopyWithQueryMemeuser_company(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryMemeuser_company<TRes> {
//   factory CopyWithQueryMemeuser_company(
//     QueryMemeuser_company instance,
//     TRes Function(QueryMemeuser_company) then,
//   ) = _CopyWithImplQueryMemeuser_company;
//
//   factory CopyWithQueryMemeuser_company.stub(TRes res) =
//       _CopyWithStubImplQueryMemeuser_company;
//
//   TRes call({
//     String? id,
//     String? name,
//     bool? can_update_price,
//     bool? customer_points_benefit,
//     bool? points_benefit,
//     String? image_path,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryMemeuser_company<TRes>
//     implements CopyWithQueryMemeuser_company<TRes> {
//   _CopyWithImplQueryMemeuser_company(
//     this._instance,
//     this._then,
//   );
//
//   final QueryMemeuser_company _instance;
//
//   final TRes Function(QueryMemeuser_company) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? name = _undefined,
//     Object? can_update_price = _undefined,
//     Object? customer_points_benefit = _undefined,
//     Object? points_benefit = _undefined,
//     Object? image_path = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryMemeuser_company(
//         id: id == _undefined ? _instance.id : (id as String?),
//         name: name == _undefined ? _instance.name : (name as String?),
//         can_update_price: can_update_price == _undefined
//             ? _instance.can_update_price
//             : (can_update_price as bool?),
//         customer_points_benefit: customer_points_benefit == _undefined
//             ? _instance.customer_points_benefit
//             : (customer_points_benefit as bool?),
//         points_benefit: points_benefit == _undefined
//             ? _instance.points_benefit
//             : (points_benefit as bool?),
//         image_path: image_path == _undefined
//             ? _instance.image_path
//             : (image_path as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryMemeuser_company<TRes>
//     implements CopyWithQueryMemeuser_company<TRes> {
//   _CopyWithStubImplQueryMemeuser_company(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? name,
//     bool? can_update_price,
//     bool? customer_points_benefit,
//     bool? points_benefit,
//     String? image_path,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class VariablesMutationUpdateProfile {
//   factory VariablesMutationUpdateProfile({
//     required String name,
//     required String email,
//     required String phone,
//   }) =>
//       VariablesMutationUpdateProfile._({
//         r'name': name,
//         r'email': email,
//         r'phone': phone,
//       });
//
//   VariablesMutationUpdateProfile._(this._$data);
//
//   factory VariablesMutationUpdateProfile.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$name = data['name'];
//     result$data['name'] = (l$name as String);
//     final l$email = data['email'];
//     result$data['email'] = (l$email as String);
//     final l$phone = data['phone'];
//     result$data['phone'] = (l$phone as String);
//     return VariablesMutationUpdateProfile._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   String get name => (_$data['name'] as String);
//
//   String get email => (_$data['email'] as String);
//
//   String get phone => (_$data['phone'] as String);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$name = name;
//     result$data['name'] = l$name;
//     final l$email = email;
//     result$data['email'] = l$email;
//     final l$phone = phone;
//     result$data['phone'] = l$phone;
//     return result$data;
//   }
//
//   CopyWithVariablesMutationUpdateProfile<VariablesMutationUpdateProfile>
//       get copyWith => CopyWithVariablesMutationUpdateProfile(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationUpdateProfile) ||
//         runtimeType != other.runtimeType) {
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
//     final l$phone = phone;
//     final lOther$phone = other.phone;
//     if (l$phone != lOther$phone) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$name = name;
//     final l$email = email;
//     final l$phone = phone;
//     return Object.hashAll([
//       l$name,
//       l$email,
//       l$phone,
//     ]);
//   }
// }
//
// abstract class CopyWithVariablesMutationUpdateProfile<TRes> {
//   factory CopyWithVariablesMutationUpdateProfile(
//     VariablesMutationUpdateProfile instance,
//     TRes Function(VariablesMutationUpdateProfile) then,
//   ) = _CopyWithImplVariablesMutationUpdateProfile;
//
//   factory CopyWithVariablesMutationUpdateProfile.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationUpdateProfile;
//
//   TRes call({
//     String? name,
//     String? email,
//     String? phone,
//   });
// }
//
// class _CopyWithImplVariablesMutationUpdateProfile<TRes>
//     implements CopyWithVariablesMutationUpdateProfile<TRes> {
//   _CopyWithImplVariablesMutationUpdateProfile(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationUpdateProfile _instance;
//
//   final TRes Function(VariablesMutationUpdateProfile) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? name = _undefined,
//     Object? email = _undefined,
//     Object? phone = _undefined,
//   }) =>
//       _then(VariablesMutationUpdateProfile._({
//         ..._instance._$data,
//         if (name != _undefined && name != null) 'name': (name as String),
//         if (email != _undefined && email != null) 'email': (email as String),
//         if (phone != _undefined && phone != null) 'phone': (phone as String),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationUpdateProfile<TRes>
//     implements CopyWithVariablesMutationUpdateProfile<TRes> {
//   _CopyWithStubImplVariablesMutationUpdateProfile(this._res);
//
//   TRes _res;
//
//   call({
//     String? name,
//     String? email,
//     String? phone,
//   }) =>
//       _res;
// }
//
// class MutationUpdateProfile {
//   MutationUpdateProfile({
//     this.updateProfile,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationUpdateProfile.fromJson(Map<String, dynamic> json) {
//     final l$updateProfile = json['updateProfile'];
//     final l$$__typename = json['__typename'];
//     return MutationUpdateProfile(
//       updateProfile: l$updateProfile == null
//           ? null
//           : MutationUpdateProfileupdateProfile.fromJson(
//               (l$updateProfile as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationUpdateProfileupdateProfile? updateProfile;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$updateProfile = updateProfile;
//     _resultData['updateProfile'] = l$updateProfile?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$updateProfile = updateProfile;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$updateProfile,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationUpdateProfile) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$updateProfile = updateProfile;
//     final lOther$updateProfile = other.updateProfile;
//     if (l$updateProfile != lOther$updateProfile) {
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
// extension UtilityExtensionMutationUpdateProfile on MutationUpdateProfile {
//   CopyWithMutationUpdateProfile<MutationUpdateProfile> get copyWith =>
//       CopyWithMutationUpdateProfile(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationUpdateProfile<TRes> {
//   factory CopyWithMutationUpdateProfile(
//     MutationUpdateProfile instance,
//     TRes Function(MutationUpdateProfile) then,
//   ) = _CopyWithImplMutationUpdateProfile;
//
//   factory CopyWithMutationUpdateProfile.stub(TRes res) =
//       _CopyWithStubImplMutationUpdateProfile;
//
//   TRes call({
//     MutationUpdateProfileupdateProfile? updateProfile,
//     String? $__typename,
//   });
//   CopyWithMutationUpdateProfileupdateProfile<TRes> get updateProfile;
// }
//
// class _CopyWithImplMutationUpdateProfile<TRes>
//     implements CopyWithMutationUpdateProfile<TRes> {
//   _CopyWithImplMutationUpdateProfile(
//     this._instance,
//     this._then,
//   );
//
//   final MutationUpdateProfile _instance;
//
//   final TRes Function(MutationUpdateProfile) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? updateProfile = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationUpdateProfile(
//         updateProfile: updateProfile == _undefined
//             ? _instance.updateProfile
//             : (updateProfile as MutationUpdateProfileupdateProfile?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationUpdateProfileupdateProfile<TRes> get updateProfile {
//     final local$updateProfile = _instance.updateProfile;
//     return local$updateProfile == null
//         ? CopyWithMutationUpdateProfileupdateProfile.stub(_then(_instance))
//         : CopyWithMutationUpdateProfileupdateProfile(
//             local$updateProfile, (e) => call(updateProfile: e));
//   }
// }
//
// class _CopyWithStubImplMutationUpdateProfile<TRes>
//     implements CopyWithMutationUpdateProfile<TRes> {
//   _CopyWithStubImplMutationUpdateProfile(this._res);
//
//   TRes _res;
//
//   call({
//     MutationUpdateProfileupdateProfile? updateProfile,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationUpdateProfileupdateProfile<TRes> get updateProfile =>
//       CopyWithMutationUpdateProfileupdateProfile.stub(_res);
// }
//
// const documentNodeMutationUpdateProfile = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'UpdateProfile'),
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
//         variable: VariableNode(name: NameNode(value: 'email')),
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
//     ],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'updateProfile'),
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
//                 name: NameNode(value: 'email'),
//                 value: VariableNode(name: NameNode(value: 'email')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'mobile'),
//                 value: VariableNode(name: NameNode(value: 'phone')),
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
// MutationUpdateProfile _parserFnMutationUpdateProfile(
//         Map<String, dynamic> data) =>
//     MutationUpdateProfile.fromJson(data);
// typedef OnMutationCompletedMutationUpdateProfile = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationUpdateProfile?,
// );
//
// class OptionsMutationUpdateProfile
//     extends graphql.MutationOptions<MutationUpdateProfile> {
//   OptionsMutationUpdateProfile({
//     String? operationName,
//     required VariablesMutationUpdateProfile variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationUpdateProfile? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationUpdateProfile? onCompleted,
//     graphql.OnMutationUpdate<MutationUpdateProfile>? update,
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
//                     data == null ? null : _parserFnMutationUpdateProfile(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationUpdateProfile,
//           parserFn: _parserFnMutationUpdateProfile,
//         );
//
//   final OnMutationCompletedMutationUpdateProfile? onCompletedWithParsed;
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
// class WatchOptionsMutationUpdateProfile
//     extends graphql.WatchQueryOptions<MutationUpdateProfile> {
//   WatchOptionsMutationUpdateProfile({
//     String? operationName,
//     required VariablesMutationUpdateProfile variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationUpdateProfile? typedOptimisticResult,
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
//           document: documentNodeMutationUpdateProfile,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationUpdateProfile,
//         );
// }
//
// extension ClientExtensionMutationUpdateProfile on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationUpdateProfile>> mutateUpdateProfile(
//           OptionsMutationUpdateProfile options) async =>
//       await this.mutate(options);
//   graphql.ObservableQuery<MutationUpdateProfile> watchMutationUpdateProfile(
//           WatchOptionsMutationUpdateProfile options) =>
//       this.watchMutation(options);
// }
//
// class MutationUpdateProfileHookResult {
//   MutationUpdateProfileHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationUpdateProfile runMutation;
//
//   final graphql.QueryResult<MutationUpdateProfile> result;
// }
//
// MutationUpdateProfileHookResult useMutationUpdateProfile(
//     [WidgetOptionsMutationUpdateProfile? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationUpdateProfile());
//   return MutationUpdateProfileHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationUpdateProfile> useWatchMutationUpdateProfile(
//         WatchOptionsMutationUpdateProfile options) =>
//     graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationUpdateProfile
//     extends graphql.MutationOptions<MutationUpdateProfile> {
//   WidgetOptionsMutationUpdateProfile({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationUpdateProfile? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationUpdateProfile? onCompleted,
//     graphql.OnMutationUpdate<MutationUpdateProfile>? update,
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
//                     data == null ? null : _parserFnMutationUpdateProfile(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationUpdateProfile,
//           parserFn: _parserFnMutationUpdateProfile,
//         );
//
//   final OnMutationCompletedMutationUpdateProfile? onCompletedWithParsed;
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
// typedef RunMutationMutationUpdateProfile
//     = graphql.MultiSourceResult<MutationUpdateProfile> Function(
//   VariablesMutationUpdateProfile, {
//   Object? optimisticResult,
//   MutationUpdateProfile? typedOptimisticResult,
// });
// typedef BuilderMutationUpdateProfile = widgets.Widget Function(
//   RunMutationMutationUpdateProfile,
//   graphql.QueryResult<MutationUpdateProfile>?,
// );
//
// class MutationUpdateProfileWidget
//     extends graphql_flutter.Mutation<MutationUpdateProfile> {
//   MutationUpdateProfileWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationUpdateProfile? options,
//     required BuilderMutationUpdateProfile builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationUpdateProfile(),
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
// class MutationUpdateProfileupdateProfile {
//   MutationUpdateProfileupdateProfile({
//     required this.status,
//     required this.error,
//     this.message,
//     this.$__typename = 'Result',
//   });
//
//   factory MutationUpdateProfileupdateProfile.fromJson(
//       Map<String, dynamic> json) {
//     final l$status = json['status'];
//     final l$error = json['error'];
//     final l$message = json['message'];
//     final l$$__typename = json['__typename'];
//     return MutationUpdateProfileupdateProfile(
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
//     if (!(other is MutationUpdateProfileupdateProfile) ||
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
// extension UtilityExtensionMutationUpdateProfileupdateProfile
//     on MutationUpdateProfileupdateProfile {
//   CopyWithMutationUpdateProfileupdateProfile<MutationUpdateProfileupdateProfile>
//       get copyWith => CopyWithMutationUpdateProfileupdateProfile(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationUpdateProfileupdateProfile<TRes> {
//   factory CopyWithMutationUpdateProfileupdateProfile(
//     MutationUpdateProfileupdateProfile instance,
//     TRes Function(MutationUpdateProfileupdateProfile) then,
//   ) = _CopyWithImplMutationUpdateProfileupdateProfile;
//
//   factory CopyWithMutationUpdateProfileupdateProfile.stub(TRes res) =
//       _CopyWithStubImplMutationUpdateProfileupdateProfile;
//
//   TRes call({
//     String? status,
//     int? error,
//     String? message,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationUpdateProfileupdateProfile<TRes>
//     implements CopyWithMutationUpdateProfileupdateProfile<TRes> {
//   _CopyWithImplMutationUpdateProfileupdateProfile(
//     this._instance,
//     this._then,
//   );
//
//   final MutationUpdateProfileupdateProfile _instance;
//
//   final TRes Function(MutationUpdateProfileupdateProfile) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? status = _undefined,
//     Object? error = _undefined,
//     Object? message = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationUpdateProfileupdateProfile(
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
// class _CopyWithStubImplMutationUpdateProfileupdateProfile<TRes>
//     implements CopyWithMutationUpdateProfileupdateProfile<TRes> {
//   _CopyWithStubImplMutationUpdateProfileupdateProfile(this._res);
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
// class VariablesMutationUpdateProfilePhoto {
//   factory VariablesMutationUpdateProfilePhoto({required String image}) =>
//       VariablesMutationUpdateProfilePhoto._({
//         r'image': image,
//       });
//
//   VariablesMutationUpdateProfilePhoto._(this._$data);
//
//   factory VariablesMutationUpdateProfilePhoto.fromJson(
//       Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$image = data['image'];
//     result$data['image'] = (l$image as String);
//     return VariablesMutationUpdateProfilePhoto._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   String get image => (_$data['image'] as String);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$image = image;
//     result$data['image'] = l$image;
//     return result$data;
//   }
//
//   CopyWithVariablesMutationUpdateProfilePhoto<
//           VariablesMutationUpdateProfilePhoto>
//       get copyWith => CopyWithVariablesMutationUpdateProfilePhoto(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationUpdateProfilePhoto) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$image = image;
//     final lOther$image = other.image;
//     if (l$image != lOther$image) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$image = image;
//     return Object.hashAll([l$image]);
//   }
// }
//
// abstract class CopyWithVariablesMutationUpdateProfilePhoto<TRes> {
//   factory CopyWithVariablesMutationUpdateProfilePhoto(
//     VariablesMutationUpdateProfilePhoto instance,
//     TRes Function(VariablesMutationUpdateProfilePhoto) then,
//   ) = _CopyWithImplVariablesMutationUpdateProfilePhoto;
//
//   factory CopyWithVariablesMutationUpdateProfilePhoto.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationUpdateProfilePhoto;
//
//   TRes call({String? image});
// }
//
// class _CopyWithImplVariablesMutationUpdateProfilePhoto<TRes>
//     implements CopyWithVariablesMutationUpdateProfilePhoto<TRes> {
//   _CopyWithImplVariablesMutationUpdateProfilePhoto(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationUpdateProfilePhoto _instance;
//
//   final TRes Function(VariablesMutationUpdateProfilePhoto) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({Object? image = _undefined}) =>
//       _then(VariablesMutationUpdateProfilePhoto._({
//         ..._instance._$data,
//         if (image != _undefined && image != null) 'image': (image as String),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationUpdateProfilePhoto<TRes>
//     implements CopyWithVariablesMutationUpdateProfilePhoto<TRes> {
//   _CopyWithStubImplVariablesMutationUpdateProfilePhoto(this._res);
//
//   TRes _res;
//
//   call({String? image}) => _res;
// }
//
// class MutationUpdateProfilePhoto {
//   MutationUpdateProfilePhoto({
//     this.updateProfilePhoto,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationUpdateProfilePhoto.fromJson(Map<String, dynamic> json) {
//     final l$updateProfilePhoto = json['updateProfilePhoto'];
//     final l$$__typename = json['__typename'];
//     return MutationUpdateProfilePhoto(
//       updateProfilePhoto: l$updateProfilePhoto == null
//           ? null
//           : MutationUpdateProfilePhotoupdateProfilePhoto.fromJson(
//               (l$updateProfilePhoto as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationUpdateProfilePhotoupdateProfilePhoto? updateProfilePhoto;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$updateProfilePhoto = updateProfilePhoto;
//     _resultData['updateProfilePhoto'] = l$updateProfilePhoto?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$updateProfilePhoto = updateProfilePhoto;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$updateProfilePhoto,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationUpdateProfilePhoto) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$updateProfilePhoto = updateProfilePhoto;
//     final lOther$updateProfilePhoto = other.updateProfilePhoto;
//     if (l$updateProfilePhoto != lOther$updateProfilePhoto) {
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
// extension UtilityExtensionMutationUpdateProfilePhoto
//     on MutationUpdateProfilePhoto {
//   CopyWithMutationUpdateProfilePhoto<MutationUpdateProfilePhoto> get copyWith =>
//       CopyWithMutationUpdateProfilePhoto(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationUpdateProfilePhoto<TRes> {
//   factory CopyWithMutationUpdateProfilePhoto(
//     MutationUpdateProfilePhoto instance,
//     TRes Function(MutationUpdateProfilePhoto) then,
//   ) = _CopyWithImplMutationUpdateProfilePhoto;
//
//   factory CopyWithMutationUpdateProfilePhoto.stub(TRes res) =
//       _CopyWithStubImplMutationUpdateProfilePhoto;
//
//   TRes call({
//     MutationUpdateProfilePhotoupdateProfilePhoto? updateProfilePhoto,
//     String? $__typename,
//   });
//   CopyWithMutationUpdateProfilePhotoupdateProfilePhoto<TRes>
//       get updateProfilePhoto;
// }
//
// class _CopyWithImplMutationUpdateProfilePhoto<TRes>
//     implements CopyWithMutationUpdateProfilePhoto<TRes> {
//   _CopyWithImplMutationUpdateProfilePhoto(
//     this._instance,
//     this._then,
//   );
//
//   final MutationUpdateProfilePhoto _instance;
//
//   final TRes Function(MutationUpdateProfilePhoto) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? updateProfilePhoto = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationUpdateProfilePhoto(
//         updateProfilePhoto: updateProfilePhoto == _undefined
//             ? _instance.updateProfilePhoto
//             : (updateProfilePhoto
//                 as MutationUpdateProfilePhotoupdateProfilePhoto?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationUpdateProfilePhotoupdateProfilePhoto<TRes>
//       get updateProfilePhoto {
//     final local$updateProfilePhoto = _instance.updateProfilePhoto;
//     return local$updateProfilePhoto == null
//         ? CopyWithMutationUpdateProfilePhotoupdateProfilePhoto.stub(
//             _then(_instance))
//         : CopyWithMutationUpdateProfilePhotoupdateProfilePhoto(
//             local$updateProfilePhoto, (e) => call(updateProfilePhoto: e));
//   }
// }
//
// class _CopyWithStubImplMutationUpdateProfilePhoto<TRes>
//     implements CopyWithMutationUpdateProfilePhoto<TRes> {
//   _CopyWithStubImplMutationUpdateProfilePhoto(this._res);
//
//   TRes _res;
//
//   call({
//     MutationUpdateProfilePhotoupdateProfilePhoto? updateProfilePhoto,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationUpdateProfilePhotoupdateProfilePhoto<TRes>
//       get updateProfilePhoto =>
//           CopyWithMutationUpdateProfilePhotoupdateProfilePhoto.stub(_res);
// }
//
// const documentNodeMutationUpdateProfilePhoto = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'UpdateProfilePhoto'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'image')),
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
//         name: NameNode(value: 'updateProfilePhoto'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'image'),
//                 value: VariableNode(name: NameNode(value: 'image')),
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
// MutationUpdateProfilePhoto _parserFnMutationUpdateProfilePhoto(
//         Map<String, dynamic> data) =>
//     MutationUpdateProfilePhoto.fromJson(data);
// typedef OnMutationCompletedMutationUpdateProfilePhoto = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationUpdateProfilePhoto?,
// );
//
// class OptionsMutationUpdateProfilePhoto
//     extends graphql.MutationOptions<MutationUpdateProfilePhoto> {
//   OptionsMutationUpdateProfilePhoto({
//     String? operationName,
//     required VariablesMutationUpdateProfilePhoto variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationUpdateProfilePhoto? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationUpdateProfilePhoto? onCompleted,
//     graphql.OnMutationUpdate<MutationUpdateProfilePhoto>? update,
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
//                         : _parserFnMutationUpdateProfilePhoto(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationUpdateProfilePhoto,
//           parserFn: _parserFnMutationUpdateProfilePhoto,
//         );
//
//   final OnMutationCompletedMutationUpdateProfilePhoto? onCompletedWithParsed;
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
// class WatchOptionsMutationUpdateProfilePhoto
//     extends graphql.WatchQueryOptions<MutationUpdateProfilePhoto> {
//   WatchOptionsMutationUpdateProfilePhoto({
//     String? operationName,
//     required VariablesMutationUpdateProfilePhoto variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationUpdateProfilePhoto? typedOptimisticResult,
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
//           document: documentNodeMutationUpdateProfilePhoto,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationUpdateProfilePhoto,
//         );
// }
//
// extension ClientExtensionMutationUpdateProfilePhoto on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationUpdateProfilePhoto>>
//       mutateUpdateProfilePhoto(
//               OptionsMutationUpdateProfilePhoto options) async =>
//           await this.mutate(options);
//   graphql.ObservableQuery<MutationUpdateProfilePhoto>
//       watchMutationUpdateProfilePhoto(
//               WatchOptionsMutationUpdateProfilePhoto options) =>
//           this.watchMutation(options);
// }
//
// class MutationUpdateProfilePhotoHookResult {
//   MutationUpdateProfilePhotoHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationUpdateProfilePhoto runMutation;
//
//   final graphql.QueryResult<MutationUpdateProfilePhoto> result;
// }
//
// MutationUpdateProfilePhotoHookResult useMutationUpdateProfilePhoto(
//     [WidgetOptionsMutationUpdateProfilePhoto? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationUpdateProfilePhoto());
//   return MutationUpdateProfilePhotoHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationUpdateProfilePhoto>
//     useWatchMutationUpdateProfilePhoto(
//             WatchOptionsMutationUpdateProfilePhoto options) =>
//         graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationUpdateProfilePhoto
//     extends graphql.MutationOptions<MutationUpdateProfilePhoto> {
//   WidgetOptionsMutationUpdateProfilePhoto({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationUpdateProfilePhoto? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationUpdateProfilePhoto? onCompleted,
//     graphql.OnMutationUpdate<MutationUpdateProfilePhoto>? update,
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
//                         : _parserFnMutationUpdateProfilePhoto(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationUpdateProfilePhoto,
//           parserFn: _parserFnMutationUpdateProfilePhoto,
//         );
//
//   final OnMutationCompletedMutationUpdateProfilePhoto? onCompletedWithParsed;
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
// typedef RunMutationMutationUpdateProfilePhoto
//     = graphql.MultiSourceResult<MutationUpdateProfilePhoto> Function(
//   VariablesMutationUpdateProfilePhoto, {
//   Object? optimisticResult,
//   MutationUpdateProfilePhoto? typedOptimisticResult,
// });
// typedef BuilderMutationUpdateProfilePhoto = widgets.Widget Function(
//   RunMutationMutationUpdateProfilePhoto,
//   graphql.QueryResult<MutationUpdateProfilePhoto>?,
// );
//
// class MutationUpdateProfilePhotoWidget
//     extends graphql_flutter.Mutation<MutationUpdateProfilePhoto> {
//   MutationUpdateProfilePhotoWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationUpdateProfilePhoto? options,
//     required BuilderMutationUpdateProfilePhoto builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationUpdateProfilePhoto(),
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
// class MutationUpdateProfilePhotoupdateProfilePhoto {
//   MutationUpdateProfilePhotoupdateProfilePhoto({
//     required this.status,
//     required this.error,
//     this.message,
//     this.$__typename = 'Result',
//   });
//
//   factory MutationUpdateProfilePhotoupdateProfilePhoto.fromJson(
//       Map<String, dynamic> json) {
//     final l$status = json['status'];
//     final l$error = json['error'];
//     final l$message = json['message'];
//     final l$$__typename = json['__typename'];
//     return MutationUpdateProfilePhotoupdateProfilePhoto(
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
//     if (!(other is MutationUpdateProfilePhotoupdateProfilePhoto) ||
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
// extension UtilityExtensionMutationUpdateProfilePhotoupdateProfilePhoto
//     on MutationUpdateProfilePhotoupdateProfilePhoto {
//   CopyWithMutationUpdateProfilePhotoupdateProfilePhoto<
//           MutationUpdateProfilePhotoupdateProfilePhoto>
//       get copyWith => CopyWithMutationUpdateProfilePhotoupdateProfilePhoto(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationUpdateProfilePhotoupdateProfilePhoto<TRes> {
//   factory CopyWithMutationUpdateProfilePhotoupdateProfilePhoto(
//     MutationUpdateProfilePhotoupdateProfilePhoto instance,
//     TRes Function(MutationUpdateProfilePhotoupdateProfilePhoto) then,
//   ) = _CopyWithImplMutationUpdateProfilePhotoupdateProfilePhoto;
//
//   factory CopyWithMutationUpdateProfilePhotoupdateProfilePhoto.stub(TRes res) =
//       _CopyWithStubImplMutationUpdateProfilePhotoupdateProfilePhoto;
//
//   TRes call({
//     String? status,
//     int? error,
//     String? message,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationUpdateProfilePhotoupdateProfilePhoto<TRes>
//     implements CopyWithMutationUpdateProfilePhotoupdateProfilePhoto<TRes> {
//   _CopyWithImplMutationUpdateProfilePhotoupdateProfilePhoto(
//     this._instance,
//     this._then,
//   );
//
//   final MutationUpdateProfilePhotoupdateProfilePhoto _instance;
//
//   final TRes Function(MutationUpdateProfilePhotoupdateProfilePhoto) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? status = _undefined,
//     Object? error = _undefined,
//     Object? message = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationUpdateProfilePhotoupdateProfilePhoto(
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
// class _CopyWithStubImplMutationUpdateProfilePhotoupdateProfilePhoto<TRes>
//     implements CopyWithMutationUpdateProfilePhotoupdateProfilePhoto<TRes> {
//   _CopyWithStubImplMutationUpdateProfilePhotoupdateProfilePhoto(this._res);
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
// class VariablesMutationUpdatePassword {
//   factory VariablesMutationUpdatePassword({
//     required String oldPassword,
//     required String password,
//     required String confirmPassword,
//   }) =>
//       VariablesMutationUpdatePassword._({
//         r'oldPassword': oldPassword,
//         r'password': password,
//         r'confirmPassword': confirmPassword,
//       });
//
//   VariablesMutationUpdatePassword._(this._$data);
//
//   factory VariablesMutationUpdatePassword.fromJson(Map<String, dynamic> data) {
//     final result$data = <String, dynamic>{};
//     final l$oldPassword = data['oldPassword'];
//     result$data['oldPassword'] = (l$oldPassword as String);
//     final l$password = data['password'];
//     result$data['password'] = (l$password as String);
//     final l$confirmPassword = data['confirmPassword'];
//     result$data['confirmPassword'] = (l$confirmPassword as String);
//     return VariablesMutationUpdatePassword._(result$data);
//   }
//
//   Map<String, dynamic> _$data;
//
//   String get oldPassword => (_$data['oldPassword'] as String);
//
//   String get password => (_$data['password'] as String);
//
//   String get confirmPassword => (_$data['confirmPassword'] as String);
//
//   Map<String, dynamic> toJson() {
//     final result$data = <String, dynamic>{};
//     final l$oldPassword = oldPassword;
//     result$data['oldPassword'] = l$oldPassword;
//     final l$password = password;
//     result$data['password'] = l$password;
//     final l$confirmPassword = confirmPassword;
//     result$data['confirmPassword'] = l$confirmPassword;
//     return result$data;
//   }
//
//   CopyWithVariablesMutationUpdatePassword<VariablesMutationUpdatePassword>
//       get copyWith => CopyWithVariablesMutationUpdatePassword(
//             this,
//             (i) => i,
//           );
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is VariablesMutationUpdatePassword) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$oldPassword = oldPassword;
//     final lOther$oldPassword = other.oldPassword;
//     if (l$oldPassword != lOther$oldPassword) {
//       return false;
//     }
//     final l$password = password;
//     final lOther$password = other.password;
//     if (l$password != lOther$password) {
//       return false;
//     }
//     final l$confirmPassword = confirmPassword;
//     final lOther$confirmPassword = other.confirmPassword;
//     if (l$confirmPassword != lOther$confirmPassword) {
//       return false;
//     }
//     return true;
//   }
//
//   @override
//   int get hashCode {
//     final l$oldPassword = oldPassword;
//     final l$password = password;
//     final l$confirmPassword = confirmPassword;
//     return Object.hashAll([
//       l$oldPassword,
//       l$password,
//       l$confirmPassword,
//     ]);
//   }
// }
//
// abstract class CopyWithVariablesMutationUpdatePassword<TRes> {
//   factory CopyWithVariablesMutationUpdatePassword(
//     VariablesMutationUpdatePassword instance,
//     TRes Function(VariablesMutationUpdatePassword) then,
//   ) = _CopyWithImplVariablesMutationUpdatePassword;
//
//   factory CopyWithVariablesMutationUpdatePassword.stub(TRes res) =
//       _CopyWithStubImplVariablesMutationUpdatePassword;
//
//   TRes call({
//     String? oldPassword,
//     String? password,
//     String? confirmPassword,
//   });
// }
//
// class _CopyWithImplVariablesMutationUpdatePassword<TRes>
//     implements CopyWithVariablesMutationUpdatePassword<TRes> {
//   _CopyWithImplVariablesMutationUpdatePassword(
//     this._instance,
//     this._then,
//   );
//
//   final VariablesMutationUpdatePassword _instance;
//
//   final TRes Function(VariablesMutationUpdatePassword) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? oldPassword = _undefined,
//     Object? password = _undefined,
//     Object? confirmPassword = _undefined,
//   }) =>
//       _then(VariablesMutationUpdatePassword._({
//         ..._instance._$data,
//         if (oldPassword != _undefined && oldPassword != null)
//           'oldPassword': (oldPassword as String),
//         if (password != _undefined && password != null)
//           'password': (password as String),
//         if (confirmPassword != _undefined && confirmPassword != null)
//           'confirmPassword': (confirmPassword as String),
//       }));
// }
//
// class _CopyWithStubImplVariablesMutationUpdatePassword<TRes>
//     implements CopyWithVariablesMutationUpdatePassword<TRes> {
//   _CopyWithStubImplVariablesMutationUpdatePassword(this._res);
//
//   TRes _res;
//
//   call({
//     String? oldPassword,
//     String? password,
//     String? confirmPassword,
//   }) =>
//       _res;
// }
//
// class MutationUpdatePassword {
//   MutationUpdatePassword({
//     required this.updatePassword,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationUpdatePassword.fromJson(Map<String, dynamic> json) {
//     final l$updatePassword = json['updatePassword'];
//     final l$$__typename = json['__typename'];
//     return MutationUpdatePassword(
//       updatePassword: MutationUpdatePasswordupdatePassword.fromJson(
//           (l$updatePassword as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationUpdatePasswordupdatePassword updatePassword;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$updatePassword = updatePassword;
//     _resultData['updatePassword'] = l$updatePassword.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$updatePassword = updatePassword;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$updatePassword,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationUpdatePassword) ||
//         runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$updatePassword = updatePassword;
//     final lOther$updatePassword = other.updatePassword;
//     if (l$updatePassword != lOther$updatePassword) {
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
// extension UtilityExtensionMutationUpdatePassword on MutationUpdatePassword {
//   CopyWithMutationUpdatePassword<MutationUpdatePassword> get copyWith =>
//       CopyWithMutationUpdatePassword(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationUpdatePassword<TRes> {
//   factory CopyWithMutationUpdatePassword(
//     MutationUpdatePassword instance,
//     TRes Function(MutationUpdatePassword) then,
//   ) = _CopyWithImplMutationUpdatePassword;
//
//   factory CopyWithMutationUpdatePassword.stub(TRes res) =
//       _CopyWithStubImplMutationUpdatePassword;
//
//   TRes call({
//     MutationUpdatePasswordupdatePassword? updatePassword,
//     String? $__typename,
//   });
//   CopyWithMutationUpdatePasswordupdatePassword<TRes> get updatePassword;
// }
//
// class _CopyWithImplMutationUpdatePassword<TRes>
//     implements CopyWithMutationUpdatePassword<TRes> {
//   _CopyWithImplMutationUpdatePassword(
//     this._instance,
//     this._then,
//   );
//
//   final MutationUpdatePassword _instance;
//
//   final TRes Function(MutationUpdatePassword) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? updatePassword = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationUpdatePassword(
//         updatePassword: updatePassword == _undefined || updatePassword == null
//             ? _instance.updatePassword
//             : (updatePassword as MutationUpdatePasswordupdatePassword),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationUpdatePasswordupdatePassword<TRes> get updatePassword {
//     final local$updatePassword = _instance.updatePassword;
//     return CopyWithMutationUpdatePasswordupdatePassword(
//         local$updatePassword, (e) => call(updatePassword: e));
//   }
// }
//
// class _CopyWithStubImplMutationUpdatePassword<TRes>
//     implements CopyWithMutationUpdatePassword<TRes> {
//   _CopyWithStubImplMutationUpdatePassword(this._res);
//
//   TRes _res;
//
//   call({
//     MutationUpdatePasswordupdatePassword? updatePassword,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationUpdatePasswordupdatePassword<TRes> get updatePassword =>
//       CopyWithMutationUpdatePasswordupdatePassword.stub(_res);
// }
//
// const documentNodeMutationUpdatePassword = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'UpdatePassword'),
//     variableDefinitions: [
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'oldPassword')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'password')),
//         type: NamedTypeNode(
//           name: NameNode(value: 'String'),
//           isNonNull: true,
//         ),
//         defaultValue: DefaultValueNode(value: null),
//         directives: [],
//       ),
//       VariableDefinitionNode(
//         variable: VariableNode(name: NameNode(value: 'confirmPassword')),
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
//         name: NameNode(value: 'updatePassword'),
//         alias: null,
//         arguments: [
//           ArgumentNode(
//             name: NameNode(value: 'input'),
//             value: ObjectValueNode(fields: [
//               ObjectFieldNode(
//                 name: NameNode(value: 'old_password'),
//                 value: VariableNode(name: NameNode(value: 'oldPassword')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'password'),
//                 value: VariableNode(name: NameNode(value: 'password')),
//               ),
//               ObjectFieldNode(
//                 name: NameNode(value: 'password_confirmation'),
//                 value: VariableNode(name: NameNode(value: 'confirmPassword')),
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
// MutationUpdatePassword _parserFnMutationUpdatePassword(
//         Map<String, dynamic> data) =>
//     MutationUpdatePassword.fromJson(data);
// typedef OnMutationCompletedMutationUpdatePassword = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationUpdatePassword?,
// );
//
// class OptionsMutationUpdatePassword
//     extends graphql.MutationOptions<MutationUpdatePassword> {
//   OptionsMutationUpdatePassword({
//     String? operationName,
//     required VariablesMutationUpdatePassword variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationUpdatePassword? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationUpdatePassword? onCompleted,
//     graphql.OnMutationUpdate<MutationUpdatePassword>? update,
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
//                     data == null ? null : _parserFnMutationUpdatePassword(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationUpdatePassword,
//           parserFn: _parserFnMutationUpdatePassword,
//         );
//
//   final OnMutationCompletedMutationUpdatePassword? onCompletedWithParsed;
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
// class WatchOptionsMutationUpdatePassword
//     extends graphql.WatchQueryOptions<MutationUpdatePassword> {
//   WatchOptionsMutationUpdatePassword({
//     String? operationName,
//     required VariablesMutationUpdatePassword variables,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationUpdatePassword? typedOptimisticResult,
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
//           document: documentNodeMutationUpdatePassword,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationUpdatePassword,
//         );
// }
//
// extension ClientExtensionMutationUpdatePassword on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationUpdatePassword>> mutateUpdatePassword(
//           OptionsMutationUpdatePassword options) async =>
//       await this.mutate(options);
//   graphql.ObservableQuery<MutationUpdatePassword> watchMutationUpdatePassword(
//           WatchOptionsMutationUpdatePassword options) =>
//       this.watchMutation(options);
// }
//
// class MutationUpdatePasswordHookResult {
//   MutationUpdatePasswordHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationUpdatePassword runMutation;
//
//   final graphql.QueryResult<MutationUpdatePassword> result;
// }
//
// MutationUpdatePasswordHookResult useMutationUpdatePassword(
//     [WidgetOptionsMutationUpdatePassword? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationUpdatePassword());
//   return MutationUpdatePasswordHookResult(
//     (variables, {optimisticResult, typedOptimisticResult}) =>
//         result.runMutation(
//       variables.toJson(),
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationUpdatePassword> useWatchMutationUpdatePassword(
//         WatchOptionsMutationUpdatePassword options) =>
//     graphql_flutter.useWatchMutation(options);
//
// class WidgetOptionsMutationUpdatePassword
//     extends graphql.MutationOptions<MutationUpdatePassword> {
//   WidgetOptionsMutationUpdatePassword({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationUpdatePassword? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationUpdatePassword? onCompleted,
//     graphql.OnMutationUpdate<MutationUpdatePassword>? update,
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
//                     data == null ? null : _parserFnMutationUpdatePassword(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationUpdatePassword,
//           parserFn: _parserFnMutationUpdatePassword,
//         );
//
//   final OnMutationCompletedMutationUpdatePassword? onCompletedWithParsed;
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
// typedef RunMutationMutationUpdatePassword
//     = graphql.MultiSourceResult<MutationUpdatePassword> Function(
//   VariablesMutationUpdatePassword, {
//   Object? optimisticResult,
//   MutationUpdatePassword? typedOptimisticResult,
// });
// typedef BuilderMutationUpdatePassword = widgets.Widget Function(
//   RunMutationMutationUpdatePassword,
//   graphql.QueryResult<MutationUpdatePassword>?,
// );
//
// class MutationUpdatePasswordWidget
//     extends graphql_flutter.Mutation<MutationUpdatePassword> {
//   MutationUpdatePasswordWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationUpdatePassword? options,
//     required BuilderMutationUpdatePassword builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationUpdatePassword(),
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
// class MutationUpdatePasswordupdatePassword {
//   MutationUpdatePasswordupdatePassword({
//     required this.status,
//     required this.error,
//     this.message,
//     this.$__typename = 'Result',
//   });
//
//   factory MutationUpdatePasswordupdatePassword.fromJson(
//       Map<String, dynamic> json) {
//     final l$status = json['status'];
//     final l$error = json['error'];
//     final l$message = json['message'];
//     final l$$__typename = json['__typename'];
//     return MutationUpdatePasswordupdatePassword(
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
//     if (!(other is MutationUpdatePasswordupdatePassword) ||
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
// extension UtilityExtensionMutationUpdatePasswordupdatePassword
//     on MutationUpdatePasswordupdatePassword {
//   CopyWithMutationUpdatePasswordupdatePassword<
//           MutationUpdatePasswordupdatePassword>
//       get copyWith => CopyWithMutationUpdatePasswordupdatePassword(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationUpdatePasswordupdatePassword<TRes> {
//   factory CopyWithMutationUpdatePasswordupdatePassword(
//     MutationUpdatePasswordupdatePassword instance,
//     TRes Function(MutationUpdatePasswordupdatePassword) then,
//   ) = _CopyWithImplMutationUpdatePasswordupdatePassword;
//
//   factory CopyWithMutationUpdatePasswordupdatePassword.stub(TRes res) =
//       _CopyWithStubImplMutationUpdatePasswordupdatePassword;
//
//   TRes call({
//     String? status,
//     int? error,
//     String? message,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationUpdatePasswordupdatePassword<TRes>
//     implements CopyWithMutationUpdatePasswordupdatePassword<TRes> {
//   _CopyWithImplMutationUpdatePasswordupdatePassword(
//     this._instance,
//     this._then,
//   );
//
//   final MutationUpdatePasswordupdatePassword _instance;
//
//   final TRes Function(MutationUpdatePasswordupdatePassword) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? status = _undefined,
//     Object? error = _undefined,
//     Object? message = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationUpdatePasswordupdatePassword(
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
// class _CopyWithStubImplMutationUpdatePasswordupdatePassword<TRes>
//     implements CopyWithMutationUpdatePasswordupdatePassword<TRes> {
//   _CopyWithStubImplMutationUpdatePasswordupdatePassword(this._res);
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
// class MutationDeleteAccount {
//   MutationDeleteAccount({
//     required this.deleteAccount,
//     this.$__typename = 'Mutation',
//   });
//
//   factory MutationDeleteAccount.fromJson(Map<String, dynamic> json) {
//     final l$deleteAccount = json['deleteAccount'];
//     final l$$__typename = json['__typename'];
//     return MutationDeleteAccount(
//       deleteAccount: MutationDeleteAccountdeleteAccount.fromJson(
//           (l$deleteAccount as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final MutationDeleteAccountdeleteAccount deleteAccount;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$deleteAccount = deleteAccount;
//     _resultData['deleteAccount'] = l$deleteAccount.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$deleteAccount = deleteAccount;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$deleteAccount,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is MutationDeleteAccount) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$deleteAccount = deleteAccount;
//     final lOther$deleteAccount = other.deleteAccount;
//     if (l$deleteAccount != lOther$deleteAccount) {
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
// extension UtilityExtensionMutationDeleteAccount on MutationDeleteAccount {
//   CopyWithMutationDeleteAccount<MutationDeleteAccount> get copyWith =>
//       CopyWithMutationDeleteAccount(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithMutationDeleteAccount<TRes> {
//   factory CopyWithMutationDeleteAccount(
//     MutationDeleteAccount instance,
//     TRes Function(MutationDeleteAccount) then,
//   ) = _CopyWithImplMutationDeleteAccount;
//
//   factory CopyWithMutationDeleteAccount.stub(TRes res) =
//       _CopyWithStubImplMutationDeleteAccount;
//
//   TRes call({
//     MutationDeleteAccountdeleteAccount? deleteAccount,
//     String? $__typename,
//   });
//   CopyWithMutationDeleteAccountdeleteAccount<TRes> get deleteAccount;
// }
//
// class _CopyWithImplMutationDeleteAccount<TRes>
//     implements CopyWithMutationDeleteAccount<TRes> {
//   _CopyWithImplMutationDeleteAccount(
//     this._instance,
//     this._then,
//   );
//
//   final MutationDeleteAccount _instance;
//
//   final TRes Function(MutationDeleteAccount) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? deleteAccount = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationDeleteAccount(
//         deleteAccount: deleteAccount == _undefined || deleteAccount == null
//             ? _instance.deleteAccount
//             : (deleteAccount as MutationDeleteAccountdeleteAccount),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithMutationDeleteAccountdeleteAccount<TRes> get deleteAccount {
//     final local$deleteAccount = _instance.deleteAccount;
//     return CopyWithMutationDeleteAccountdeleteAccount(
//         local$deleteAccount, (e) => call(deleteAccount: e));
//   }
// }
//
// class _CopyWithStubImplMutationDeleteAccount<TRes>
//     implements CopyWithMutationDeleteAccount<TRes> {
//   _CopyWithStubImplMutationDeleteAccount(this._res);
//
//   TRes _res;
//
//   call({
//     MutationDeleteAccountdeleteAccount? deleteAccount,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithMutationDeleteAccountdeleteAccount<TRes> get deleteAccount =>
//       CopyWithMutationDeleteAccountdeleteAccount.stub(_res);
// }
//
// const documentNodeMutationDeleteAccount = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.mutation,
//     name: NameNode(value: 'DeleteAccount'),
//     variableDefinitions: [],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'deleteAccount'),
//         alias: null,
//         arguments: [],
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
// MutationDeleteAccount _parserFnMutationDeleteAccount(
//         Map<String, dynamic> data) =>
//     MutationDeleteAccount.fromJson(data);
// typedef OnMutationCompletedMutationDeleteAccount = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   MutationDeleteAccount?,
// );
//
// class OptionsMutationDeleteAccount
//     extends graphql.MutationOptions<MutationDeleteAccount> {
//   OptionsMutationDeleteAccount({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationDeleteAccount? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationDeleteAccount? onCompleted,
//     graphql.OnMutationUpdate<MutationDeleteAccount>? update,
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
//                     data == null ? null : _parserFnMutationDeleteAccount(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationDeleteAccount,
//           parserFn: _parserFnMutationDeleteAccount,
//         );
//
//   final OnMutationCompletedMutationDeleteAccount? onCompletedWithParsed;
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
// class WatchOptionsMutationDeleteAccount
//     extends graphql.WatchQueryOptions<MutationDeleteAccount> {
//   WatchOptionsMutationDeleteAccount({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationDeleteAccount? typedOptimisticResult,
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
//           document: documentNodeMutationDeleteAccount,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnMutationDeleteAccount,
//         );
// }
//
// extension ClientExtensionMutationDeleteAccount on graphql.GraphQLClient {
//   Future<graphql.QueryResult<MutationDeleteAccount>> mutateDeleteAccount(
//           [OptionsMutationDeleteAccount? options]) async =>
//       await this.mutate(options ?? OptionsMutationDeleteAccount());
//   graphql.ObservableQuery<MutationDeleteAccount> watchMutationDeleteAccount(
//           [WatchOptionsMutationDeleteAccount? options]) =>
//       this.watchMutation(options ?? WatchOptionsMutationDeleteAccount());
// }
//
// class MutationDeleteAccountHookResult {
//   MutationDeleteAccountHookResult(
//     this.runMutation,
//     this.result,
//   );
//
//   final RunMutationMutationDeleteAccount runMutation;
//
//   final graphql.QueryResult<MutationDeleteAccount> result;
// }
//
// MutationDeleteAccountHookResult useMutationDeleteAccount(
//     [WidgetOptionsMutationDeleteAccount? options]) {
//   final result = graphql_flutter
//       .useMutation(options ?? WidgetOptionsMutationDeleteAccount());
//   return MutationDeleteAccountHookResult(
//     ({optimisticResult, typedOptimisticResult}) => result.runMutation(
//       const {},
//       optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
//     ),
//     result.result,
//   );
// }
//
// graphql.ObservableQuery<MutationDeleteAccount> useWatchMutationDeleteAccount(
//         [WatchOptionsMutationDeleteAccount? options]) =>
//     graphql_flutter
//         .useWatchMutation(options ?? WatchOptionsMutationDeleteAccount());
//
// class WidgetOptionsMutationDeleteAccount
//     extends graphql.MutationOptions<MutationDeleteAccount> {
//   WidgetOptionsMutationDeleteAccount({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     MutationDeleteAccount? typedOptimisticResult,
//     graphql.Context? context,
//     OnMutationCompletedMutationDeleteAccount? onCompleted,
//     graphql.OnMutationUpdate<MutationDeleteAccount>? update,
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
//                     data == null ? null : _parserFnMutationDeleteAccount(data),
//                   ),
//           update: update,
//           onError: onError,
//           document: documentNodeMutationDeleteAccount,
//           parserFn: _parserFnMutationDeleteAccount,
//         );
//
//   final OnMutationCompletedMutationDeleteAccount? onCompletedWithParsed;
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
// typedef RunMutationMutationDeleteAccount
//     = graphql.MultiSourceResult<MutationDeleteAccount> Function({
//   Object? optimisticResult,
//   MutationDeleteAccount? typedOptimisticResult,
// });
// typedef BuilderMutationDeleteAccount = widgets.Widget Function(
//   RunMutationMutationDeleteAccount,
//   graphql.QueryResult<MutationDeleteAccount>?,
// );
//
// class MutationDeleteAccountWidget
//     extends graphql_flutter.Mutation<MutationDeleteAccount> {
//   MutationDeleteAccountWidget({
//     widgets.Key? key,
//     WidgetOptionsMutationDeleteAccount? options,
//     required BuilderMutationDeleteAccount builder,
//   }) : super(
//           key: key,
//           options: options ?? WidgetOptionsMutationDeleteAccount(),
//           builder: (
//             run,
//             result,
//           ) =>
//               builder(
//             ({
//               optimisticResult,
//               typedOptimisticResult,
//             }) =>
//                 run(
//               const {},
//               optimisticResult:
//                   optimisticResult ?? typedOptimisticResult?.toJson(),
//             ),
//             result,
//           ),
//         );
// }
//
// class MutationDeleteAccountdeleteAccount {
//   MutationDeleteAccountdeleteAccount({
//     required this.status,
//     required this.error,
//     this.message,
//     this.$__typename = 'Result',
//   });
//
//   factory MutationDeleteAccountdeleteAccount.fromJson(
//       Map<String, dynamic> json) {
//     final l$status = json['status'];
//     final l$error = json['error'];
//     final l$message = json['message'];
//     final l$$__typename = json['__typename'];
//     return MutationDeleteAccountdeleteAccount(
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
//     if (!(other is MutationDeleteAccountdeleteAccount) ||
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
// extension UtilityExtensionMutationDeleteAccountdeleteAccount
//     on MutationDeleteAccountdeleteAccount {
//   CopyWithMutationDeleteAccountdeleteAccount<MutationDeleteAccountdeleteAccount>
//       get copyWith => CopyWithMutationDeleteAccountdeleteAccount(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithMutationDeleteAccountdeleteAccount<TRes> {
//   factory CopyWithMutationDeleteAccountdeleteAccount(
//     MutationDeleteAccountdeleteAccount instance,
//     TRes Function(MutationDeleteAccountdeleteAccount) then,
//   ) = _CopyWithImplMutationDeleteAccountdeleteAccount;
//
//   factory CopyWithMutationDeleteAccountdeleteAccount.stub(TRes res) =
//       _CopyWithStubImplMutationDeleteAccountdeleteAccount;
//
//   TRes call({
//     String? status,
//     int? error,
//     String? message,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplMutationDeleteAccountdeleteAccount<TRes>
//     implements CopyWithMutationDeleteAccountdeleteAccount<TRes> {
//   _CopyWithImplMutationDeleteAccountdeleteAccount(
//     this._instance,
//     this._then,
//   );
//
//   final MutationDeleteAccountdeleteAccount _instance;
//
//   final TRes Function(MutationDeleteAccountdeleteAccount) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? status = _undefined,
//     Object? error = _undefined,
//     Object? message = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(MutationDeleteAccountdeleteAccount(
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
// class _CopyWithStubImplMutationDeleteAccountdeleteAccount<TRes>
//     implements CopyWithMutationDeleteAccountdeleteAccount<TRes> {
//   _CopyWithStubImplMutationDeleteAccountdeleteAccount(this._res);
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
