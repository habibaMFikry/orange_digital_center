part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitialState extends RegisterState {}

class RegisterSuccessState extends RegisterState {}

class RegisterErrorState extends RegisterState {}

class RegisterLoadingState extends RegisterState {}

class VisiblePasswordState extends RegisterState {}

class VisibleConfirmPasswordState extends RegisterState {}

class ChangeGenderState extends RegisterState {}
