import 'package:flutter/foundation.dart';
import 'package:mahs_yes_no_app/domain/entities/message.dart';

class YesNoModel {
  final String answer;
  final bool forced;
  final String image;

  YesNoModel({required this.answer, required this.forced, required this.image});

  factory YesNoModel.fromJsonToMap(Map<String, dynamic> json) => YesNoModel(
      answer: json['answer'], forced: json['forced'], image: json['image']);

  Map<String, dynamic> toJson() =>
      {"answer": answer, "forced": forced, "image": image};

  Message toMessageEntity() => Message(
      text: _translateAnswer(answer), fromWho: FromWho.her, imagenUrl: image);

  String _translateAnswer(String answer) {
    switch (answer.toLowerCase()) {
      case 'yes':
        return 'Si';
      case 'no':
        return 'No';
      case 'maybe':
        return 'Tal Vez';
      default:
        return answer;
    }
  }
}
