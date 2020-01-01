import 'questions.dart';

class QuestionBank {
  int _index = 0;

  List<Questions> _questions = [
    Questions('Electrons are larger than molecules.', false),
    Questions('The Atlantic Ocean is the biggest ocean on the planet.', false),
    Questions('Sharks are mammals', false),
    Questions('Floatation separates mixtures based on density.', true),
    Questions('Spiders have six legs.', false),
    Questions('The chemical make up food often changes when you cook it.', true),
    Questions('The human skeleton is made up of less than 100 bones.', false),
    Questions('Kelvin is a measure of temperature.', true),
    Questions('Molecules are chemically bonded.', true),
    Questions('Atomic bombs work by atomic fission.', true),
    Questions('Herbivores eat meat.', false),
    Questions('Mount Kilimanjaro is the tallest mountain in the world.', false),
    Questions('The study of plants is known as botany.', true),
  ];

  void next() {
    _index += 1;
  }

  String getQuestionText() {
    return _questions[_index].questionText;
  }

  bool getCorrectAnswer() {
    return _questions[_index].answer;
  }

  bool isFinished() {
    if (_index + 1 == _questions.length) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _index = 0;
  }
}
