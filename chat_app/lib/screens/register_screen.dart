import 'package:chat_app/constant.dart';
import 'package:chat_app/helper/show_snack_bar.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/widgets/cusom_text_field.dart';
import 'package:chat_app/widgets/custom_buttom.dart';
import 'package:chat_app/widgets/custom_title_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key, this.email, this.password});
  static String id = 'RegisterScreen';
  String? email;
  String? password;

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kPrimaryBgColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Form(
            key: formKey,
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 80),
                CustomTitleScreen(),
                SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'REGISTER',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    SizedBox(height: 15),
                    CustomTextFormField(
                      obscureText: false,
                      hintText: 'Email',
                      onChange: (data) {
                        widget.email = data;
                      },
                    ),
                    SizedBox(height: 20),
                    CustomTextFormField(
                      obscureText: true,
                      hintText: 'Password',
                      onChange: (data) {
                        widget.password = data;
                      },
                    ),
                    SizedBox(height: 20),
                    CustomButtom(
                      text: 'Register',
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          isLoading = true;
                          setState(() {});
                          try {
                            await registerUser();
                            Navigator.pushNamed(
                              context,
                              ChatScreen.id,
                              arguments: widget.email,
                            );
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              showSnackBar(context, 'Week Password');
                            } else if (e.code == 'email-already-in-use') {
                              showSnackBar(
                                context,
                                'The account already exists.',
                              );
                            }
                          } catch (e) {
                            showSnackBar(context, 'there was an error ');
                          }
                          isLoading = false;
                          setState(() {});
                        }
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'already have an account?',
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        ' Login',
                        style: TextStyle(color: Color(0xFFA6D0F2)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> registerUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
          email: widget.email!,
          password: widget.password!,
        );
  }
}
