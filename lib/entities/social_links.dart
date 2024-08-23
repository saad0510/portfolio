import '../core/extensions/json_ext.dart';

class SocialLinks {
  final String website;
  final String googleForm;
  final String meetingLink;
  final String githubLink;
  final String linkedinLink;

  const SocialLinks({
    required this.website,
    required this.googleForm,
    required this.meetingLink,
    required this.githubLink,
    required this.linkedinLink,
  });

  Map<String, dynamic> toMap() {
    return {
      'website': website,
      'google_form': googleForm,
      'meeting': meetingLink,
      'github': githubLink,
      'linkedin': linkedinLink,
    };
  }

  factory SocialLinks.fromMap(dynamic data) {
    final map = decodeMap(data);

    return SocialLinks(
      website: map.decodeStr('website'),
      googleForm: map.decodeStr('google_form'),
      meetingLink: map.decodeStr('meeting'),
      githubLink: map.decodeStr('github'),
      linkedinLink: map.decodeStr('linkedin'),
    );
  }
}
