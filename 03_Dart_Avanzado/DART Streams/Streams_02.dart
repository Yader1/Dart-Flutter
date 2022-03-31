import 'dart:html';

void main() {
  final Element? button = querySelector('button');
  final Element? input = querySelector('input');
  /*
  button?.onClick
    .timeout(
      Duration(seconds: 1),
      onTimeout: (sink) => sink.addError('Perdiste')
    )
    .listen(
      (event) {},
      onError: (err) => print(err)
    );
  */

  button?.onClick
    .take(3)
    .where((event) => input?.value == "chile")
    .listen((event) => print("Correcto"),
    onDone: () => print("no es correcto"));
}