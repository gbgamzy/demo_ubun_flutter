import 'package:demo_ubun/dataClasses/admin.dart';

adminEntityFromJson(AdminEntity data, Map<String, dynamic> json) {
	if (json['ADMINID'] != null) {
		data.aDMINID = json['ADMINID'] is String
				? int.tryParse(json['ADMINID'])
				: json['ADMINID'].toInt();
	}
	if (json['registrationToken'] != null) {
		data.registrationToken = json['registrationToken'].toString();
	}
	if (json['phone'] != null) {
		data.phone = json['phone'].toString();
	}
	if (json['latitude'] != null) {
		data.latitude = json['latitude'] is String
				? double.tryParse(json['latitude'])
				: json['latitude'].toDouble();
	}
	if (json['longitude'] != null) {
		data.longitude = json['longitude'] is String
				? double.tryParse(json['longitude'])
				: json['longitude'].toDouble();
	}
	if (json['dist1'] != null) {
		data.dist1 = json['dist1'] is String
				? int.tryParse(json['dist1'])
				: json['dist1'].toInt();
	}
	if (json['dist2'] != null) {
		data.dist2 = json['dist2'] is String
				? int.tryParse(json['dist2'])
				: json['dist2'].toInt();
	}
	if (json['dist3'] != null) {
		data.dist3 = json['dist3'] is String
				? int.tryParse(json['dist3'])
				: json['dist3'].toInt();
	}
	if (json['price1'] != null) {
		data.price1 = json['price1'] is String
				? int.tryParse(json['price1'])
				: json['price1'].toInt();
	}
	if (json['price2'] != null) {
		data.price2 = json['price2'] is String
				? int.tryParse(json['price2'])
				: json['price2'].toInt();
	}
	if (json['price3'] != null) {
		data.price3 = json['price3'] is String
				? int.tryParse(json['price3'])
				: json['price3'].toInt();
	}
	if (json['minimumDistance'] != null) {
		data.minimumDistance = json['minimumDistance'] is String
				? int.tryParse(json['minimumDistance'])
				: json['minimumDistance'].toInt();
	}
	if (json['minimumPrice'] != null) {
		data.minimumPrice = json['minimumPrice'] is String
				? int.tryParse(json['minimumPrice'])
				: json['minimumPrice'].toInt();
	}
	return data;
}

Map<String, dynamic> adminEntityToJson(AdminEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['ADMINID'] = entity.aDMINID;
	data['registrationToken'] = entity.registrationToken;
	data['phone'] = entity.phone;
	data['latitude'] = entity.latitude;
	data['longitude'] = entity.longitude;
	data['dist1'] = entity.dist1;
	data['dist2'] = entity.dist2;
	data['dist3'] = entity.dist3;
	data['price1'] = entity.price1;
	data['price2'] = entity.price2;
	data['price3'] = entity.price3;
	data['minimumDistance'] = entity.minimumDistance;
	data['minimumPrice'] = entity.minimumPrice;
	return data;
}