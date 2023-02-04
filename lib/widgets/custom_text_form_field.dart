import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key, this.labelText, this.hintText, this.helperText, required this.icon, 
    this.obscureText = false, this.teclado, required this.formProperty, required this.formValues,
  });
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final IconData icon;
  final TextInputType? teclado;
  final bool obscureText;

//Guardar los datos del formulario
  final String formProperty;
  final Map<String, String> formValues;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
     autofocus: false,
     decoration: InputDecoration(
       labelText: labelText,
       hintText: hintText,
       helperText: helperText,
       prefixIcon: Icon(icon),
            
     ),
     obscureText: obscureText,
     keyboardType: teclado,
     validator: (value) {
       if(value == null) return 'Campo obligatorio';
       return value.length < 7 ? 'Minimo 7 caracteres' : null;
     },
     autovalidateMode: AutovalidateMode.onUserInteraction,
     onChanged: (value) => formValues[formProperty] = value,
    );
  }
}