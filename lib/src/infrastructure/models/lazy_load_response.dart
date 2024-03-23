// общая моделька приходяшего респонса для всех модулей
class LazyLoadResponse<T> {
  final int statusCode;
  final Map<String, String>? headers;
  final List<T> data;
  final int currentPage;
  final int totalPages;
  LazyLoadResponse(
      {required this.statusCode,
      this.headers,
      required this.data,
      required this.currentPage,
      required this.totalPages});
  bool get hasMore => currentPage < totalPages;
}
