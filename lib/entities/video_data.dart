import '../core/extensions/json_ext.dart';
import 'sortable.dart';

class VideoData extends Sortable {
  final String id;
  final String title;
  final String image;
  final String url;
  final int minutes;

  const VideoData({
    required this.id,
    required this.title,
    required this.image,
    required this.url,
    required this.minutes,
    required super.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'image': image,
      'url': url,
      'minutes': minutes,
      'sort_order': sortOrder,
    };
  }

  factory VideoData.fromMap(dynamic data) {
    final map = decodeMap(data);

    return VideoData(
      id: map.decodeStr('id'),
      title: map.decodeStr('title'),
      image: map.decodeStr('image'),
      url: map.decodeStr('url'),
      minutes: map.decodeInt('minutes'),
      sortOrder: map.decodeInt('sort_order'),
    );
  }
}
