import 'package:alpha_app/features/auth/data/repos/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'signout_state.dart';

class SignoutCubit extends Cubit<SignoutState> {
  SignoutCubit(this._authRepo) : super(SignoutInitial());
  final AuthRepo _authRepo;

  Future<void> singOut() async {
    emit(SignoutLoading());
    final result = await _authRepo.signOut();
    result.fold(
      (failuer) => emit(SignoutFailuer(message: failuer.message)),
      (_) => emit(SignoutSuccess()),
    );
  }
}
