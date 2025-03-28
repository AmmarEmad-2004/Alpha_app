import 'package:alpha_app/features/auth/data/repos/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'create_user_state.dart';

class CreateUserCubit extends Cubit<CreateUserState> {
  CreateUserCubit(this._authRepo) : super(CreateUserInitial());

  final AuthRepo _authRepo;

  Future<void> createUser(String email, String password) async {
    emit(CreateUserloading());
    final result = await _authRepo.createUser(email, password);
    result.fold(
      (failuer) => emit(CreateUserFailuer(message: failuer.message)),
      (_) => emit(CreateUserSuccess()),
    );
  }
}
