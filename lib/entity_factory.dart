import 'package:flutter_app_gr/entity/banner_data_entity.dart';
import 'package:flutter_app_gr/entity/key_service_enterprises_entity.dart';
import 'package:flutter_app_gr/entity/notice_data_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "BannerDataEntity") {
      return BannerDataEntity.fromJson(json) as T;
    } else if (T.toString() == "KeyServiceEnterprisesEntity") {
      return KeyServiceEnterprisesEntity.fromJson(json) as T;
    } else if (T.toString() == "NoticeDataEntity") {
      return NoticeDataEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}