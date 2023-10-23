import 'package:bloc/bloc.dart';

// 1. Определение событий (Events)
abstract class AuthEvent {}

class LoginEvent extends AuthEvent {
  final String username;
  final String password;

  LoginEvent({required this.username, required this.password});
}

class LogoutEvent extends AuthEvent {}

// 2. Определение состояний (States)
abstract class AuthState {}

class AuthenticatedState extends AuthState {
  final String username;

  AuthenticatedState({required this.username});
}

class UnauthenticatedState extends AuthState {}

// 3. Создание BLoC
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(UnauthenticatedState());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is LoginEvent) {
      // Здесь должна быть проверка аутентификации.
      // Если аутентификация успешна, отправьте AuthenticatedState.
      // Иначе отправьте UnauthenticatedState.
    } else if (event is LogoutEvent) {
      // Здесь можно добавить логику выхода пользователя из системы.
      yield UnauthenticatedState();
    }
  }
}
