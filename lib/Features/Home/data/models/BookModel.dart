
// Main class for the Book
class BookModel {
 
 final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;

  BookModel({
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      id: json['id'] as String?,
      etag: json['etag'] as String?,
      selfLink: json['selfLink'] as String?,
      volumeInfo: json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null,
      saleInfo: json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null,
      accessInfo: json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null,
    );
  }
}

class VolumeInfo {
  final String title;
  final String? subtitle;
  final List<String> authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier> industryIdentifiers;
  final int? pageCount;
  final String printType;
  final List<String> categories;
  final String maturityRating;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;

  VolumeInfo({
    required this.title,
    this.subtitle,
    required this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    required this.industryIdentifiers,
    this.pageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'] as String? ?? 'Unknown Title',  // Default value for title
      subtitle: json['subtitle'] as String?,
      authors: List<String>.from(json['authors'] ?? []),
      publisher: json['publisher'] as String?,
      publishedDate: json['publishedDate'] as String?,
      description: json['description'] as String?,
      industryIdentifiers: List<IndustryIdentifier>.from(
        json['industryIdentifiers']?.map((identifier) => IndustryIdentifier.fromJson(identifier)) ?? []
      ),
      pageCount: json['pageCount'] as int?,
      printType: json['printType'] as String? ?? 'Unknown Print Type',  // Default value for printType
      categories: List<String>.from(json['categories'] ?? []),
      maturityRating: json['maturityRating'] as String? ?? 'Not Rated',  // Default value for maturityRating
      imageLinks: json['imageLinks'] != null ? ImageLinks.fromJson(json['imageLinks']) : null,
      language: json['language'] as String?,
      previewLink: json['previewLink'] as String?,
      infoLink: json['infoLink'] as String?,
    );
  }
}

class IndustryIdentifier {
  final String type;
  final String identifier;

  IndustryIdentifier({
    required this.type,
    required this.identifier,
  });

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type'] as String? ?? 'Unknown Type',  // Default value for type
      identifier: json['identifier'] as String? ?? 'Unknown Identifier',  // Default value for identifier
    );
  }
}

class ImageLinks {
  final String smallThumbnail;
  final String thumbnail;

  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return ImageLinks(
      smallThumbnail: json['smallThumbnail'] as String? ?? '',  // Default to empty string if null
      thumbnail: json['thumbnail'] as String? ?? '',  // Default to empty string if null
    );
  }
}

class SaleInfo {
  final String country;
  final String saleability;
  final bool isEbook;

  SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      country: json['country'] as String? ?? 'Unknown Country',  // Default value for country
      saleability: json['saleability'] as String? ?? 'Unknown Saleability',  // Default value for saleability
      isEbook: json['isEbook'] as bool? ?? false,  // Default to false if null
    );
  }
}

class AccessInfo {
  final String country;
  final String viewability;
  final bool embeddable;
  final bool publicDomain;
  final String textToSpeechPermission;
  final bool? epubAvailable;
  final bool? pdfAvailable;

  AccessInfo({
    required this.country,
    required this.viewability,
    required this.embeddable,
    required this.publicDomain,
    required this.textToSpeechPermission,
    this.epubAvailable,
    this.pdfAvailable,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) {
    return AccessInfo(
      country: json['country'] as String? ?? 'Unknown Country',
      viewability: json['viewability'] as String? ?? 'Unknown Viewability',
      embeddable: json['embeddable'] as bool? ?? false,
      publicDomain: json['publicDomain'] as bool? ?? false,
      textToSpeechPermission: json['textToSpeechPermission'] as String? ?? 'Unknown Permission',
      epubAvailable: json['epub'] != null ? json['epub']['isAvailable'] as bool : null,
      pdfAvailable: json['pdf'] != null ? json['pdf']['isAvailable'] as bool : null,
    );
  }
}


