import 'package:bloc/bloc.dart';
import 'package:notely/data/api/auth_api.dart';

part 'auth_events.dart';
part 'auth_states.dart';

class NotelyAuthBloc extends Bloc<NotelyAuthEvents, NotelyAuthStates> {
  NotelyAuthBloc() : super(NotelyInitialState()) {
    on<CreateAccountRequestEvent>((event, emit) async {
      String email = event.email;
      String username = event.username;
      String password = event.password;

      if (username.length < 6) {
        emit(
          AuthFailureState(
              errorMessage: "Username Must be at least 6 characters"),
        );
      } else if (password.length < 6) {
        emit(
          AuthFailureState(
              errorMessage: "Password Must be at least 6 characters"),
        );
      }else if (!email.contains("@")){
        emit(
          AuthFailureState(
              errorMessage: "Please check your email"),
        );
      }
      else {
        // AuthApi.createAccount(
        //   email: email,
        //   username: username,
        //   password: password,
        // );
      }
    });
  }
}
