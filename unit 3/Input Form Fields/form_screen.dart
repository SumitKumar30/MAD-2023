import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms'),
      ),
      body: Column(
        children: [
          Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    onSaved: (String? value) {
                      print("Value: $value");
                    },
                  ),
                  TextFormField(
                    onSaved: (String? value) {
                      print("Value: $value");
                    },
                  ),
                  TextFormField(
                    onSaved: (String? value) {
                      print("Value: $value");
                    },
                  ),
                  TextFormField(
                    initialValue: "Hi",
                    onSaved: (String? value) {
                      print("Value: $value");
                    },
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Provide a value";
                      }
                      return null;  // successful validation
                    },
                  ),
                ],
              )),
          ElevatedButton(
              onPressed: () {
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                }
                  // formKey.currentState!.save();
              },
              child: Text('Continue'))
        ],
      ),
    );
  }
}
