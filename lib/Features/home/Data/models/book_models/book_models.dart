import 'package:clean_arch_booky_app/Features/home/Domain/entities/home_entity.dart';

import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

// This class represents a book model that extends the HomeEntity class.
class Bookmodels extends HomeEntity {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Bookmodels({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  })
    // Initializing the HomeEntity with the required parameters.
    // The bookId is set to id, and other fields are derived from volumeInfo.
    // The price is set to 0.00, and rating is set based on maturityRating.
    // If maturityRating is 'NOT_MATURE', rating is set to 5.0, otherwise 0.0.
    : super(
         bookId: id!,
         image: volumeInfo?.imageLinks?.thumbnail ?? '',
         title: volumeInfo!.title!,
         outherName: volumeInfo.authors?.first ?? 'No_Name',
         price: 0.00,
         rating: volumeInfo.maturityRating == 'NOT_MATURE'
             ? 5.0
             : 0.0,
       );

  factory Bookmodels.fromJson(Map<String, dynamic> json) =>
      Bookmodels(
        kind: json['kind'] as String?,
        id: json['id'] as String?,
        etag: json['etag'] as String?,
        selfLink: json['selfLink'] as String?,
        volumeInfo: json['volumeInfo'] == null
            ? null
            : VolumeInfo.fromJson(
                json['volumeInfo'] as Map<String, dynamic>,
              ),
        saleInfo: json['saleInfo'] == null
            ? null
            : SaleInfo.fromJson(
                json['saleInfo'] as Map<String, dynamic>,
              ),
        accessInfo: json['accessInfo'] == null
            ? null
            : AccessInfo.fromJson(
                json['accessInfo'] as Map<String, dynamic>,
              ),
        searchInfo: json['searchInfo'] == null
            ? null
            : SearchInfo.fromJson(
                json['searchInfo'] as Map<String, dynamic>,
              ),
      );

  Map<String, dynamic> toJson() => {
    'kind': kind,
    'id': id,
    'etag': etag,
    'selfLink': selfLink,
    'volumeInfo': volumeInfo?.toJson(),
    'saleInfo': saleInfo?.toJson(),
    'accessInfo': accessInfo?.toJson(),
    'searchInfo': searchInfo?.toJson(),
  };
}
