import 'package:dio/dio.dart';
import 'package:mahs_yes_no_app/domain/entities/message.dart';
import 'package:mahs_yes_no_app/infraestructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  final dio = Dio();

  Future<Message> getAnswer() async {
    final response = await Dio().get('https://yesno.wtf/api');

    final yesNomodel = YesNoModel.fromJsonToMap(response.data);

    return yesNomodel.toMessageEntity();
  }
}
