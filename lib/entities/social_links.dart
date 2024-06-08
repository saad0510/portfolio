class SocialLinks {
  final String meetingLink;
  final String githubLink;
  final String linkedinLink;

  const SocialLinks({
    required this.meetingLink,
    required this.githubLink,
    required this.linkedinLink,
  });

  Map<String, dynamic> toMap() {
    return {
      'meeting': meetingLink,
      'github': githubLink,
      'linkedin': linkedinLink,
    };
  }

  factory SocialLinks.fromMap(Map<String, dynamic> map) {
    return SocialLinks(
      meetingLink: map['meeting']?.toString() ?? '',
      githubLink: map['github']?.toString() ?? '',
      linkedinLink: map['linkedin']?.toString() ?? '',
    );
  }
}
