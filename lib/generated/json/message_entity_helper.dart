import 'package:demo_ubun/dataClasses/message_entity.dart';

messageEntityFromJson(MessageEntity data, Map<String, dynamic> json) {
	if (json['message'] != null) {
		data.message = json['message'].toString();
	}
	return data;
}

Map<String, dynamic> messageEntityToJson(MessageEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['message'] = entity.message;
	return data;
}