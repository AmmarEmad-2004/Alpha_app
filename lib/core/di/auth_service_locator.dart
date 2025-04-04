import 'package:alpha_app/features/auth/data/repos/auth_repo_implementation.dart';
import 'package:get_it/get_it.dart';
import 'package:firebase_auth/firebase_auth.dart';

final getIt = GetIt.instance;

void setup() {
  // تسجيل FirebaseAuth أولاً
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);

  // تسجيل AuthRepo وتمرير FirebaseAuth له بالطريقة الصحيحة
  getIt.registerLazySingleton<AuthRepoImplementation>(
    () => AuthRepoImplementation(getIt<FirebaseAuth>()),
  );
}
