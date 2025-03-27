import 'package:flutter/material.dart';
import 'package:portfolio/version_2/components/projects_and_experience.dart';
import 'package:portfolio/version_2/components/toolbar_buttons.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/resources/app_strings.dart';

class Skills extends StatefulWidget {

  final GlobalKey skillsKey;

  const Skills({super.key, required this.skillsKey});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {

  int selected = 1;
  List<List<String>>  skills = [
    ["Android","Flutter","HTML","CSS","Javascript"],
    ["Spring","SpringBoot","Java","Python","Django","MySQL","Postgres"],
    ["Android Studio","IntelliJ","PyCharm","VS code","AWS","Git","Firebase"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      key: widget.skillsKey,
      padding: EdgeInsets.only(left: 20,right:20),
      width: double.infinity,
      height: MediaQuery.of(context).size.height-AppDimensions.toolbarHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Chip(label: Text("Skills",style: AppDecoration.smallChipText,)),
          const SizedBox(
            height: 10,
          ),
          const Text("My Skills",style: AppDecoration.sectionHeaderText,),
          const Text("Below is depicted my skills that I acquired throughot my career.",style: AppDecoration.smallGreyText,),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("My History",style: AppDecoration.mediumBlackText,),
                      Text(AppStrings.skillDesc,style: AppDecoration.smallGreyText,),
                      const SizedBox(height: 20,),
                      Row(

                        children: [
                          Container(
                            padding: const EdgeInsets.only(top:10,left:10,right:30,bottom:10),
                            decoration: AppDecoration.cardDecorLight,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("6+",style: AppDecoration.largeColorOneText,),
                                Text("Years of experience",style: AppDecoration.smallBlackText,)
                              ],
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Container(
                            padding: const EdgeInsets.only(top:10,left:10,right:30,bottom:10),
                            decoration: AppDecoration.cardDecorLight,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("10+",style: AppDecoration.largeColorTwoText,),
                                Text("Projects completed",style: AppDecoration.smallBlackText,)
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  )
              ),
              const SizedBox(width: 30,),
              Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("",style: AppDecoration.mediumBlackText,),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: AppDecoration.cardDecorLight,
                          child: Row(
                            children: [
                              Expanded(
                                  child: ToolbarButton(
                                      title: "Frontend",
                                      selected: selected,
                                      onPressed: _onTabChanged,
                                      index: 1
                                  )
                              ),
                              const SizedBox(width: 20,),
                              Expanded(
                                child: ToolbarButton(
                                    title: "Backend",
                                    selected: selected,
                                    onPressed: _onTabChanged,
                                    index: 2
                                ),
                              ),
                              const SizedBox(width: 20,),
                              Expanded(
                                child: ToolbarButton(
                                    title: "Software",
                                    selected: selected,
                                    onPressed: _onTabChanged,
                                    index: 3
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                        height: 20,
                        ),
                        SizedBox(
                          height: 250,
                          child: GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3, // Number of columns
                              crossAxisSpacing: 10, // Space between columns
                              mainAxisSpacing: 10, // Space between rows
                              childAspectRatio: 4, // Aspect ratio of grid items
                            ),
                            itemBuilder: (context,index)=>ProjectsAndExperience(title: skills[selected-1][index],),
                            itemCount: skills[selected-1].length,
                          ),
                        )
                      ],
                    ),
                  )
              ),
            ],
          )
        ],
      ),
    );
  }

  _onTabChanged(int index){
    setState(() {
      selected = index;
    });
  }
}
