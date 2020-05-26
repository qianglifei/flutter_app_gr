import 'package:flutter_app_gr/entity/news_parent_list_entity.dart';

import 'banner_data_entity.dart';
import 'key_service_enterprises_entity.dart';
import 'notice_data_entity.dart';
import 'favourite_entity.dart';
import 'second_banner_entity.dart';
import 'search_entity.dart';
import 'banner_news_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "BannerDataEntity") {
      return BannerDataEntity.fromJson(json) as T;
    } else if(T.toString() == "NoticeDataEntity"){
      //类型转换
      return NoticeDataEntity.fromJson(json) as T;
    } else if(T.toString() == "KeyServiceEnterprisesEntity"){
      //类型转换
      return KeyServiceEnterprisesEntity.fromJson(json) as T;
    } else if(T.toString() == "NewsParentListEntity"){
      return NewsParentListEntity.fromJson(json) as T;
    }else if (T.toString() == "FavouriteEntity") {
      return FavouriteEntity.fromJson(json) as T;
    }else if (T.toString() == "SecondBannerEntity") {
      return SecondBannerEntity.fromJson(json) as T;
    } else if (T.toString() == "SearchEntity") {
      return SearchEntity.fromJson(json) as T;
    }else if(T.toString() == "BannerNewsEntity"){
      return null;
    } else {
      return null;
    }
  }
}
