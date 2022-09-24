import 'dart:ffi';

class CurrentTest {
  final Int testID;
  final String testName;
  final DateTime startDate;
  final DateTime finishDate;
  // + массив вопросов с массивом ответов внутри

  CurrentTest(
      {required this.testID,
      required this.testName,
      required this.startDate,
      required this.finishDate});

  // метод вычисления правильного ответа
  correctAnswer(Int question) {
    null;
  }

  // метод передачи результата теста в БД
  transmittingTestResult() {
    null;
  }
}
