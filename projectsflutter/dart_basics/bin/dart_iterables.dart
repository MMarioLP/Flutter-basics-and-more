void main() {
  //Declaramos una lista

  List<int> scores = [10, 20, 30];
  print(scores[0]);

  for (var i = 0; i < scores.length; i++) {
    print(scores[i]);
  }
  print(scores);

  scores.remove(20);
  print(scores);

  scores.add(40);
  print(scores);

  print('el primer elemento es ${scores.first}');
  print('el último elemento es ${scores.last}');

  for (var score in scores) {
    print('$score');
  }

  scores.forEach((s) => print(s));
}
