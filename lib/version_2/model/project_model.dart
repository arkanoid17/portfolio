class ProjectModel{
  String name;
  String type;
  String logo;
  String briefDesc;
  String subtitle;
  String techsUsed;
  String coverImage;
  List<String> screenshots;
  List<String> keyPoints;
  String repoLink;

  ProjectModel({
    required this.name,
    required this.type,
    required this.logo,
    required this.briefDesc,
    required this.subtitle,
    required this.techsUsed,
    required this.coverImage,
    required this.screenshots,
    required this.keyPoints,
    required this.repoLink
  });


}