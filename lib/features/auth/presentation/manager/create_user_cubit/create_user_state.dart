part of 'create_user_cubit.dart';

@immutable
sealed class CreateUserState {}

final class CreateUserInitial extends CreateUserState {}

final class CreateUserloading extends CreateUserState {}

final class CreateUserSuccess extends CreateUserState {}

final class CreateUserFailuer extends CreateUserState {
  final String message;

  CreateUserFailuer({required this.message});
}
