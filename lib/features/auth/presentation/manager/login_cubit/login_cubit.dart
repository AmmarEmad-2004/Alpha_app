import 'package:alpha_app/features/auth/data/repos/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authRepo) : super(LoginInitial());

  final AuthRepo _authRepo;

  Future<void> login(String email, String password) async {
    emit(LoginLoading());
    final result = await _authRepo.signin(email, password);
    result.fold(
      (failuer) => emit(LoginFailuer(message: failuer.message)),
      (_) => emit(LoginSuccess()),
    );
  }
}
