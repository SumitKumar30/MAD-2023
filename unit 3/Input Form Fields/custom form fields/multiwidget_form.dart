import 'package:first_app/password_reset_form_field.dart';
import 'package:flutter/material.dart';

import 'checkbox_form.dart';
import 'model/passwords.dart';

class MultiWidgetForm extends StatefulWidget {
  const MultiWidgetForm({Key? key}) : super(key: key);

  @override
  State<MultiWidgetForm> createState() => _MultiWidgetFormState();
}

class _MultiWidgetFormState extends State<MultiWidgetForm> {
  var formKey = GlobalKey<FormState>();
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        title: Text('MultiWidget Form'),
      ),
      body: Column(
        children: [
          Form(
              key: formKey,
              // autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                  TextFormField(
                    initialValue: '',
                    autovalidateMode: AutovalidateMode.always,
                    validator: (String? value) {
                      print("Validating name field...");
                      if (value!.isEmpty) {
                        return "Provide your name";
                      }
                      return null; // successful validation
                    },
                    decoration: const InputDecoration(labelText: "Name"),
                  ),
                  TextFormField(
                    initialValue: '',
                    autovalidateMode: AutovalidateMode.always,
                    validator: (String? value) {
                      print("Validating email field...");
                      var regex = RegExp(r"^[A-Za-z0-9]+@[A-Za-z]+\.[A-Za-z]+$");
                      if (!regex.hasMatch(value!)) {
                        return "Provide a valid email";
                      }
                      return null; // successful validation
                    },
                    decoration: const InputDecoration(labelText: "Email"),
                  ),
                  TextFormField(
                    initialValue: '',
                    autovalidateMode: AutovalidateMode.always,
                    maxLength: 200,
                    maxLines: 5,
                    keyboardType: TextInputType.multiline,
                    validator: (String? value) {
                      print("Validating message field...");
                      if (value!.isEmpty) {
                        return "Input your message";
                      }
                      return null; // successful validation
                    },
                    decoration: const InputDecoration(labelText: "Message"),
                  ),
                  PasswordResetFormField(
                    initialValue: Passwords(),
                    onSaved: (Passwords? passwords) {
                      print("Password: ${passwords?.password}");
                    },
                    validator: (Passwords? passwords) {
                      if (passwords!.nonEmpty()) {
                        if (passwords.match()) {
                          if (passwords.valid()) {
                            return null;
                          }
                          return "Passwords should be 8 characters long";
                        }
                        return "Passwords should be same";
                      }
                      return "Passwords should not be empty";
                    },
                    autovalidateMode: AutovalidateMode.always,
                  ),
                  CheckBoxFormField(
                    title: "I agree to change password",
                    onSaved: (bool? checked) {
                      print("Checkbox: $checked");
                    },
                    validator: (bool? value) {
                      return value! ? null : "You must check this";
                    },
                    autovalidateMode: AutovalidateMode.always,
                  )
                ],
              )),
          ElevatedButton(
              onPressed: () {
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                }
                // formKey.currentState!.save();
              },
              child: Text('Process'))
        ],
      ),
    );
  }
}
