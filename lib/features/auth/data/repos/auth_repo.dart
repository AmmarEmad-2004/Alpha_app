import 'package:alpha_app/core/errors/auth_failuer.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<AuthFailure, void>> createUser(String email, String password);
  Future<Either<AuthFailure, void>> signin(String email, String password);
  Future<Either<AuthFailure, void>> signOut();
}
