class SocialLinks {
  final String googleForm;
  final String meetingLink;
  final String githubLink;
  final String linkedinLink;

  const SocialLinks({
    required this.googleForm,
    required this.meetingLink,
    required this.githubLink,
    required this.linkedinLink,
  });

  Map<String, dynamic> toMap() {
    return {
      'google_form': googleForm,
      'meeting': meetingLink,
      'github': githubLink,
      'linkedin': linkedinLink,
    };
  }

  factory SocialLinks.fromMap(Map<String, dynamic> map) {
    return SocialLinks(
      googleForm: map['google_form']?.toString() ?? '',
      meetingLink: map['meeting']?.toString() ?? '',
      githubLink: map['github']?.toString() ?? '',
      linkedinLink: map['linkedin']?.toString() ?? '',
    );
  }
}
