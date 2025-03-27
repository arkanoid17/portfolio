import 'package:flutter/material.dart';
import 'package:portfolio/version_2/components/contact_form.dart';
import 'package:portfolio/version_2/components/custom_text_field.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/resources/app_strings.dart';

class ContactMe extends StatelessWidget {



  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.08,right:MediaQuery.of(context).size.width*0.08),
      width: double.infinity,
      height: MediaQuery.of(context).size.height-AppDimensions.toolbarHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Chip(label: Text("Contact",style: AppDecoration.smallChipText,)),
          const SizedBox(
            height: 10,
          ),
          const Text("My Contact",style: AppDecoration.sectionHeaderText,),
          const Text("Interested in working together or have any questions?",style: AppDecoration.smallGreyText,),
          const SizedBox(
            height: 40,
          ),

          Container(
            decoration: AppDecoration.cardDecorLight,
            height: MediaQuery.of(context).size.height*0.6,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: AppDecoration.gradDecorLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Contact Information",style: AppDecoration.largeWhite,),
                      const SizedBox(height: 40,),

                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white.withOpacity(0.4)
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Text(AppStrings.url_linkedin.replaceAll("https://", "").replaceAll("www.", ""),style: AppDecoration.smallerWhiteText,)
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white.withOpacity(0.4)
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Text(AppStrings.url_github.replaceAll("https://", "").replaceAll("www.", ""),style: AppDecoration.smallerWhiteText,)
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white.withOpacity(0.4)
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Text("mahata65@gmail.com",style: AppDecoration.smallerWhiteText,)
                        ],
                      ),

                    ],
                  ),
                ),
                Expanded(
                    flex:1,
                    child: Container(
                      padding: EdgeInsets.all(25),
                      child: ContactForm(),
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
