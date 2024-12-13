import 'dart:developer';

import 'package:atw_project/core/utils/helper/show_snack_bar.dart';
import 'package:atw_project/core/utils/widgets/arrow_back_button.dart';
import 'package:atw_project/features/home/presentation/views/home_view.dart';
import 'package:atw_project/features/register/presentation/manager/register_cubit/register_cubit.dart';
import 'package:atw_project/features/register/presentation/view/widgets/custom_button.dart';
import 'package:atw_project/features/register/presentation/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    super.key,
  });

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String emailAddress = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    const ArrowBackButton(),
                    const SizedBox(height: 24),
                    const Text(
                      'Let\'s Sing you in.',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Welcome back.\nYou've ben missed!",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text('Email', style: TextStyle(fontSize: 16)),
                    CustomFormTextField(
                      label: 'Email',
                      onChanged: (value) {
                        emailAddress = value;
                      },
                    ),
                    const SizedBox(height: 24),
                    const Text('Password', style: TextStyle(fontSize: 16)),
                    PasswordCustomTextField(
                      onChanged: (value) {
                        password = value;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            children: [
              CutomButton(
                label: 'Sign In',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    BlocProvider.of<RegisterCubit>(context).loginUser(
                      email: emailAddress,
                      password: password,
                    );
                    log('Email: $emailAddress, Password: $password');
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomeView(),
                      ),
                    );
                  } else {
                    showSnackBar(context, message: 'Invalid credentials');
                  }
                },
              ),
              const SizedBox(height: 10),
              RichText(
                text: const TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  children: [
                    TextSpan(
                      text: 'Register',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
