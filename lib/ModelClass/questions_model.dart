class QuestionsModel
{
  String? category;
  String? difficulty;
  String? question;
  String? type;
  String? correctAnswer;
  List<String>? incorrectAnswers;

  QuestionsModel(
      {
        this.difficulty,
        this.question,
        this.category,
        this.type,
        this.correctAnswer,
        this.incorrectAnswers
      }
    );

  QuestionsModel.fromJson(dynamic json)
  {
    category = json["category"];
    type = json["type"];
    difficulty = json["difficulty"];
    question = json["question"];
    correctAnswer = json["correct_answer"];
    incorrectAnswers = json["incorrect_answers"] != null ? json["incorrect_answers"].cast<String>() : [];
  }

  Map<String, dynamic> toJson()
  {
    var map = <String, dynamic>{};
    map["category"] = category;
    map["difficulty"] = difficulty;
    map["question"] = question;
    map["type"] = type;
    map["correct_answer"] = correctAnswer;
    map["incorrect_answers"] = incorrectAnswers;
    return map;
  }

}