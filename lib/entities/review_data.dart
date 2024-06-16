import '../core/extensions/json_ext.dart';
import 'sortable.dart';

class ReviewData extends Sortable {
  final String id;
  final String username;
  final String imageUrl;
  final String position;
  final String company;
  final String companyUrl;
  final int rating;
  final String text;

  const ReviewData({
    required this.id,
    required this.username,
    required this.imageUrl,
    required this.position,
    required this.company,
    required this.companyUrl,
    required this.rating,
    required this.text,
    required super.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'image_url': imageUrl,
      'position': position,
      'company': company,
      'company_url': companyUrl,
      'rating': rating,
      'text': text,
      'sort_order': sortOrder,
    };
  }

  factory ReviewData.fromMap(dynamic data) {
    final map = Map.from(data ?? {});

    return ReviewData(
      id: map.decodeStr('id'),
      username: map.decodeStr('username'),
      imageUrl: map.decodeStr('image_url'),
      position: map.decodeStr('position'),
      company: map.decodeStr('company'),
      companyUrl: map.decodeStr('company_url'),
      rating: map.decodeInt('rating'),
      text: map.decodeStr('text'),
      sortOrder: map.decodeInt('sort_order'),
    );
  }
}
