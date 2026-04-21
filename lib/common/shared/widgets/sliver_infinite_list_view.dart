import 'dart:async';
import 'package:flutter/material.dart';

class SliverInfiniteListView extends StatefulWidget {
  final NullableIndexedWidgetBuilder itemBuilder;
  final int itemCount;
  final Future<void> Function() onLoadMore;
  final bool canLoadMore;
  final ScrollController controller;
  final Widget? empty;

  const SliverInfiniteListView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    required this.onLoadMore,
    required this.canLoadMore,
    required this.controller,
    this.empty,
  });

  @override
  State<SliverInfiniteListView> createState() => _SliverInfiniteListViewState();
}

class _SliverInfiniteListViewState extends State<SliverInfiniteListView> {
  bool _isLoadingMore = false;

  Future<void> _scrollListener() async {
    if (!widget.controller.hasClients) return;
    if (widget.controller.position.pixels >=
        widget.controller.position.maxScrollExtent * 0.8) {
      if (_isLoadingMore || !widget.canLoadMore) return;

      if (mounted) {
        setState(() => _isLoadingMore = true);
      }
      try {
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
    super.initState();
    widget.controller.addListener(_scrollListener);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.itemCount == 0 && widget.empty != null) {
      return SliverToBoxAdapter(child: widget.empty!);
    }

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          if (index < widget.itemCount) {
            return widget.itemBuilder(context, index);
          }
          return _buildLoader();
        },
        childCount: widget.itemCount + (_isLoadingMore ? 1 : 0),
      ),
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
