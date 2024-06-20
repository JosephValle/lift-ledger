import "package:bloc/bloc.dart";
import "package:meta/meta.dart";

import "../../../models/user_model.dart";

part "auth_event.dart";

part "auth_state.dart";

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  User? user;

  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
