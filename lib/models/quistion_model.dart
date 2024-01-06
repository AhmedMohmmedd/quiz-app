class Quistion {
  final String quistionText;
  final List<Answer> quistionAnswersList;

  Quistion(this.quistionText, this.quistionAnswersList);
}

class Answer {
  final String answerText;
  final bool isTrue;

  Answer(this.answerText, this.isTrue);
}

List<Quistion> getQuistionList() {
  List<Quistion> items = [];
  items.add(
    Quistion(
      'what is the capital of Egypte',
      [
        Answer('cairo', true),
        Answer('alex', false),
        Answer('jkk', false),
        Answer('llll', false),
      ],
    ),
  );
  items.add(
    Quistion(
      'what is the capital of use',
      [
        Answer('cairo', false),
        Answer('alex', true),
        Answer('jkk', false),
        Answer('llll', false),
      ],
    ),
  );
  items.add(
    Quistion(
      'How are You',
      [
        Answer('Ahmed', true),
        Answer('Ali', false),
        Answer('max', false),
        Answer('demo', false),
      ],
    ),
  );
  return items;
}
