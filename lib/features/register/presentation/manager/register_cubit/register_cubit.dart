import 'package:atw_project/features/register/data/repos/register_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.registerRepo) : super(RegisterInitial());
  final RegisterRepo registerRepo;

  void loginUser({required String email, required String password}) {
    try {
      emit(RegisterLoading());
      registerRepo.loginUser(email: email, password: password);
      emit(RegisterSuccess());
    } catch (e) {
      emit(RegisterError(e.toString()));
    }
  }
}
