// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';
// import 'package:http/http.dart' as http;
//
// class Client {
//   static const _url = 'https://futurehub.sa/public/graphql';
//   static final _cache = GraphQLCache(store: HiveStore());
//   static final Map<String, String> _defaultHeaders = {};
//
//   static final _policies = Policies(
//     fetch: FetchPolicy.networkOnly,
//   );
//
//   static final _defaultPolicies = DefaultPolicies(
//     watchQuery: _policies,
//     query: _policies,
//     mutate: _policies,
//   );
//
//   static var current = GraphQLClient(
//     link: HttpLink(
//       _url,
//       defaultHeaders: _defaultHeaders,
//       httpResponseDecoder: (http.Response response) {
//         print("Raw response: ${response.body}");
//         return jsonDecode(response.body);
//       },
//     ),
//     cache: _cache,
//     defaultPolicies: _defaultPolicies,
//   );
//
//   static void authenticate(String? token) {
//     if (token != null) {
//       _defaultHeaders['Authorization'] = 'Bearer $token';
//       debugPrint(token);
//     } else {
//       _defaultHeaders.remove('Authorization');
//     }
//
//     current = GraphQLClient(
//       link: HttpLink(
//         _url,
//         defaultHeaders: _defaultHeaders,
//       ),
//       cache: _cache,
//       defaultPolicies: _defaultPolicies,
//     );
//   }
//
//   static void changeLanguage(String language) {
//     _defaultHeaders['Accept-Language'] = language;
//
//     current = GraphQLClient(
//       link: HttpLink(
//         _url,
//         defaultHeaders: _defaultHeaders,
//       ),
//       cache: _cache,
//       defaultPolicies: _defaultPolicies,
//     );
//   }
// }
