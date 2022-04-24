import 'dart:async';

class Bloc{
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  Function(String) get changeEmail => emailController.sink.add;
  Function(String) get changePassword => passwordController.sink.add;
}