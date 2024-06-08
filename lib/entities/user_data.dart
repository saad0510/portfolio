import 'social_links.dart';
import 'statistics_data.dart';

class UserData {
  final String name;
  final String bio;
  final String about;
  final String email;
  final String phone;
  final String residency;
  final StatisticsData statistics;
  final SocialLinks links;

  const UserData({
    required this.name,
    required this.bio,
    required this.about,
    required this.email,
    required this.phone,
    required this.residency,
    required this.statistics,
    required this.links,
  });

  const UserData.empty()
      : name = '',
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
          meetingLink: '',
          githubLink: '',
          linkedinLink: '',
        );

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'bio': bio,
      'about': about,
      'email': email,
      'phone': phone,
      'residency': residency,
      'statistics': statistics.toMap(),
      'links': links.toMap(),
    };
  }

  factory UserData.fromMap(dynamic data) {
    final map = Map.from(data ?? {});

    return UserData(
      name: map['name']?.toString() ?? '',
      bio: map['bio']?.toString() ?? '',
      about: map['about']?.toString() ?? '',
      email: map['email']?.toString() ?? '',
      phone: map['phone']?.toString() ?? '',
      residency: map['residency']?.toString() ?? '',
      statistics: StatisticsData.fromMap(map['statistics'] ?? {}),
      links: SocialLinks.fromMap(map['links'] ?? {}),
    );
  }
}
