import 'dart:async';

import 'package:flutter/material.dart';

class InfiniteListView extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final NullableIndexedWidgetBuilder itemBuilder;
  final int itemCount;
  final Future<void> Function() onLoadMore;
  final bool canLoadMore;
  final Widget? empty;

  const InfiniteListView({
    super.key,
    this.padding,
    required this.itemCount,
    required this.itemBuilder,
    required this.onLoadMore,
    required this.canLoadMore,
    this.empty,
  });

  @override
  State<InfiniteListView> createState() => _InfiniteListViewState();
}

class _InfiniteListViewState extends State<InfiniteListView> {
  bool _isLoadingMore = false;
  late final ScrollController _scrollController;

  Future<void> _scrollListener() async {
    if (!_scrollController.hasClients) return;
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8) {
      // Load more at 80% scroll
      if (_isLoadingMore || !widget.canLoadMore) return;

      try {
        setState(() => _isLoadingMore = true);
        await widget.onLoadMore();
      } finally {
        if (mounted) {
          setState(() => _isLoadingMore = false);
        }
      }
    }
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void didUpdateWidget(InfiniteListView oldWidget) {
    if (oldWidget.itemCount != widget.itemCount) {
      if (_scrollController.hasClients) {
        // Add this check
        _scrollController.jumpTo(_scrollController.position.pixels);
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final showEmpty = widget.itemCount == 0 && widget.empty != null;
    if (widget.itemCount == 0 && widget.empty != null) {
      return widget.empty!;
    }
    return ListView.builder(
      controller: _scrollController,
      physics: const AlwaysScrollableScrollPhysics(),
      padding: widget.padding,
      itemCount: showEmpty ? 1 : widget.itemCount + (_isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        if (showEmpty) {
          return widget.empty!;
        }

        if (index < widget.itemCount) {
          return widget.itemBuilder(context, index);
        }

        return _buildLoader();
      },
    );
  }

  Widget _buildLoader() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: widget.canLoadMore
            ? const Center(child: CircularProgressIndicator.adaptive())
            : const SizedBox.shrink(),
      ),
    );
  }
}
