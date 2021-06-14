import 'package:demo_ubun/generated/json/base/json_convert_content.dart';
import 'package:demo_ubun/generated/json/base/json_field.dart';

class AdminEntity with JsonConvert<AdminEntity> {
	@JSONField(name: "ADMINID")
	int? aDMINID;
	String? registrationToken;
	String? phone;
	double? latitude;
	double? longitude;
	int? dist1;
	int? dist2;
	int? dist3;
	int? price1;
	int? price2;
	int? price3;
	int? minimumDistance;
	int? minimumPrice;
}
