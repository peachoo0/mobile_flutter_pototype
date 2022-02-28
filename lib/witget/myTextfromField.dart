import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final Function validator;
  final String name;
  final Function onChanged;
  final TextEditingController controller;
  
  MyTextFormField({this.controller,this.validator,this.name,this.onChanged});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
                     controller: controller,
                      validator: validator,
                      onChanged: onChanged,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: name,
                      ),
                    );
  }
}