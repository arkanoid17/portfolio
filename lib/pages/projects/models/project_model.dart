class ProjectModel{
  String name;
  String type;
  String logo;
  String briefDesc;
  String techsUsed;
  List<String> screenshots;
  List<String> keyPoints;
  String repoLink;

  ProjectModel({
    required this.name,
    required this.type,
    required this.logo,
    required this.briefDesc,
    required this.techsUsed,
    required this.screenshots,
    required this.keyPoints,
    required this.repoLink
  });


}