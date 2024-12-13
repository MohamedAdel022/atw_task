import 'package:atw_project/features/register/data/repos/register_repo_impl.dart';
import 'package:atw_project/features/register/presentation/manager/register_cubit/register_cubit.dart';
import 'package:atw_project/features/register/presentation/view/sign_in_view.dart';
import 'package:atw_project/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const AtwProject());
}

class AtwProject extends StatelessWidget {
  const AtwProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => RegisterCubit(RegisterRepoImpl()),
        child: const SignInView(),
      ),
    );
  }
}
