import 'package:portfolio/version_2/model/work/work_project.dart';

class Work{
  String start;
  String end;
  String title;
  String company;
  String desc;
  List<String> responsibilities;
  List<WorkProject> projects;

  Work(this.start, this.end, this.title, this.company, this.desc,
      this.responsibilities, this.projects);
}