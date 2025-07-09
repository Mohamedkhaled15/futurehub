// import 'dart:async';
// import 'package:flutter/widgets.dart' as widgets;
// import 'package:gql/ast.dart';
// import 'package:graphql/client.dart' as graphql;
// import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
//
// class QueryInfo {
//   QueryInfo({
//     required this.aboutUs,
//     this.questions,
//     this.$__typename = 'Query',
//   });
//
//   factory QueryInfo.fromJson(Map<String, dynamic> json) {
//     final l$aboutUs = json['aboutUs'];
//     final l$questions = json['questions'];
//     final l$$__typename = json['__typename'];
//     return QueryInfo(
//       aboutUs: QueryInfoaboutUs.fromJson((l$aboutUs as Map<String, dynamic>)),
//       questions: l$questions == null
//           ? null
//           : QueryInfoquestions.fromJson((l$questions as Map<String, dynamic>)),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryInfoaboutUs aboutUs;
//
//   final QueryInfoquestions? questions;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$aboutUs = aboutUs;
//     _resultData['aboutUs'] = l$aboutUs.toJson();
//     final l$questions = questions;
//     _resultData['questions'] = l$questions?.toJson();
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$aboutUs = aboutUs;
//     final l$questions = questions;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$aboutUs,
//       l$questions,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryInfo) || runtimeType != other.runtimeType) {
//       return false;
//     }
//     final l$aboutUs = aboutUs;
//     final lOther$aboutUs = other.aboutUs;
//     if (l$aboutUs != lOther$aboutUs) {
//       return false;
//     }
//     final l$questions = questions;
//     final lOther$questions = other.questions;
//     if (l$questions != lOther$questions) {
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
// extension UtilityExtensionQueryInfo on QueryInfo {
//   CopyWithQueryInfo<QueryInfo> get copyWith => CopyWithQueryInfo(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryInfo<TRes> {
//   factory CopyWithQueryInfo(
//     QueryInfo instance,
//     TRes Function(QueryInfo) then,
//   ) = _CopyWithImplQueryInfo;
//
//   factory CopyWithQueryInfo.stub(TRes res) = _CopyWithStubImplQueryInfo;
//
//   TRes call({
//     QueryInfoaboutUs? aboutUs,
//     QueryInfoquestions? questions,
//     String? $__typename,
//   });
//   CopyWithQueryInfoaboutUs<TRes> get aboutUs;
//   CopyWithQueryInfoquestions<TRes> get questions;
// }
//
// class _CopyWithImplQueryInfo<TRes> implements CopyWithQueryInfo<TRes> {
//   _CopyWithImplQueryInfo(
//     this._instance,
//     this._then,
//   );
//
//   final QueryInfo _instance;
//
//   final TRes Function(QueryInfo) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? aboutUs = _undefined,
//     Object? questions = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryInfo(
//         aboutUs: aboutUs == _undefined || aboutUs == null
//             ? _instance.aboutUs
//             : (aboutUs as QueryInfoaboutUs),
//         questions: questions == _undefined
//             ? _instance.questions
//             : (questions as QueryInfoquestions?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryInfoaboutUs<TRes> get aboutUs {
//     final local$aboutUs = _instance.aboutUs;
//     return CopyWithQueryInfoaboutUs(local$aboutUs, (e) => call(aboutUs: e));
//   }
//
//   CopyWithQueryInfoquestions<TRes> get questions {
//     final local$questions = _instance.questions;
//     return local$questions == null
//         ? CopyWithQueryInfoquestions.stub(_then(_instance))
//         : CopyWithQueryInfoquestions(
//             local$questions, (e) => call(questions: e));
//   }
// }
//
// class _CopyWithStubImplQueryInfo<TRes> implements CopyWithQueryInfo<TRes> {
//   _CopyWithStubImplQueryInfo(this._res);
//
//   TRes _res;
//
//   call({
//     QueryInfoaboutUs? aboutUs,
//     QueryInfoquestions? questions,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryInfoaboutUs<TRes> get aboutUs =>
//       CopyWithQueryInfoaboutUs.stub(_res);
//
//   CopyWithQueryInfoquestions<TRes> get questions =>
//       CopyWithQueryInfoquestions.stub(_res);
// }
//
// const documentNodeQueryInfo = DocumentNode(definitions: [
//   OperationDefinitionNode(
//     type: OperationType.query,
//     name: NameNode(value: 'Info'),
//     variableDefinitions: [],
//     directives: [],
//     selectionSet: SelectionSetNode(selections: [
//       FieldNode(
//         name: NameNode(value: 'aboutUs'),
//         alias: null,
//         arguments: [],
//         directives: [],
//         selectionSet: SelectionSetNode(selections: [
//           FieldNode(
//             name: NameNode(value: 'email'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'phone'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'about'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'terms_condition'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'privacy'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'excel_user_upload_example'),
//             alias: null,
//             arguments: [],
//             directives: [],
//             selectionSet: null,
//           ),
//           FieldNode(
//             name: NameNode(value: 'imagePath'),
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
//         name: NameNode(value: 'questions'),
//         alias: null,
//         arguments: [],
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
//                 name: NameNode(value: 'firstItem'),
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
//                 name: NameNode(value: 'lastItem'),
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
//                 name: NameNode(value: 'description'),
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
// QueryInfo _parserFnQueryInfo(Map<String, dynamic> data) =>
//     QueryInfo.fromJson(data);
// typedef OnQueryCompleteQueryInfo = FutureOr<void> Function(
//   Map<String, dynamic>?,
//   QueryInfo?,
// );
//
// class OptionsQueryInfo extends graphql.QueryOptions<QueryInfo> {
//   OptionsQueryInfo({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryInfo? typedOptimisticResult,
//     Duration? pollInterval,
//     graphql.Context? context,
//     OnQueryCompleteQueryInfo? onComplete,
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
//                     data == null ? null : _parserFnQueryInfo(data),
//                   ),
//           onError: onError,
//           document: documentNodeQueryInfo,
//           parserFn: _parserFnQueryInfo,
//         );
//
//   final OnQueryCompleteQueryInfo? onCompleteWithParsed;
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
// class WatchOptionsQueryInfo extends graphql.WatchQueryOptions<QueryInfo> {
//   WatchOptionsQueryInfo({
//     String? operationName,
//     graphql.FetchPolicy? fetchPolicy,
//     graphql.ErrorPolicy? errorPolicy,
//     graphql.CacheRereadPolicy? cacheRereadPolicy,
//     Object? optimisticResult,
//     QueryInfo? typedOptimisticResult,
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
//           document: documentNodeQueryInfo,
//           pollInterval: pollInterval,
//           eagerlyFetchResults: eagerlyFetchResults,
//           carryForwardDataOnException: carryForwardDataOnException,
//           fetchResults: fetchResults,
//           parserFn: _parserFnQueryInfo,
//         );
// }
//
// class FetchMoreOptionsQueryInfo extends graphql.FetchMoreOptions {
//   FetchMoreOptionsQueryInfo({required graphql.UpdateQuery updateQuery})
//       : super(
//           updateQuery: updateQuery,
//           document: documentNodeQueryInfo,
//         );
// }
//
// extension ClientExtensionQueryInfo on graphql.GraphQLClient {
//   Future<graphql.QueryResult<QueryInfo>> queryInfo(
//           [OptionsQueryInfo? options]) async =>
//       await this.query(options ?? OptionsQueryInfo());
//   graphql.ObservableQuery<QueryInfo> watchQueryInfo(
//           [WatchOptionsQueryInfo? options]) =>
//       this.watchQuery(options ?? WatchOptionsQueryInfo());
//   void writeQueryInfo({
//     required QueryInfo data,
//     bool broadcast = true,
//   }) =>
//       this.writeQuery(
//         graphql.Request(
//             operation: graphql.Operation(document: documentNodeQueryInfo)),
//         data: data.toJson(),
//         broadcast: broadcast,
//       );
//   QueryInfo? readQueryInfo({bool optimistic = true}) {
//     final result = this.readQuery(
//       graphql.Request(
//           operation: graphql.Operation(document: documentNodeQueryInfo)),
//       optimistic: optimistic,
//     );
//     return result == null ? null : QueryInfo.fromJson(result);
//   }
// }
//
// graphql_flutter.QueryHookResult<QueryInfo> useQueryInfo(
//         [OptionsQueryInfo? options]) =>
//     graphql_flutter.useQuery(options ?? OptionsQueryInfo());
// graphql.ObservableQuery<QueryInfo> useWatchQueryInfo(
//         [WatchOptionsQueryInfo? options]) =>
//     graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryInfo());
//
// class QueryInfoWidget extends graphql_flutter.Query<QueryInfo> {
//   QueryInfoWidget({
//     widgets.Key? key,
//     OptionsQueryInfo? options,
//     required graphql_flutter.QueryBuilder<QueryInfo> builder,
//   }) : super(
//           key: key,
//           options: options ?? OptionsQueryInfo(),
//           builder: builder,
//         );
// }
//
// class QueryInfoaboutUs {
//   QueryInfoaboutUs({
//     this.email,
//     this.phone,
//     this.about,
//     this.terms_condition,
//     this.privacy,
//     this.excel_user_upload_example,
//     this.imagePath,
//     this.$__typename = 'Setting',
//   });
//
//   factory QueryInfoaboutUs.fromJson(Map<String, dynamic> json) {
//     final l$email = json['email'];
//     final l$phone = json['phone'];
//     final l$about = json['about'];
//     final l$terms_condition = json['terms_condition'];
//     final l$privacy = json['privacy'];
//     final l$excel_user_upload_example = json['excel_user_upload_example'];
//     final l$imagePath = json['imagePath'];
//     final l$$__typename = json['__typename'];
//     return QueryInfoaboutUs(
//       email: (l$email as String?),
//       phone: (l$phone as String?),
//       about: (l$about as String?),
//       terms_condition: (l$terms_condition as String?),
//       privacy: (l$privacy as String?),
//       excel_user_upload_example: (l$excel_user_upload_example as String?),
//       imagePath: (l$imagePath as String?),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String? email;
//
//   final String? phone;
//
//   final String? about;
//
//   final String? terms_condition;
//
//   final String? privacy;
//
//   final String? excel_user_upload_example;
//
//   final String? imagePath;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$email = email;
//     _resultData['email'] = l$email;
//     final l$phone = phone;
//     _resultData['phone'] = l$phone;
//     final l$about = about;
//     _resultData['about'] = l$about;
//     final l$terms_condition = terms_condition;
//     _resultData['terms_condition'] = l$terms_condition;
//     final l$privacy = privacy;
//     _resultData['privacy'] = l$privacy;
//     final l$excel_user_upload_example = excel_user_upload_example;
//     _resultData['excel_user_upload_example'] = l$excel_user_upload_example;
//     final l$imagePath = imagePath;
//     _resultData['imagePath'] = l$imagePath;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$email = email;
//     final l$phone = phone;
//     final l$about = about;
//     final l$terms_condition = terms_condition;
//     final l$privacy = privacy;
//     final l$excel_user_upload_example = excel_user_upload_example;
//     final l$imagePath = imagePath;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$email,
//       l$phone,
//       l$about,
//       l$terms_condition,
//       l$privacy,
//       l$excel_user_upload_example,
//       l$imagePath,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryInfoaboutUs) || runtimeType != other.runtimeType) {
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
//     final l$about = about;
//     final lOther$about = other.about;
//     if (l$about != lOther$about) {
//       return false;
//     }
//     final l$terms_condition = terms_condition;
//     final lOther$terms_condition = other.terms_condition;
//     if (l$terms_condition != lOther$terms_condition) {
//       return false;
//     }
//     final l$privacy = privacy;
//     final lOther$privacy = other.privacy;
//     if (l$privacy != lOther$privacy) {
//       return false;
//     }
//     final l$excel_user_upload_example = excel_user_upload_example;
//     final lOther$excel_user_upload_example = other.excel_user_upload_example;
//     if (l$excel_user_upload_example != lOther$excel_user_upload_example) {
//       return false;
//     }
//     final l$imagePath = imagePath;
//     final lOther$imagePath = other.imagePath;
//     if (l$imagePath != lOther$imagePath) {
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
// extension UtilityExtensionQueryInfoaboutUs on QueryInfoaboutUs {
//   CopyWithQueryInfoaboutUs<QueryInfoaboutUs> get copyWith =>
//       CopyWithQueryInfoaboutUs(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryInfoaboutUs<TRes> {
//   factory CopyWithQueryInfoaboutUs(
//     QueryInfoaboutUs instance,
//     TRes Function(QueryInfoaboutUs) then,
//   ) = _CopyWithImplQueryInfoaboutUs;
//
//   factory CopyWithQueryInfoaboutUs.stub(TRes res) =
//       _CopyWithStubImplQueryInfoaboutUs;
//
//   TRes call({
//     String? email,
//     String? phone,
//     String? about,
//     String? terms_condition,
//     String? privacy,
//     String? excel_user_upload_example,
//     String? imagePath,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryInfoaboutUs<TRes>
//     implements CopyWithQueryInfoaboutUs<TRes> {
//   _CopyWithImplQueryInfoaboutUs(
//     this._instance,
//     this._then,
//   );
//
//   final QueryInfoaboutUs _instance;
//
//   final TRes Function(QueryInfoaboutUs) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? email = _undefined,
//     Object? phone = _undefined,
//     Object? about = _undefined,
//     Object? terms_condition = _undefined,
//     Object? privacy = _undefined,
//     Object? excel_user_upload_example = _undefined,
//     Object? imagePath = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryInfoaboutUs(
//         email: email == _undefined ? _instance.email : (email as String?),
//         phone: phone == _undefined ? _instance.phone : (phone as String?),
//         about: about == _undefined ? _instance.about : (about as String?),
//         terms_condition: terms_condition == _undefined
//             ? _instance.terms_condition
//             : (terms_condition as String?),
//         privacy:
//             privacy == _undefined ? _instance.privacy : (privacy as String?),
//         excel_user_upload_example: excel_user_upload_example == _undefined
//             ? _instance.excel_user_upload_example
//             : (excel_user_upload_example as String?),
//         imagePath: imagePath == _undefined
//             ? _instance.imagePath
//             : (imagePath as String?),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryInfoaboutUs<TRes>
//     implements CopyWithQueryInfoaboutUs<TRes> {
//   _CopyWithStubImplQueryInfoaboutUs(this._res);
//
//   TRes _res;
//
//   call({
//     String? email,
//     String? phone,
//     String? about,
//     String? terms_condition,
//     String? privacy,
//     String? excel_user_upload_example,
//     String? imagePath,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryInfoquestions {
//   QueryInfoquestions({
//     required this.paginatorInfo,
//     required this.data,
//     this.$__typename = 'ContentPaginator',
//   });
//
//   factory QueryInfoquestions.fromJson(Map<String, dynamic> json) {
//     final l$paginatorInfo = json['paginatorInfo'];
//     final l$data = json['data'];
//     final l$$__typename = json['__typename'];
//     return QueryInfoquestions(
//       paginatorInfo: QueryInfoquestionspaginatorInfo.fromJson(
//           (l$paginatorInfo as Map<String, dynamic>)),
//       data: (l$data as List<dynamic>)
//           .map((e) =>
//               QueryInfoquestionsdata.fromJson((e as Map<String, dynamic>)))
//           .toList(),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final QueryInfoquestionspaginatorInfo paginatorInfo;
//
//   final List<QueryInfoquestionsdata> data;
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
//     if (!(other is QueryInfoquestions) || runtimeType != other.runtimeType) {
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
// extension UtilityExtensionQueryInfoquestions on QueryInfoquestions {
//   CopyWithQueryInfoquestions<QueryInfoquestions> get copyWith =>
//       CopyWithQueryInfoquestions(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryInfoquestions<TRes> {
//   factory CopyWithQueryInfoquestions(
//     QueryInfoquestions instance,
//     TRes Function(QueryInfoquestions) then,
//   ) = _CopyWithImplQueryInfoquestions;
//
//   factory CopyWithQueryInfoquestions.stub(TRes res) =
//       _CopyWithStubImplQueryInfoquestions;
//
//   TRes call({
//     QueryInfoquestionspaginatorInfo? paginatorInfo,
//     List<QueryInfoquestionsdata>? data,
//     String? $__typename,
//   });
//   CopyWithQueryInfoquestionspaginatorInfo<TRes> get paginatorInfo;
//   TRes data(
//       Iterable<QueryInfoquestionsdata> Function(
//               Iterable<CopyWithQueryInfoquestionsdata<QueryInfoquestionsdata>>)
//           _fn);
// }
//
// class _CopyWithImplQueryInfoquestions<TRes>
//     implements CopyWithQueryInfoquestions<TRes> {
//   _CopyWithImplQueryInfoquestions(
//     this._instance,
//     this._then,
//   );
//
//   final QueryInfoquestions _instance;
//
//   final TRes Function(QueryInfoquestions) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? paginatorInfo = _undefined,
//     Object? data = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryInfoquestions(
//         paginatorInfo: paginatorInfo == _undefined || paginatorInfo == null
//             ? _instance.paginatorInfo
//             : (paginatorInfo as QueryInfoquestionspaginatorInfo),
//         data: data == _undefined || data == null
//             ? _instance.data
//             : (data as List<QueryInfoquestionsdata>),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
//
//   CopyWithQueryInfoquestionspaginatorInfo<TRes> get paginatorInfo {
//     final local$paginatorInfo = _instance.paginatorInfo;
//     return CopyWithQueryInfoquestionspaginatorInfo(
//         local$paginatorInfo, (e) => call(paginatorInfo: e));
//   }
//
//   TRes data(
//           Iterable<QueryInfoquestionsdata> Function(
//                   Iterable<
//                       CopyWithQueryInfoquestionsdata<QueryInfoquestionsdata>>)
//               _fn) =>
//       call(
//           data: _fn(_instance.data.map((e) => CopyWithQueryInfoquestionsdata(
//                 e,
//                 (i) => i,
//               ))).toList());
// }
//
// class _CopyWithStubImplQueryInfoquestions<TRes>
//     implements CopyWithQueryInfoquestions<TRes> {
//   _CopyWithStubImplQueryInfoquestions(this._res);
//
//   TRes _res;
//
//   call({
//     QueryInfoquestionspaginatorInfo? paginatorInfo,
//     List<QueryInfoquestionsdata>? data,
//     String? $__typename,
//   }) =>
//       _res;
//
//   CopyWithQueryInfoquestionspaginatorInfo<TRes> get paginatorInfo =>
//       CopyWithQueryInfoquestionspaginatorInfo.stub(_res);
//
//   data(_fn) => _res;
// }
//
// class QueryInfoquestionspaginatorInfo {
//   QueryInfoquestionspaginatorInfo({
//     required this.count,
//     required this.currentPage,
//     this.firstItem,
//     required this.hasMorePages,
//     this.lastItem,
//     required this.total,
//     this.$__typename = 'PaginatorInfo',
//   });
//
//   factory QueryInfoquestionspaginatorInfo.fromJson(Map<String, dynamic> json) {
//     final l$count = json['count'];
//     final l$currentPage = json['currentPage'];
//     final l$firstItem = json['firstItem'];
//     final l$hasMorePages = json['hasMorePages'];
//     final l$lastItem = json['lastItem'];
//     final l$total = json['total'];
//     final l$$__typename = json['__typename'];
//     return QueryInfoquestionspaginatorInfo(
//       count: (l$count as int),
//       currentPage: (l$currentPage as int),
//       firstItem: (l$firstItem as int?),
//       hasMorePages: (l$hasMorePages as bool),
//       lastItem: (l$lastItem as int?),
//       total: (l$total as int),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final int count;
//
//   final int currentPage;
//
//   final int? firstItem;
//
//   final bool hasMorePages;
//
//   final int? lastItem;
//
//   final int total;
//
//   final String $__typename;
//
//   Map<String, dynamic> toJson() {
//     final _resultData = <String, dynamic>{};
//     final l$count = count;
//     _resultData['count'] = l$count;
//     final l$currentPage = currentPage;
//     _resultData['currentPage'] = l$currentPage;
//     final l$firstItem = firstItem;
//     _resultData['firstItem'] = l$firstItem;
//     final l$hasMorePages = hasMorePages;
//     _resultData['hasMorePages'] = l$hasMorePages;
//     final l$lastItem = lastItem;
//     _resultData['lastItem'] = l$lastItem;
//     final l$total = total;
//     _resultData['total'] = l$total;
//     final l$$__typename = $__typename;
//     _resultData['__typename'] = l$$__typename;
//     return _resultData;
//   }
//
//   @override
//   int get hashCode {
//     final l$count = count;
//     final l$currentPage = currentPage;
//     final l$firstItem = firstItem;
//     final l$hasMorePages = hasMorePages;
//     final l$lastItem = lastItem;
//     final l$total = total;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$count,
//       l$currentPage,
//       l$firstItem,
//       l$hasMorePages,
//       l$lastItem,
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
//     if (!(other is QueryInfoquestionspaginatorInfo) ||
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
//     final l$firstItem = firstItem;
//     final lOther$firstItem = other.firstItem;
//     if (l$firstItem != lOther$firstItem) {
//       return false;
//     }
//     final l$hasMorePages = hasMorePages;
//     final lOther$hasMorePages = other.hasMorePages;
//     if (l$hasMorePages != lOther$hasMorePages) {
//       return false;
//     }
//     final l$lastItem = lastItem;
//     final lOther$lastItem = other.lastItem;
//     if (l$lastItem != lOther$lastItem) {
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
// extension UtilityExtensionQueryInfoquestionspaginatorInfo
//     on QueryInfoquestionspaginatorInfo {
//   CopyWithQueryInfoquestionspaginatorInfo<QueryInfoquestionspaginatorInfo>
//       get copyWith => CopyWithQueryInfoquestionspaginatorInfo(
//             this,
//             (i) => i,
//           );
// }
//
// abstract class CopyWithQueryInfoquestionspaginatorInfo<TRes> {
//   factory CopyWithQueryInfoquestionspaginatorInfo(
//     QueryInfoquestionspaginatorInfo instance,
//     TRes Function(QueryInfoquestionspaginatorInfo) then,
//   ) = _CopyWithImplQueryInfoquestionspaginatorInfo;
//
//   factory CopyWithQueryInfoquestionspaginatorInfo.stub(TRes res) =
//       _CopyWithStubImplQueryInfoquestionspaginatorInfo;
//
//   TRes call({
//     int? count,
//     int? currentPage,
//     int? firstItem,
//     bool? hasMorePages,
//     int? lastItem,
//     int? total,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryInfoquestionspaginatorInfo<TRes>
//     implements CopyWithQueryInfoquestionspaginatorInfo<TRes> {
//   _CopyWithImplQueryInfoquestionspaginatorInfo(
//     this._instance,
//     this._then,
//   );
//
//   final QueryInfoquestionspaginatorInfo _instance;
//
//   final TRes Function(QueryInfoquestionspaginatorInfo) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? count = _undefined,
//     Object? currentPage = _undefined,
//     Object? firstItem = _undefined,
//     Object? hasMorePages = _undefined,
//     Object? lastItem = _undefined,
//     Object? total = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryInfoquestionspaginatorInfo(
//         count: count == _undefined || count == null
//             ? _instance.count
//             : (count as int),
//         currentPage: currentPage == _undefined || currentPage == null
//             ? _instance.currentPage
//             : (currentPage as int),
//         firstItem:
//             firstItem == _undefined ? _instance.firstItem : (firstItem as int?),
//         hasMorePages: hasMorePages == _undefined || hasMorePages == null
//             ? _instance.hasMorePages
//             : (hasMorePages as bool),
//         lastItem:
//             lastItem == _undefined ? _instance.lastItem : (lastItem as int?),
//         total: total == _undefined || total == null
//             ? _instance.total
//             : (total as int),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryInfoquestionspaginatorInfo<TRes>
//     implements CopyWithQueryInfoquestionspaginatorInfo<TRes> {
//   _CopyWithStubImplQueryInfoquestionspaginatorInfo(this._res);
//
//   TRes _res;
//
//   call({
//     int? count,
//     int? currentPage,
//     int? firstItem,
//     bool? hasMorePages,
//     int? lastItem,
//     int? total,
//     String? $__typename,
//   }) =>
//       _res;
// }
//
// class QueryInfoquestionsdata {
//   QueryInfoquestionsdata({
//     required this.id,
//     required this.title,
//     this.description,
//     required this.active,
//     this.$__typename = 'Content',
//   });
//
//   factory QueryInfoquestionsdata.fromJson(Map<String, dynamic> json) {
//     final l$id = json['id'];
//     final l$title = json['title'];
//     final l$description = json['description'];
//     final l$active = json['active'];
//     final l$$__typename = json['__typename'];
//     return QueryInfoquestionsdata(
//       id: (l$id as String),
//       title: (l$title as String),
//       description: (l$description as String?),
//       active: (l$active as int),
//       $__typename: (l$$__typename as String),
//     );
//   }
//
//   final String id;
//
//   final String title;
//
//   final String? description;
//
//   final int active;
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
//     final l$active = active;
//     _resultData['active'] = l$active;
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
//     final l$active = active;
//     final l$$__typename = $__typename;
//     return Object.hashAll([
//       l$id,
//       l$title,
//       l$description,
//       l$active,
//       l$$__typename,
//     ]);
//   }
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) {
//       return true;
//     }
//     if (!(other is QueryInfoquestionsdata) ||
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
//     final l$active = active;
//     final lOther$active = other.active;
//     if (l$active != lOther$active) {
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
// extension UtilityExtensionQueryInfoquestionsdata on QueryInfoquestionsdata {
//   CopyWithQueryInfoquestionsdata<QueryInfoquestionsdata> get copyWith =>
//       CopyWithQueryInfoquestionsdata(
//         this,
//         (i) => i,
//       );
// }
//
// abstract class CopyWithQueryInfoquestionsdata<TRes> {
//   factory CopyWithQueryInfoquestionsdata(
//     QueryInfoquestionsdata instance,
//     TRes Function(QueryInfoquestionsdata) then,
//   ) = _CopyWithImplQueryInfoquestionsdata;
//
//   factory CopyWithQueryInfoquestionsdata.stub(TRes res) =
//       _CopyWithStubImplQueryInfoquestionsdata;
//
//   TRes call({
//     String? id,
//     String? title,
//     String? description,
//     int? active,
//     String? $__typename,
//   });
// }
//
// class _CopyWithImplQueryInfoquestionsdata<TRes>
//     implements CopyWithQueryInfoquestionsdata<TRes> {
//   _CopyWithImplQueryInfoquestionsdata(
//     this._instance,
//     this._then,
//   );
//
//   final QueryInfoquestionsdata _instance;
//
//   final TRes Function(QueryInfoquestionsdata) _then;
//
//   static const _undefined = <dynamic, dynamic>{};
//
//   TRes call({
//     Object? id = _undefined,
//     Object? title = _undefined,
//     Object? description = _undefined,
//     Object? active = _undefined,
//     Object? $__typename = _undefined,
//   }) =>
//       _then(QueryInfoquestionsdata(
//         id: id == _undefined || id == null ? _instance.id : (id as String),
//         title: title == _undefined || title == null
//             ? _instance.title
//             : (title as String),
//         description: description == _undefined
//             ? _instance.description
//             : (description as String?),
//         active: active == _undefined || active == null
//             ? _instance.active
//             : (active as int),
//         $__typename: $__typename == _undefined || $__typename == null
//             ? _instance.$__typename
//             : ($__typename as String),
//       ));
// }
//
// class _CopyWithStubImplQueryInfoquestionsdata<TRes>
//     implements CopyWithQueryInfoquestionsdata<TRes> {
//   _CopyWithStubImplQueryInfoquestionsdata(this._res);
//
//   TRes _res;
//
//   call({
//     String? id,
//     String? title,
//     String? description,
//     int? active,
//     String? $__typename,
//   }) =>
//       _res;
// }
