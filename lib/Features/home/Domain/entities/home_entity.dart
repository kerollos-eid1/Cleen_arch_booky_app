class HomeEntity {
  final String bookId;
  final String? image;
  final String title;
  final String? outherName;
  final num? price;
  final num? rating;

  HomeEntity({
    required this.bookId,
    required this.image,
    required this.title,
    required this.outherName,
    required this.price,
    required this.rating,
  });
}
