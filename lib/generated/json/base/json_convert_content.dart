// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:demo_ubun/dataClasses/admin.dart';
import 'package:demo_ubun/generated/json/admin_helper.dart';
import 'package:demo_ubun/dataClasses/message_entity.dart';
import 'package:demo_ubun/generated/json/message_entity_helper.dart';

class JsonConvert<T> {
	T fromJson(Map<String, dynamic> json) {
		return _getFromJson<T>(runtimeType, this, json);
	}

  Map<String, dynamic> toJson() {
		return _getToJson<T>(runtimeType, this);
  }

  static _getFromJson<T>(Type type, data, json) {
    switch (type) {
			case AdminEntity:
				return adminEntityFromJson(data as AdminEntity, json) as T;
			case MessageEntity:
				return messageEntityFromJson(data as MessageEntity, json) as T;    }
    return data as T;
  }

  static _getToJson<T>(Type type, data) {
		switch (type) {
			case AdminEntity:
				return adminEntityToJson(data as AdminEntity);
			case MessageEntity:
				return messageEntityToJson(data as MessageEntity);
			}
			return data as T;
		}
  //Go back to a single instance by type
	static _fromJsonSingle<M>( json) {
		String type = M.toString();
		if(type == (AdminEntity).toString()){
			return AdminEntity().fromJson(json);
		}	else if(type == (MessageEntity).toString()){
			return MessageEntity().fromJson(json);
		}	
		return null;
	}

  //list is returned by type
	static M _getListChildType<M>(List data) {
		if(<AdminEntity>[] is M){
			return data.map<AdminEntity>((e) => AdminEntity().fromJson(e)).toList() as M;
		}	else if(<MessageEntity>[] is M){
			return data.map<MessageEntity>((e) => MessageEntity().fromJson(e)).toList() as M;
		}
		throw Exception("not fond");
	}

  static M fromJsonAsT<M>(json) {
    if (json is List) {
      return _getListChildType<M>(json);
    } else {
      return _fromJsonSingle<M>(json) as M;
    }
  }
}