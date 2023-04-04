import 'package:flutter/material.dart';

class ValidatingForm extends StatefulWidget {
  const ValidatingForm({Key? key}) : super(key: key);

  @override
  State<ValidatingForm> createState() => _ValidatingFormState();
}

class _ValidatingFormState extends State<ValidatingForm> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validations'),
      ),
      body: Column(
        children: [
          Form(
              key: formKey,
              // autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                   TextFormField(
                     onSaved: (String? value) {
                       print("Value: $value");
                     },
                   ),
                  TextFormField(
                    initialValue: "",
                    validator: (String? value) {
                      print("Validator called: $value");
                      if (value!.isEmpty) {
                        return "Provide a value";
                      }
                      return null; // successful validation
                    },
                    autovalidateMode: AutovalidateMode.always,
                  ),
                ],
              )),
          ElevatedButton(
              onPressed: () {
                formKey.currentState!.validate();
                formKey.currentState!.save();
              },
              child: Text('Process'))
        ],
      ),
    );
  }
}
