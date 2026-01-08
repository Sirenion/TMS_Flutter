import 'package:flutter/material.dart';
import 'package:homework/pages/card_page.dart';
import 'package:homework/widgets/avatar.dart';
import 'package:homework/widgets/text_view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool obscurePass = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _changeObscure() {
    setState(() {
      obscurePass = !obscurePass;
    });
  }

  void _submitForm() {
    final result = _formKey.currentState!.validate();

    if (result) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text("Форма отправлена")
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        ),
        body: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: .start,
                children: [
                  Avatar(),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextView(
                      input: "Вход в систему",
                    bold: true,
                    textSize: 25.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail, color: Colors.black, size: 20.0),
                            labelText: "Email",
                            labelStyle: TextStyle(color: Colors.black, fontSize: 16.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(width: 2.0, color: Colors.grey)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(width: 2.0, color: Colors.grey)
                            ),
                          ),
                          onTapOutside: ((event) {
                            FocusScope.of(context).unfocus();
                          }),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Введите Email";
                            }
                            if (!value.contains('@')) {
                              return "Введите корректный Email";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock, color: Colors.black, size: 20.0),
                              suffixIcon: IconButton(
                                  onPressed: _changeObscure,
                                  icon: switch(obscurePass) {
                                    true => Icon(Icons.visibility),
                                    false => Icon(Icons.visibility_off)
                                  }),
                              labelText: "Пароль",
                              labelStyle: TextStyle(color: Colors.black, fontSize: 16.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(width: 2.0, color: Colors.grey)
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(width: 2.0, color: Colors.grey)
                              )
                          ),
                          onTapOutside: ((event) {
                            FocusScope.of(context).unfocus();
                          }),
                          obscureText: obscurePass,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Введите пароль";
                            }
                            if (value.length < 6) {
                              return "Пароль должен содержать минимум 6 символов";
                            }
                            return null;
                          },
                        ),
                        Align(
                          alignment: .centerRight,
                          child: TextButton(
                              onPressed: (){},
                              child: TextView(
                                  input: "Забыли пароль?",
                                  textColor: Colors.lightBlueAccent,
                                textSize: 14.0,
                                bold: true,
                              )
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 50.0,
                          child:
                            ElevatedButton(
                                onPressed: (){
                                  _submitForm();
                                },
                                style: ButtonStyle(
                                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5.0),
                                            side: BorderSide(color: Colors.transparent)
                                        )
                                    )
                                ),
                                child: TextView(
                                    input: "Войти",
                                  textSize: 16.0,
                                  textColor: Colors.deepPurple,
                                  bold: true,
                                )
                            ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisSize: .max,
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Expanded(
                                child: Divider()
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5.0),
                              child: TextView(
                                  input: "или",
                                bold: true,
                                textSize: 12.0,
                                textColor: Colors.grey,
                              ),
                            ),
                            Expanded(
                                child: Divider()
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push( MaterialPageRoute<void>(
                                  builder: (context) => const CardPage()));
                            },
                            child: TextView(
                              input: "Создать новый аккаунт",
                              textSize: 16.0,
                              textColor: Colors.deepPurple,
                              bold: true,
                            )
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
        )
    );
  }
}
