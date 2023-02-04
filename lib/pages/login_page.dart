import 'package:flutter/material.dart';
import 'package:flutter_sign_in/pages/welcome_page.dart';
import 'package:flutter_sign_in/widgets/custom_text_form_field.dart';

class Login_Page extends StatelessWidget {
  Login_Page({super.key});

  final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

  final Map<String, String> formulario = {
    'email': 'xxxxx@gmail.com',
    'password': 'xxxxxx',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                   CustomTextFormField(icon: Icons.account_circle,
                    hintText: "Introduce aqui tu correo",
                    labelText: "Correo electrónico",
                    helperText: "Correo",
                    obscureText: false,
                    teclado: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formulario),
                   Divider(),
                   CustomTextFormField(icon: Icons.password,
                   helperText: "Contraseña",
                   hintText: "Introduce aqui tu contraseña",
                   labelText: "Contraseña",
                   obscureText: true,
                   formProperty: 'password',
                   formValues: formulario,),
                   Divider(),
                   ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if(!myFormKey.currentState!.validate()){
                        print('Rellene correctamente el formulario');
                        return;
                      }
                      else{
                        Navigator.pushAndRemoveUntil(context,
                         MaterialPageRoute(builder: (context) => WelcomePage(formulario: formulario,
                         ),), (route) => false);
                      }
                    },
                    child: Center(
                      child: Text("Registrar"),
                    ),
                   ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


