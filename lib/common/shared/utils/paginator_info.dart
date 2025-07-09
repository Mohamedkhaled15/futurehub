class PaginatorInfo<T> {
  final List<T> data;
  final bool hasMorePages;
  final int total;

  const PaginatorInfo({
    required this.data,
    required this.hasMorePages,
    this.total = 0,
  });
}
