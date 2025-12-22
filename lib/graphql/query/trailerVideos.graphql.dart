import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$trailerVideos {
  factory Variables$Query$trailerVideos({
    int? first,
    String? after,
  }) =>
      Variables$Query$trailerVideos._({
        if (first != null) r'first': first,
        if (after != null) r'after': after,
      });

  Variables$Query$trailerVideos._(this._$data);

  factory Variables$Query$trailerVideos.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables$Query$trailerVideos._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith$Variables$Query$trailerVideos<Variables$Query$trailerVideos>
      get copyWith => CopyWith$Variables$Query$trailerVideos(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$trailerVideos) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$trailerVideos<TRes> {
  factory CopyWith$Variables$Query$trailerVideos(
    Variables$Query$trailerVideos instance,
    TRes Function(Variables$Query$trailerVideos) then,
  ) = _CopyWithImpl$Variables$Query$trailerVideos;

  factory CopyWith$Variables$Query$trailerVideos.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$trailerVideos;

  TRes call({
    int? first,
    String? after,
  });
}

class _CopyWithImpl$Variables$Query$trailerVideos<TRes>
    implements CopyWith$Variables$Query$trailerVideos<TRes> {
  _CopyWithImpl$Variables$Query$trailerVideos(
    this._instance,
    this._then,
  );

  final Variables$Query$trailerVideos _instance;

  final TRes Function(Variables$Query$trailerVideos) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? after = _undefined,
  }) =>
      _then(Variables$Query$trailerVideos._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (after != _undefined) 'after': (after as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$trailerVideos<TRes>
    implements CopyWith$Variables$Query$trailerVideos<TRes> {
  _CopyWithStubImpl$Variables$Query$trailerVideos(this._res);

  TRes _res;

  call({
    int? first,
    String? after,
  }) =>
      _res;
}

class Query$trailerVideos {
  Query$trailerVideos({
    required this.trailerVideos,
    this.$__typename = 'Query',
  });

  factory Query$trailerVideos.fromJson(Map<String, dynamic> json) {
    final l$trailerVideos = json['trailerVideos'];
    final l$$__typename = json['__typename'];
    return Query$trailerVideos(
      trailerVideos: Query$trailerVideos$trailerVideos.fromJson(
          (l$trailerVideos as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$trailerVideos$trailerVideos trailerVideos;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$trailerVideos = trailerVideos;
    _resultData['trailerVideos'] = l$trailerVideos.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$trailerVideos = trailerVideos;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$trailerVideos,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$trailerVideos) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$trailerVideos = trailerVideos;
    final lOther$trailerVideos = other.trailerVideos;
    if (l$trailerVideos != lOther$trailerVideos) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$trailerVideos on Query$trailerVideos {
  CopyWith$Query$trailerVideos<Query$trailerVideos> get copyWith =>
      CopyWith$Query$trailerVideos(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$trailerVideos<TRes> {
  factory CopyWith$Query$trailerVideos(
    Query$trailerVideos instance,
    TRes Function(Query$trailerVideos) then,
  ) = _CopyWithImpl$Query$trailerVideos;

  factory CopyWith$Query$trailerVideos.stub(TRes res) =
      _CopyWithStubImpl$Query$trailerVideos;

  TRes call({
    Query$trailerVideos$trailerVideos? trailerVideos,
    String? $__typename,
  });
  CopyWith$Query$trailerVideos$trailerVideos<TRes> get trailerVideos;
}

class _CopyWithImpl$Query$trailerVideos<TRes>
    implements CopyWith$Query$trailerVideos<TRes> {
  _CopyWithImpl$Query$trailerVideos(
    this._instance,
    this._then,
  );

  final Query$trailerVideos _instance;

  final TRes Function(Query$trailerVideos) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? trailerVideos = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$trailerVideos(
        trailerVideos: trailerVideos == _undefined || trailerVideos == null
            ? _instance.trailerVideos
            : (trailerVideos as Query$trailerVideos$trailerVideos),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$trailerVideos$trailerVideos<TRes> get trailerVideos {
    final local$trailerVideos = _instance.trailerVideos;
    return CopyWith$Query$trailerVideos$trailerVideos(
        local$trailerVideos, (e) => call(trailerVideos: e));
  }
}

class _CopyWithStubImpl$Query$trailerVideos<TRes>
    implements CopyWith$Query$trailerVideos<TRes> {
  _CopyWithStubImpl$Query$trailerVideos(this._res);

  TRes _res;

  call({
    Query$trailerVideos$trailerVideos? trailerVideos,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$trailerVideos$trailerVideos<TRes> get trailerVideos =>
      CopyWith$Query$trailerVideos$trailerVideos.stub(_res);
}

const documentNodeQuerytrailerVideos = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'trailerVideos'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'trailerVideos'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'cursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'node'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'creator'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'avatar'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'currentUserHasLike'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'description'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'fileUrl'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'vtts'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'locale'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'original'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'duration'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'minuteUnitName'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'minutes'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'secondUnitName'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'seconds'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: 'likeNum'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'thumbnailCategory'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'id'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'name'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'endCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'totalCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$trailerVideos _parserFn$Query$trailerVideos(Map<String, dynamic> data) =>
    Query$trailerVideos.fromJson(data);
typedef OnQueryComplete$Query$trailerVideos = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$trailerVideos?,
);

class Options$Query$trailerVideos
    extends graphql.QueryOptions<Query$trailerVideos> {
  Options$Query$trailerVideos({
    String? operationName,
    Variables$Query$trailerVideos? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$trailerVideos? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$trailerVideos? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$trailerVideos(data),
                  ),
          onError: onError,
          document: documentNodeQuerytrailerVideos,
          parserFn: _parserFn$Query$trailerVideos,
        );

  final OnQueryComplete$Query$trailerVideos? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$trailerVideos
    extends graphql.WatchQueryOptions<Query$trailerVideos> {
  WatchOptions$Query$trailerVideos({
    String? operationName,
    Variables$Query$trailerVideos? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$trailerVideos? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerytrailerVideos,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$trailerVideos,
        );
}

class FetchMoreOptions$Query$trailerVideos extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$trailerVideos({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$trailerVideos? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerytrailerVideos,
        );
}

extension ClientExtension$Query$trailerVideos on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$trailerVideos>> query$trailerVideos(
          [Options$Query$trailerVideos? options]) async =>
      await this.query(options ?? Options$Query$trailerVideos());
  graphql.ObservableQuery<Query$trailerVideos> watchQuery$trailerVideos(
          [WatchOptions$Query$trailerVideos? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$trailerVideos());
  void writeQuery$trailerVideos({
    required Query$trailerVideos data,
    Variables$Query$trailerVideos? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerytrailerVideos),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$trailerVideos? readQuery$trailerVideos({
    Variables$Query$trailerVideos? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerytrailerVideos),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$trailerVideos.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$trailerVideos> useQuery$trailerVideos(
        [Options$Query$trailerVideos? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$trailerVideos());
graphql.ObservableQuery<Query$trailerVideos> useWatchQuery$trailerVideos(
        [WatchOptions$Query$trailerVideos? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$trailerVideos());

class Query$trailerVideos$Widget
    extends graphql_flutter.Query<Query$trailerVideos> {
  Query$trailerVideos$Widget({
    widgets.Key? key,
    Options$Query$trailerVideos? options,
    required graphql_flutter.QueryBuilder<Query$trailerVideos> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$trailerVideos(),
          builder: builder,
        );
}

class Query$trailerVideos$trailerVideos {
  Query$trailerVideos$trailerVideos({
    this.edges,
    this.pageInfo,
    this.totalCount,
    this.$__typename = 'TrailerVideoConnection',
  });

  factory Query$trailerVideos$trailerVideos.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$trailerVideos$trailerVideos(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => Query$trailerVideos$trailerVideos$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: l$pageInfo == null
          ? null
          : Query$trailerVideos$trailerVideos$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      totalCount: (l$totalCount as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$trailerVideos$trailerVideos$edges>? edges;

  final Query$trailerVideos$trailerVideos$pageInfo? pageInfo;

  final int? totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$pageInfo = pageInfo;
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$pageInfo,
      l$totalCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$trailerVideos$trailerVideos) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$trailerVideos$trailerVideos
    on Query$trailerVideos$trailerVideos {
  CopyWith$Query$trailerVideos$trailerVideos<Query$trailerVideos$trailerVideos>
      get copyWith => CopyWith$Query$trailerVideos$trailerVideos(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$trailerVideos$trailerVideos<TRes> {
  factory CopyWith$Query$trailerVideos$trailerVideos(
    Query$trailerVideos$trailerVideos instance,
    TRes Function(Query$trailerVideos$trailerVideos) then,
  ) = _CopyWithImpl$Query$trailerVideos$trailerVideos;

  factory CopyWith$Query$trailerVideos$trailerVideos.stub(TRes res) =
      _CopyWithStubImpl$Query$trailerVideos$trailerVideos;

  TRes call({
    List<Query$trailerVideos$trailerVideos$edges>? edges,
    Query$trailerVideos$trailerVideos$pageInfo? pageInfo,
    int? totalCount,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$trailerVideos$trailerVideos$edges>? Function(
              Iterable<
                  CopyWith$Query$trailerVideos$trailerVideos$edges<
                      Query$trailerVideos$trailerVideos$edges>>?)
          _fn);
  CopyWith$Query$trailerVideos$trailerVideos$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$trailerVideos$trailerVideos<TRes>
    implements CopyWith$Query$trailerVideos$trailerVideos<TRes> {
  _CopyWithImpl$Query$trailerVideos$trailerVideos(
    this._instance,
    this._then,
  );

  final Query$trailerVideos$trailerVideos _instance;

  final TRes Function(Query$trailerVideos$trailerVideos) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$trailerVideos$trailerVideos(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$trailerVideos$trailerVideos$edges>?),
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$trailerVideos$trailerVideos$pageInfo?),
        totalCount: totalCount == _undefined
            ? _instance.totalCount
            : (totalCount as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$trailerVideos$trailerVideos$edges>? Function(
                  Iterable<
                      CopyWith$Query$trailerVideos$trailerVideos$edges<
                          Query$trailerVideos$trailerVideos$edges>>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              ?.map((e) => CopyWith$Query$trailerVideos$trailerVideos$edges(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Query$trailerVideos$trailerVideos$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$trailerVideos$trailerVideos$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$trailerVideos$trailerVideos$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$trailerVideos$trailerVideos<TRes>
    implements CopyWith$Query$trailerVideos$trailerVideos<TRes> {
  _CopyWithStubImpl$Query$trailerVideos$trailerVideos(this._res);

  TRes _res;

  call({
    List<Query$trailerVideos$trailerVideos$edges>? edges,
    Query$trailerVideos$trailerVideos$pageInfo? pageInfo,
    int? totalCount,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$trailerVideos$trailerVideos$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$trailerVideos$trailerVideos$pageInfo.stub(_res);
}

class Query$trailerVideos$trailerVideos$edges {
  Query$trailerVideos$trailerVideos$edges({
    required this.cursor,
    this.node,
    this.$__typename = 'TrailerVideoEdge',
  });

  factory Query$trailerVideos$trailerVideos$edges.fromJson(
      Map<String, dynamic> json) {
    final l$cursor = json['cursor'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$trailerVideos$trailerVideos$edges(
      cursor: (l$cursor as String),
      node: l$node == null
          ? null
          : Query$trailerVideos$trailerVideos$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String cursor;

  final Query$trailerVideos$trailerVideos$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cursor = cursor;
    _resultData['cursor'] = l$cursor;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cursor = cursor;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cursor,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$trailerVideos$trailerVideos$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cursor = cursor;
    final lOther$cursor = other.cursor;
    if (l$cursor != lOther$cursor) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$trailerVideos$trailerVideos$edges
    on Query$trailerVideos$trailerVideos$edges {
  CopyWith$Query$trailerVideos$trailerVideos$edges<
          Query$trailerVideos$trailerVideos$edges>
      get copyWith => CopyWith$Query$trailerVideos$trailerVideos$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$trailerVideos$trailerVideos$edges<TRes> {
  factory CopyWith$Query$trailerVideos$trailerVideos$edges(
    Query$trailerVideos$trailerVideos$edges instance,
    TRes Function(Query$trailerVideos$trailerVideos$edges) then,
  ) = _CopyWithImpl$Query$trailerVideos$trailerVideos$edges;

  factory CopyWith$Query$trailerVideos$trailerVideos$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges;

  TRes call({
    String? cursor,
    Query$trailerVideos$trailerVideos$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$trailerVideos$trailerVideos$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$trailerVideos$trailerVideos$edges<TRes>
    implements CopyWith$Query$trailerVideos$trailerVideos$edges<TRes> {
  _CopyWithImpl$Query$trailerVideos$trailerVideos$edges(
    this._instance,
    this._then,
  );

  final Query$trailerVideos$trailerVideos$edges _instance;

  final TRes Function(Query$trailerVideos$trailerVideos$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cursor = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$trailerVideos$trailerVideos$edges(
        cursor: cursor == _undefined || cursor == null
            ? _instance.cursor
            : (cursor as String),
        node: node == _undefined
            ? _instance.node
            : (node as Query$trailerVideos$trailerVideos$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$trailerVideos$trailerVideos$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$trailerVideos$trailerVideos$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$trailerVideos$trailerVideos$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges<TRes>
    implements CopyWith$Query$trailerVideos$trailerVideos$edges<TRes> {
  _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges(this._res);

  TRes _res;

  call({
    String? cursor,
    Query$trailerVideos$trailerVideos$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$trailerVideos$trailerVideos$edges$node<TRes> get node =>
      CopyWith$Query$trailerVideos$trailerVideos$edges$node.stub(_res);
}

class Query$trailerVideos$trailerVideos$edges$node {
  Query$trailerVideos$trailerVideos$edges$node({
    this.creator,
    this.currentUserHasLike,
    this.description,
    this.fileUrl,
    required this.id,
    this.title,
    this.vtts,
    this.original,
    this.$__typename = 'TrailerVideo',
  });

  factory Query$trailerVideos$trailerVideos$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$creator = json['creator'];
    final l$currentUserHasLike = json['currentUserHasLike'];
    final l$description = json['description'];
    final l$fileUrl = json['fileUrl'];
    final l$id = json['id'];
    final l$title = json['title'];
    final l$vtts = json['vtts'];
    final l$original = json['original'];
    final l$$__typename = json['__typename'];
    return Query$trailerVideos$trailerVideos$edges$node(
      creator: l$creator == null
          ? null
          : Query$trailerVideos$trailerVideos$edges$node$creator.fromJson(
              (l$creator as Map<String, dynamic>)),
      currentUserHasLike: (l$currentUserHasLike as bool?),
      description: (l$description as String?),
      fileUrl: (l$fileUrl as String?),
      id: (l$id as String),
      title: (l$title as String?),
      vtts: (l$vtts as List<dynamic>?)
          ?.map((e) =>
              Query$trailerVideos$trailerVideos$edges$node$vtts.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      original: l$original == null
          ? null
          : Query$trailerVideos$trailerVideos$edges$node$original.fromJson(
              (l$original as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$trailerVideos$trailerVideos$edges$node$creator? creator;

  final bool? currentUserHasLike;

  final String? description;

  final String? fileUrl;

  final String id;

  final String? title;

  final List<Query$trailerVideos$trailerVideos$edges$node$vtts>? vtts;

  final Query$trailerVideos$trailerVideos$edges$node$original? original;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$creator = creator;
    _resultData['creator'] = l$creator?.toJson();
    final l$currentUserHasLike = currentUserHasLike;
    _resultData['currentUserHasLike'] = l$currentUserHasLike;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$fileUrl = fileUrl;
    _resultData['fileUrl'] = l$fileUrl;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$vtts = vtts;
    _resultData['vtts'] = l$vtts?.map((e) => e.toJson()).toList();
    final l$original = original;
    _resultData['original'] = l$original?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$creator = creator;
    final l$currentUserHasLike = currentUserHasLike;
    final l$description = description;
    final l$fileUrl = fileUrl;
    final l$id = id;
    final l$title = title;
    final l$vtts = vtts;
    final l$original = original;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$creator,
      l$currentUserHasLike,
      l$description,
      l$fileUrl,
      l$id,
      l$title,
      l$vtts == null ? null : Object.hashAll(l$vtts.map((v) => v)),
      l$original,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$trailerVideos$trailerVideos$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$creator = creator;
    final lOther$creator = other.creator;
    if (l$creator != lOther$creator) {
      return false;
    }
    final l$currentUserHasLike = currentUserHasLike;
    final lOther$currentUserHasLike = other.currentUserHasLike;
    if (l$currentUserHasLike != lOther$currentUserHasLike) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$fileUrl = fileUrl;
    final lOther$fileUrl = other.fileUrl;
    if (l$fileUrl != lOther$fileUrl) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$vtts = vtts;
    final lOther$vtts = other.vtts;
    if (l$vtts != null && lOther$vtts != null) {
      if (l$vtts.length != lOther$vtts.length) {
        return false;
      }
      for (int i = 0; i < l$vtts.length; i++) {
        final l$vtts$entry = l$vtts[i];
        final lOther$vtts$entry = lOther$vtts[i];
        if (l$vtts$entry != lOther$vtts$entry) {
          return false;
        }
      }
    } else if (l$vtts != lOther$vtts) {
      return false;
    }
    final l$original = original;
    final lOther$original = other.original;
    if (l$original != lOther$original) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$trailerVideos$trailerVideos$edges$node
    on Query$trailerVideos$trailerVideos$edges$node {
  CopyWith$Query$trailerVideos$trailerVideos$edges$node<
          Query$trailerVideos$trailerVideos$edges$node>
      get copyWith => CopyWith$Query$trailerVideos$trailerVideos$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$trailerVideos$trailerVideos$edges$node<TRes> {
  factory CopyWith$Query$trailerVideos$trailerVideos$edges$node(
    Query$trailerVideos$trailerVideos$edges$node instance,
    TRes Function(Query$trailerVideos$trailerVideos$edges$node) then,
  ) = _CopyWithImpl$Query$trailerVideos$trailerVideos$edges$node;

  factory CopyWith$Query$trailerVideos$trailerVideos$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges$node;

  TRes call({
    Query$trailerVideos$trailerVideos$edges$node$creator? creator,
    bool? currentUserHasLike,
    String? description,
    String? fileUrl,
    String? id,
    String? title,
    List<Query$trailerVideos$trailerVideos$edges$node$vtts>? vtts,
    Query$trailerVideos$trailerVideos$edges$node$original? original,
    String? $__typename,
  });
  CopyWith$Query$trailerVideos$trailerVideos$edges$node$creator<TRes>
      get creator;
  TRes vtts(
      Iterable<Query$trailerVideos$trailerVideos$edges$node$vtts>? Function(
              Iterable<
                  CopyWith$Query$trailerVideos$trailerVideos$edges$node$vtts<
                      Query$trailerVideos$trailerVideos$edges$node$vtts>>?)
          _fn);
  CopyWith$Query$trailerVideos$trailerVideos$edges$node$original<TRes>
      get original;
}

class _CopyWithImpl$Query$trailerVideos$trailerVideos$edges$node<TRes>
    implements CopyWith$Query$trailerVideos$trailerVideos$edges$node<TRes> {
  _CopyWithImpl$Query$trailerVideos$trailerVideos$edges$node(
    this._instance,
    this._then,
  );

  final Query$trailerVideos$trailerVideos$edges$node _instance;

  final TRes Function(Query$trailerVideos$trailerVideos$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? creator = _undefined,
    Object? currentUserHasLike = _undefined,
    Object? description = _undefined,
    Object? fileUrl = _undefined,
    Object? id = _undefined,
    Object? title = _undefined,
    Object? vtts = _undefined,
    Object? original = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$trailerVideos$trailerVideos$edges$node(
        creator: creator == _undefined
            ? _instance.creator
            : (creator
                as Query$trailerVideos$trailerVideos$edges$node$creator?),
        currentUserHasLike: currentUserHasLike == _undefined
            ? _instance.currentUserHasLike
            : (currentUserHasLike as bool?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        fileUrl:
            fileUrl == _undefined ? _instance.fileUrl : (fileUrl as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined ? _instance.title : (title as String?),
        vtts: vtts == _undefined
            ? _instance.vtts
            : (vtts
                as List<Query$trailerVideos$trailerVideos$edges$node$vtts>?),
        original: original == _undefined
            ? _instance.original
            : (original
                as Query$trailerVideos$trailerVideos$edges$node$original?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$trailerVideos$trailerVideos$edges$node$creator<TRes>
      get creator {
    final local$creator = _instance.creator;
    return local$creator == null
        ? CopyWith$Query$trailerVideos$trailerVideos$edges$node$creator.stub(
            _then(_instance))
        : CopyWith$Query$trailerVideos$trailerVideos$edges$node$creator(
            local$creator, (e) => call(creator: e));
  }

  TRes vtts(
          Iterable<Query$trailerVideos$trailerVideos$edges$node$vtts>? Function(
                  Iterable<
                      CopyWith$Query$trailerVideos$trailerVideos$edges$node$vtts<
                          Query$trailerVideos$trailerVideos$edges$node$vtts>>?)
              _fn) =>
      call(
          vtts: _fn(_instance.vtts?.map(
              (e) => CopyWith$Query$trailerVideos$trailerVideos$edges$node$vtts(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Query$trailerVideos$trailerVideos$edges$node$original<TRes>
      get original {
    final local$original = _instance.original;
    return local$original == null
        ? CopyWith$Query$trailerVideos$trailerVideos$edges$node$original.stub(
            _then(_instance))
        : CopyWith$Query$trailerVideos$trailerVideos$edges$node$original(
            local$original, (e) => call(original: e));
  }
}

class _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges$node<TRes>
    implements CopyWith$Query$trailerVideos$trailerVideos$edges$node<TRes> {
  _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges$node(this._res);

  TRes _res;

  call({
    Query$trailerVideos$trailerVideos$edges$node$creator? creator,
    bool? currentUserHasLike,
    String? description,
    String? fileUrl,
    String? id,
    String? title,
    List<Query$trailerVideos$trailerVideos$edges$node$vtts>? vtts,
    Query$trailerVideos$trailerVideos$edges$node$original? original,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$trailerVideos$trailerVideos$edges$node$creator<TRes>
      get creator =>
          CopyWith$Query$trailerVideos$trailerVideos$edges$node$creator.stub(
              _res);

  vtts(_fn) => _res;

  CopyWith$Query$trailerVideos$trailerVideos$edges$node$original<TRes>
      get original =>
          CopyWith$Query$trailerVideos$trailerVideos$edges$node$original.stub(
              _res);
}

class Query$trailerVideos$trailerVideos$edges$node$creator {
  Query$trailerVideos$trailerVideos$edges$node$creator({
    this.avatar,
    this.name,
    this.$__typename = 'Creator',
  });

  factory Query$trailerVideos$trailerVideos$edges$node$creator.fromJson(
      Map<String, dynamic> json) {
    final l$avatar = json['avatar'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$trailerVideos$trailerVideos$edges$node$creator(
      avatar: (l$avatar as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? avatar;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$avatar = avatar;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$avatar,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$trailerVideos$trailerVideos$edges$node$creator) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$trailerVideos$trailerVideos$edges$node$creator
    on Query$trailerVideos$trailerVideos$edges$node$creator {
  CopyWith$Query$trailerVideos$trailerVideos$edges$node$creator<
          Query$trailerVideos$trailerVideos$edges$node$creator>
      get copyWith =>
          CopyWith$Query$trailerVideos$trailerVideos$edges$node$creator(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$trailerVideos$trailerVideos$edges$node$creator<
    TRes> {
  factory CopyWith$Query$trailerVideos$trailerVideos$edges$node$creator(
    Query$trailerVideos$trailerVideos$edges$node$creator instance,
    TRes Function(Query$trailerVideos$trailerVideos$edges$node$creator) then,
  ) = _CopyWithImpl$Query$trailerVideos$trailerVideos$edges$node$creator;

  factory CopyWith$Query$trailerVideos$trailerVideos$edges$node$creator.stub(
          TRes res) =
      _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges$node$creator;

  TRes call({
    String? avatar,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$trailerVideos$trailerVideos$edges$node$creator<TRes>
    implements
        CopyWith$Query$trailerVideos$trailerVideos$edges$node$creator<TRes> {
  _CopyWithImpl$Query$trailerVideos$trailerVideos$edges$node$creator(
    this._instance,
    this._then,
  );

  final Query$trailerVideos$trailerVideos$edges$node$creator _instance;

  final TRes Function(Query$trailerVideos$trailerVideos$edges$node$creator)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avatar = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$trailerVideos$trailerVideos$edges$node$creator(
        avatar: avatar == _undefined ? _instance.avatar : (avatar as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges$node$creator<
        TRes>
    implements
        CopyWith$Query$trailerVideos$trailerVideos$edges$node$creator<TRes> {
  _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges$node$creator(
      this._res);

  TRes _res;

  call({
    String? avatar,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$trailerVideos$trailerVideos$edges$node$vtts {
  Query$trailerVideos$trailerVideos$edges$node$vtts({
    required this.locale,
    required this.url,
    this.$__typename = 'VttSubtitle',
  });

  factory Query$trailerVideos$trailerVideos$edges$node$vtts.fromJson(
      Map<String, dynamic> json) {
    final l$locale = json['locale'];
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$trailerVideos$trailerVideos$edges$node$vtts(
      locale: (l$locale as String),
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String locale;

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$locale = locale;
    _resultData['locale'] = l$locale;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$locale = locale;
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$locale,
      l$url,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$trailerVideos$trailerVideos$edges$node$vtts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$locale = locale;
    final lOther$locale = other.locale;
    if (l$locale != lOther$locale) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$trailerVideos$trailerVideos$edges$node$vtts
    on Query$trailerVideos$trailerVideos$edges$node$vtts {
  CopyWith$Query$trailerVideos$trailerVideos$edges$node$vtts<
          Query$trailerVideos$trailerVideos$edges$node$vtts>
      get copyWith =>
          CopyWith$Query$trailerVideos$trailerVideos$edges$node$vtts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$trailerVideos$trailerVideos$edges$node$vtts<
    TRes> {
  factory CopyWith$Query$trailerVideos$trailerVideos$edges$node$vtts(
    Query$trailerVideos$trailerVideos$edges$node$vtts instance,
    TRes Function(Query$trailerVideos$trailerVideos$edges$node$vtts) then,
  ) = _CopyWithImpl$Query$trailerVideos$trailerVideos$edges$node$vtts;

  factory CopyWith$Query$trailerVideos$trailerVideos$edges$node$vtts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges$node$vtts;

  TRes call({
    String? locale,
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$trailerVideos$trailerVideos$edges$node$vtts<TRes>
    implements
        CopyWith$Query$trailerVideos$trailerVideos$edges$node$vtts<TRes> {
  _CopyWithImpl$Query$trailerVideos$trailerVideos$edges$node$vtts(
    this._instance,
    this._then,
  );

  final Query$trailerVideos$trailerVideos$edges$node$vtts _instance;

  final TRes Function(Query$trailerVideos$trailerVideos$edges$node$vtts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? locale = _undefined,
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$trailerVideos$trailerVideos$edges$node$vtts(
        locale: locale == _undefined || locale == null
            ? _instance.locale
            : (locale as String),
        url: url == _undefined || url == null ? _instance.url : (url as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges$node$vtts<TRes>
    implements
        CopyWith$Query$trailerVideos$trailerVideos$edges$node$vtts<TRes> {
  _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges$node$vtts(
      this._res);

  TRes _res;

  call({
    String? locale,
    String? url,
    String? $__typename,
  }) =>
      _res;
}

class Query$trailerVideos$trailerVideos$edges$node$original {
  Query$trailerVideos$trailerVideos$edges$node$original({
    required this.id,
    required this.duration,
    required this.likeNum,
    this.thumbnailCategory,
    this.$__typename = 'OriginalVideo',
  });

  factory Query$trailerVideos$trailerVideos$edges$node$original.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$duration = json['duration'];
    final l$likeNum = json['likeNum'];
    final l$thumbnailCategory = json['thumbnailCategory'];
    final l$$__typename = json['__typename'];
    return Query$trailerVideos$trailerVideos$edges$node$original(
      id: (l$id as String),
      duration: Query$trailerVideos$trailerVideos$edges$node$original$duration
          .fromJson((l$duration as Map<String, dynamic>)),
      likeNum: (l$likeNum as int),
      thumbnailCategory: l$thumbnailCategory == null
          ? null
          : Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory
              .fromJson((l$thumbnailCategory as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Query$trailerVideos$trailerVideos$edges$node$original$duration duration;

  final int likeNum;

  final Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory?
      thumbnailCategory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$duration = duration;
    _resultData['duration'] = l$duration.toJson();
    final l$likeNum = likeNum;
    _resultData['likeNum'] = l$likeNum;
    final l$thumbnailCategory = thumbnailCategory;
    _resultData['thumbnailCategory'] = l$thumbnailCategory?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$duration = duration;
    final l$likeNum = likeNum;
    final l$thumbnailCategory = thumbnailCategory;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$duration,
      l$likeNum,
      l$thumbnailCategory,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$trailerVideos$trailerVideos$edges$node$original) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$likeNum = likeNum;
    final lOther$likeNum = other.likeNum;
    if (l$likeNum != lOther$likeNum) {
      return false;
    }
    final l$thumbnailCategory = thumbnailCategory;
    final lOther$thumbnailCategory = other.thumbnailCategory;
    if (l$thumbnailCategory != lOther$thumbnailCategory) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$trailerVideos$trailerVideos$edges$node$original
    on Query$trailerVideos$trailerVideos$edges$node$original {
  CopyWith$Query$trailerVideos$trailerVideos$edges$node$original<
          Query$trailerVideos$trailerVideos$edges$node$original>
      get copyWith =>
          CopyWith$Query$trailerVideos$trailerVideos$edges$node$original(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$trailerVideos$trailerVideos$edges$node$original<
    TRes> {
  factory CopyWith$Query$trailerVideos$trailerVideos$edges$node$original(
    Query$trailerVideos$trailerVideos$edges$node$original instance,
    TRes Function(Query$trailerVideos$trailerVideos$edges$node$original) then,
  ) = _CopyWithImpl$Query$trailerVideos$trailerVideos$edges$node$original;

  factory CopyWith$Query$trailerVideos$trailerVideos$edges$node$original.stub(
          TRes res) =
      _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges$node$original;

  TRes call({
    String? id,
    Query$trailerVideos$trailerVideos$edges$node$original$duration? duration,
    int? likeNum,
    Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory?
        thumbnailCategory,
    String? $__typename,
  });
  CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$duration<TRes>
      get duration;
  CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory<
      TRes> get thumbnailCategory;
}

class _CopyWithImpl$Query$trailerVideos$trailerVideos$edges$node$original<TRes>
    implements
        CopyWith$Query$trailerVideos$trailerVideos$edges$node$original<TRes> {
  _CopyWithImpl$Query$trailerVideos$trailerVideos$edges$node$original(
    this._instance,
    this._then,
  );

  final Query$trailerVideos$trailerVideos$edges$node$original _instance;

  final TRes Function(Query$trailerVideos$trailerVideos$edges$node$original)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? duration = _undefined,
    Object? likeNum = _undefined,
    Object? thumbnailCategory = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$trailerVideos$trailerVideos$edges$node$original(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration
                as Query$trailerVideos$trailerVideos$edges$node$original$duration),
        likeNum: likeNum == _undefined || likeNum == null
            ? _instance.likeNum
            : (likeNum as int),
        thumbnailCategory: thumbnailCategory == _undefined
            ? _instance.thumbnailCategory
            : (thumbnailCategory
                as Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$duration<TRes>
      get duration {
    final local$duration = _instance.duration;
    return CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$duration(
        local$duration, (e) => call(duration: e));
  }

  CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory<
      TRes> get thumbnailCategory {
    final local$thumbnailCategory = _instance.thumbnailCategory;
    return local$thumbnailCategory == null
        ? CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory
            .stub(_then(_instance))
        : CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory(
            local$thumbnailCategory, (e) => call(thumbnailCategory: e));
  }
}

class _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges$node$original<
        TRes>
    implements
        CopyWith$Query$trailerVideos$trailerVideos$edges$node$original<TRes> {
  _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges$node$original(
      this._res);

  TRes _res;

  call({
    String? id,
    Query$trailerVideos$trailerVideos$edges$node$original$duration? duration,
    int? likeNum,
    Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory?
        thumbnailCategory,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$duration<TRes>
      get duration =>
          CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$duration
              .stub(_res);

  CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory<
          TRes>
      get thumbnailCategory =>
          CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory
              .stub(_res);
}

class Query$trailerVideos$trailerVideos$edges$node$original$duration {
  Query$trailerVideos$trailerVideos$edges$node$original$duration({
    this.minuteUnitName,
    this.minutes,
    this.secondUnitName,
    this.seconds,
    this.$__typename = 'Duration',
  });

  factory Query$trailerVideos$trailerVideos$edges$node$original$duration.fromJson(
      Map<String, dynamic> json) {
    final l$minuteUnitName = json['minuteUnitName'];
    final l$minutes = json['minutes'];
    final l$secondUnitName = json['secondUnitName'];
    final l$seconds = json['seconds'];
    final l$$__typename = json['__typename'];
    return Query$trailerVideos$trailerVideos$edges$node$original$duration(
      minuteUnitName: (l$minuteUnitName as String?),
      minutes: (l$minutes as int?),
      secondUnitName: (l$secondUnitName as String?),
      seconds: (l$seconds as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? minuteUnitName;

  final int? minutes;

  final String? secondUnitName;

  final int? seconds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$minuteUnitName = minuteUnitName;
    _resultData['minuteUnitName'] = l$minuteUnitName;
    final l$minutes = minutes;
    _resultData['minutes'] = l$minutes;
    final l$secondUnitName = secondUnitName;
    _resultData['secondUnitName'] = l$secondUnitName;
    final l$seconds = seconds;
    _resultData['seconds'] = l$seconds;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$minuteUnitName = minuteUnitName;
    final l$minutes = minutes;
    final l$secondUnitName = secondUnitName;
    final l$seconds = seconds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$minuteUnitName,
      l$minutes,
      l$secondUnitName,
      l$seconds,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$trailerVideos$trailerVideos$edges$node$original$duration) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$minuteUnitName = minuteUnitName;
    final lOther$minuteUnitName = other.minuteUnitName;
    if (l$minuteUnitName != lOther$minuteUnitName) {
      return false;
    }
    final l$minutes = minutes;
    final lOther$minutes = other.minutes;
    if (l$minutes != lOther$minutes) {
      return false;
    }
    final l$secondUnitName = secondUnitName;
    final lOther$secondUnitName = other.secondUnitName;
    if (l$secondUnitName != lOther$secondUnitName) {
      return false;
    }
    final l$seconds = seconds;
    final lOther$seconds = other.seconds;
    if (l$seconds != lOther$seconds) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$trailerVideos$trailerVideos$edges$node$original$duration
    on Query$trailerVideos$trailerVideos$edges$node$original$duration {
  CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$duration<
          Query$trailerVideos$trailerVideos$edges$node$original$duration>
      get copyWith =>
          CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$duration(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$duration<
    TRes> {
  factory CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$duration(
    Query$trailerVideos$trailerVideos$edges$node$original$duration instance,
    TRes Function(
            Query$trailerVideos$trailerVideos$edges$node$original$duration)
        then,
  ) = _CopyWithImpl$Query$trailerVideos$trailerVideos$edges$node$original$duration;

  factory CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$duration.stub(
          TRes res) =
      _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges$node$original$duration;

  TRes call({
    String? minuteUnitName,
    int? minutes,
    String? secondUnitName,
    int? seconds,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$trailerVideos$trailerVideos$edges$node$original$duration<
        TRes>
    implements
        CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$duration<
            TRes> {
  _CopyWithImpl$Query$trailerVideos$trailerVideos$edges$node$original$duration(
    this._instance,
    this._then,
  );

  final Query$trailerVideos$trailerVideos$edges$node$original$duration
      _instance;

  final TRes Function(
      Query$trailerVideos$trailerVideos$edges$node$original$duration) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? minuteUnitName = _undefined,
    Object? minutes = _undefined,
    Object? secondUnitName = _undefined,
    Object? seconds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$trailerVideos$trailerVideos$edges$node$original$duration(
        minuteUnitName: minuteUnitName == _undefined
            ? _instance.minuteUnitName
            : (minuteUnitName as String?),
        minutes: minutes == _undefined ? _instance.minutes : (minutes as int?),
        secondUnitName: secondUnitName == _undefined
            ? _instance.secondUnitName
            : (secondUnitName as String?),
        seconds: seconds == _undefined ? _instance.seconds : (seconds as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges$node$original$duration<
        TRes>
    implements
        CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$duration<
            TRes> {
  _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges$node$original$duration(
      this._res);

  TRes _res;

  call({
    String? minuteUnitName,
    int? minutes,
    String? secondUnitName,
    int? seconds,
    String? $__typename,
  }) =>
      _res;
}

class Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory {
  Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory({
    required this.id,
    this.name,
    this.$__typename = 'Category',
  });

  factory Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory(
      id: (l$id as String),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory
    on Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory {
  CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory<
          Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory>
      get copyWith =>
          CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory<
    TRes> {
  factory CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory(
    Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory
        instance,
    TRes Function(
            Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory)
        then,
  ) = _CopyWithImpl$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory;

  factory CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory.stub(
          TRes res) =
      _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory<
        TRes>
    implements
        CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory<
            TRes> {
  _CopyWithImpl$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory(
    this._instance,
    this._then,
  );

  final Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory
      _instance;

  final TRes Function(
          Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory<
        TRes>
    implements
        CopyWith$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory<
            TRes> {
  _CopyWithStubImpl$Query$trailerVideos$trailerVideos$edges$node$original$thumbnailCategory(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$trailerVideos$trailerVideos$pageInfo {
  Query$trailerVideos$trailerVideos$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$trailerVideos$trailerVideos$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$trailerVideos$trailerVideos$pageInfo(
      endCursor: (l$endCursor as String?),
      hasNextPage: (l$hasNextPage as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? endCursor;

  final bool hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$endCursor,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$trailerVideos$trailerVideos$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$trailerVideos$trailerVideos$pageInfo
    on Query$trailerVideos$trailerVideos$pageInfo {
  CopyWith$Query$trailerVideos$trailerVideos$pageInfo<
          Query$trailerVideos$trailerVideos$pageInfo>
      get copyWith => CopyWith$Query$trailerVideos$trailerVideos$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$trailerVideos$trailerVideos$pageInfo<TRes> {
  factory CopyWith$Query$trailerVideos$trailerVideos$pageInfo(
    Query$trailerVideos$trailerVideos$pageInfo instance,
    TRes Function(Query$trailerVideos$trailerVideos$pageInfo) then,
  ) = _CopyWithImpl$Query$trailerVideos$trailerVideos$pageInfo;

  factory CopyWith$Query$trailerVideos$trailerVideos$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$trailerVideos$trailerVideos$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$trailerVideos$trailerVideos$pageInfo<TRes>
    implements CopyWith$Query$trailerVideos$trailerVideos$pageInfo<TRes> {
  _CopyWithImpl$Query$trailerVideos$trailerVideos$pageInfo(
    this._instance,
    this._then,
  );

  final Query$trailerVideos$trailerVideos$pageInfo _instance;

  final TRes Function(Query$trailerVideos$trailerVideos$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$trailerVideos$trailerVideos$pageInfo(
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$trailerVideos$trailerVideos$pageInfo<TRes>
    implements CopyWith$Query$trailerVideos$trailerVideos$pageInfo<TRes> {
  _CopyWithStubImpl$Query$trailerVideos$trailerVideos$pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
