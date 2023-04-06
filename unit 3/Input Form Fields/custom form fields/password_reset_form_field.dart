import 'package:first_app/model/passwords.dart';
import 'package:flutter/material.dart';

class PasswordResetFormField extends FormField<Passwords>{
  PasswordResetFormField({
    FormFieldSetter<Passwords>? onSaved,
    FormFieldValidator<Passwords>? validator,
    Passwords? initialValue,
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
  }) : super(
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            autovalidateMode: autovalidateMode,
            builder: (FormFieldState<Passwords> state) {
              return Container(
                child: Column(
                  children: [
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: "Password"),
                      onChanged: (String value) {
                        state.value?.password = value;
                        state.didChange(state.value);
                      },
                    ),
                    TextField(
                      obscureText: true,
                      decoration:
                          InputDecoration(labelText: "Confirm Password"),
                      onChanged: (String value) {
                        state.value?.confirmPassword = value;
                        state.didChange(state.value);
                      },
                    ),
                    state.hasError
                        ? Text(
                            state.errorText.toString(),
                            style: TextStyle(color: Colors.red),
                          )
                        : Container()
                  ],
                ),
              );
            });
}