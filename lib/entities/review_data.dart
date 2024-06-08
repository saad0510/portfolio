class ReviewData {
  final String username;
  final String imageUrl;
  final String position;
  final String company;
  final String companyUrl;
  final int rating;
  final String text;

  const ReviewData({
    required this.username,
    required this.imageUrl,
    required this.position,
    required this.company,
    required this.companyUrl,
    required this.rating,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'image_url': imageUrl,
      'position': position,
      'company': company,
      'company_url': companyUrl,
      'rating': rating,
      'text': text,
    };
  }

  factory ReviewData.fromMap(dynamic data) {
    final map = Map.from(data ?? {});

    return ReviewData(
      username: map['username']?.toString() ?? '',
      imageUrl: map['image_url']?.toString() ?? '',
      position: map['position']?.toString() ?? '',
      company: map['company']?.toString() ?? '',
      companyUrl: map['company_url']?.toString() ?? '',
      rating: int.tryParse(map['rating']?.toString() ?? '') ?? 0,
      text: map['text']?.toString() ?? '',
    );
  }
}
