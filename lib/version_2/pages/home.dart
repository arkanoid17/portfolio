import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/resources/app_colors.dart';
import 'package:portfolio/version_2/resources/app_strings.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/components/gradient_button.dart';
import 'package:portfolio/version_2/utils/app_utils.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-AppDimensions.toolbarHeight,
      padding: EdgeInsets.all(20),
      width: double.infinity,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Chip(
                          label: Text("Software Developer",style: AppDecoration.smallChipText,),
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            const Text("Hello, I'm ",style: AppDecoration.nameText,),
                            GradientText(
                              'Arkaprabha Mahata',
                              style: const TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold
                              ),
                              colors: const [
                                AppColors.colorOne,
                                AppColors.colorTwo,
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Text(AppStrings.aboutMeDesc,style: AppDecoration.smallGreyText,),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            GradientButton(title: "View projects", onPressed: (){}),
                            const SizedBox(width: 20,),
                            OutlinedButton(onPressed: (){}, child: Text("View CV",style: AppDecoration.smallBlackText,))
                          ],
                        )
                      ],
                    )
                ),
                const SizedBox(width: 40,),
                Expanded(
                    flex: 1,
                    child: SizedBox(
                      child: Center(
                          child: ClipOval(
                            child: Image.asset(
                              "assets/images/me.jpeg",
                              width: 250,
                              height: 250,
                              fit: BoxFit.cover, // Ensures the image fills the circle
                            ),
                          )
                      ),
                    )
                ),

              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                InkWell(
                  child: SvgPicture.asset(
                      width: 30,
                      height: 30,
                      "assets/images/ic_github.svg"
                  ),
                  onTap: ()=>AppUtils.navigateToUrl(AppStrings.url_github),
                ),
                const SizedBox(width: 20,),
                InkWell(
                  child: SvgPicture.asset(
                      width: 35,
                      height: 35,
                      "assets/images/ic_linked_in.svg"
                  ),
                  onTap: ()=>AppUtils.navigateToUrl(AppStrings.url_linkedin),
                ),
                const SizedBox(width: 20,),
                InkWell(
                  child: SvgPicture.asset(
                      width: 30,
                      height: 30,
                      "assets/images/ic_leetcode.svg"
                  ),
                  onTap: ()=>AppUtils.navigateToUrl(AppStrings.url_leetcode),
                ),
                const SizedBox(width: 20,),
                InkWell(
                  child: SvgPicture.asset(
                      width: 30,
                      height: 30,
                      "assets/images/ic_gmail.svg"
                  ),
                  onTap: ()=>AppUtils.navigateToEmail(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
