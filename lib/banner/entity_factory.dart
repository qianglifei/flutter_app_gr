import 'banner_data_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "BannerDataEntity") {
      return BannerDataEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}