import 'package:flutter/material.dart';
import 'package:portfolio/version_2/components/custom_text_field.dart';
import 'package:portfolio/version_2/components/gradient_button.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();

  final emailController = TextEditingController();

  final subjectController = TextEditingController();

  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "  Name",
                    style: AppDecoration.smallerGreyText,
                  ),
                  CustomTextField(
                    hint: "",
                    enabled: true,
                    readOnly: false,
                    showCursor: true,
                    controller: nameController,
                    validator: _nameValidator,
                  )
                ],
              )),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "  Email",
                    style: AppDecoration.smallerGreyText,
                  ),
                  CustomTextField(
                    hint: "",
                    enabled: true,
                    readOnly: false,
                    showCursor: true,
                    controller: emailController,
                    validator: _emailValidator,
                    textInputType: TextInputType.emailAddress,
                  )
                ],
              )),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "  Subject",
                style: AppDecoration.smallerGreyText,
              ),
              CustomTextField(
                hint: "",
                enabled: true,
                readOnly: false,
                showCursor: true,
                controller: subjectController,
                validator: _subjectValidator,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "  Message",
                style: AppDecoration.smallerGreyText,
              ),
              CustomTextField(
                hint: "",
                enabled: true,
                readOnly: false,
                showCursor: true,
                controller: messageController,
                validator: _messageValidator,
                textInputType: TextInputType.multiline,
                maxLines: 4,
              ),
            ],
          ),

          GradientButton(
            onPressed: _onSubmitted,
            title: "Submit",
            size: 40,
          ),
        ],
      ),
    );
  }

  _nameValidator(String name) {
    if(name.trim().isEmpty){
      return "Please enter a valid name!";
    }
    return null;
  }



  _emailValidator(String email) {
    if (email.trim().isEmpty) {
      return "Please enter an email!";
    }

    // Regular expression for validating an email
    final RegExp emailRegex = RegExp(
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
    );

    if (!emailRegex.hasMatch(email)) {
      return "Please enter a valid email!";
    }

    return null; // Return null if the email is valid (no error)
  }



  _subjectValidator(String subject) {
    if(subject.trim().isEmpty){
      return "Please enter a valid subject!";
    }
    return null;
  }



  _messageValidator(String message) {
    if(message.trim().isEmpty){
      return "Please enter a valid message!";
    }
    return null;
  }



  void _onSubmitted() {

    bool? result = _formKey.currentState!.validate();

    if(result==true){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Form Submitted Successfully!")),
      );
      nameController.clear();
      emailController.clear();
      subjectController.clear();
      messageController.clear();
    }

  }
}
