import '../core/extensions/json_ext.dart';
import 'social_links.dart';
import 'statistics_data.dart';

class UserData {
  final String id;
  final String name;
  final String bio;
  final String about;
  final String email;
  final String phone;
  final String residency;
  final StatisticsData statistics;
  final SocialLinks links;
  final List<String> images;

  const UserData({
    required this.id,
    required this.name,
    required this.bio,
    required this.about,
    required this.email,
    required this.phone,
    required this.residency,
    required this.statistics,
    required this.links,
    required this.images,
  });

  const UserData.empty()
      : id = '',
        name = '',
        bio = '',
        about = '',
        email = '',
        phone = '',
        residency = '',
        statistics = const StatisticsData(
          experienceInYears: 0,
          projectsDone: 0,
          customerSatisfaction: 0,
          awardsWon: 0,
        ),
        links = const SocialLinks(
          website: '',
          googleForm: '',
          meetingLink: '',
          githubLink: '',
          linkedinLink: '',
        ),
        images = const [];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'bio': bio,
      'about': about,
      'email': email,
      'phone': phone,
      'residency': residency,
      'statistics': statistics.toMap(),
      'links': links.toMap(),
      'images': images,
    };
  }

  factory UserData.fromMap(dynamic data) {
    final map = Map.from(data ?? {});

    return UserData(
      id: map.decodeStr('id'),
      name: map.decodeStr('name'),
      bio: map.decodeStr('bio'),
      about: map.decodeStr('about'),
      email: map.decodeStr('email'),
      phone: map.decodeStr('phone'),
      residency: map.decodeStr('residency'),
      statistics: StatisticsData.fromMap(map['statistics']),
      links: SocialLinks.fromMap(map['links']),
      images: map.decodeList('images').map((e) => e.toString()).toList(),
    );
  }
}
