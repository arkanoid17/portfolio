import 'package:flutter/material.dart';
import 'package:portfolio/version_2/components/custom_text_field.dart';
import 'package:portfolio/version_2/components/gradient_button.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/utils/app_utils.dart';

class ContactForm extends StatefulWidget {

  final BoxConstraints constraints;

  const ContactForm({super.key, required this.constraints});

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
    return _getLayout();
  }


  _getLayout(){

    if(widget.constraints.maxWidth<AppDimensions.mobile){
      return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _nameField,
            const SizedBox(height: 10,),
            _emailField,
            const SizedBox(height: 10,),
            _subjectField,
            const SizedBox(height: 10,),
            _messageField,
            const SizedBox(height: 15,),
            GradientButton(
              onPressed: _onSubmitted,
              title: "Submit",
              size: 40,
            ),
          ],
        ),
      );
    }

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Expanded(
                  child: _nameField
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  child: _emailField
              ),
            ],
          ),
          const SizedBox(height: 10,),
          _subjectField,
          const SizedBox(height: 10,),
          _messageField,
          const SizedBox(height: 15,),
          GradientButton(
            onPressed: _onSubmitted,
            title: "Submit",
            size: 40,
          ),
        ],
      ),
    );
  }

  get _emailField => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "  Email",
        style: AppDecoration.smallerGreyText[AppUtils.getDevice(widget.constraints)],
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
  );

  get _nameField => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
       Text(
        "  Name",
        style: AppDecoration.smallerGreyText[AppUtils.getDevice(widget.constraints)],
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
  );

  get _subjectField => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
       Text(
        "  Subject",
        style: AppDecoration.smallerGreyText[AppUtils.getDevice(widget.constraints)],
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
  );

  get _messageField => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
       Text(
        "  Message",
        style: AppDecoration.smallerGreyText[AppUtils.getDevice(widget.constraints)],
      ),
      CustomTextField(
        hint: "",
        enabled: true,
        readOnly: false,
        showCursor: true,
        controller: messageController,
        validator: _messageValidator,
        textInputType: TextInputType.multiline,
        maxLines: widget.constraints.maxWidth<AppDimensions.mobile?2:4,
      ),
    ],
  );



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
