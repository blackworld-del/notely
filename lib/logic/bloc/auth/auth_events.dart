part of 'auth_bloc.dart';

sealed class NotelyAuthEvents {}

// create account request
class CreateAccountRequestEvent extends NotelyAuthEvents {
  
  String email, username, password;

  CreateAccountRequestEvent({
    required this.email,
    required this.username,
    required this.password,
  });


}

// login to user account request
class LoginRequestEvent extends NotelyAuthEvents {}
