part of 'auth_bloc.dart';

sealed class NotelyAuthStates {}

class NotelyInitialState extends NotelyAuthStates {}

class AuthSuccessState extends NotelyAuthStates {}

class AuthLoadingState extends NotelyAuthStates {}

class AuthFailureState extends NotelyAuthStates {
  String errorMessage;

  AuthFailureState({
    required this.errorMessage,
  });
}
