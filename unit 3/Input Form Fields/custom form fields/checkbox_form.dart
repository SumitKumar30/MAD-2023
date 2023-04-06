import 'package:flutter/material.dart';

class CheckBoxFormField extends FormField<bool> {
  CheckBoxFormField(
      {
      String title = '',
      FormFieldSetter<bool>? onSaved,
      FormFieldValidator<bool>? validator,
      bool initialValue = false,
      AutovalidateMode autovalidateMode = AutovalidateMode.disabled})
      : super(
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            autovalidateMode: autovalidateMode,
            builder: (FormFieldState<bool> state) {
              return Container(
                child: Column(
                  children: [
                    CheckboxListTile(
                        title: Text(title),
                        value: state.value,
                        onChanged: (bool? value) {
                          state.didChange(value);
                        }),
                    state.hasError?Text(
                            state.errorText.toString(),
                            style: TextStyle(color: Colors.red),
                          )
                        : Container()
                  ],
                ),
              );
            });
}
