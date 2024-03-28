import 'package:bloc/bloc.dart';

part 'auth_events.dart';
part 'auth_states.dart';

class NotelyAuthBloc extends Bloc<NotelyAuthEvents, NotelyAuthStates> {
  NotelyAuthBloc() : super(NotelyInitialState());
}
