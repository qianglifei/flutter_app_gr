import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app_gr/entity/banner_data_entity.dart';
import 'package:flutter_app_gr/entity/entity_factory.dart';
import 'package:flutter_app_gr/entity/notice_data_entity.dart';

import 'api.dart';
import 'dio_manager.dart';
class CommonService{
    Dio dio = DioManager.singleton.dio;
    ///获取首页Banner数据
    void getBannerList(Function callBack){
       dio.
       get(Api.FIRST_BANNER,options: new Options()).
       then((response){
         BannerDataEntity bannerDataEntity = EntityFactory.generateOBJ(response.data);
         callBack(bannerDataEntity);
         print(response.toString());
       });
    }
    ///获取首页通知公告
    void getNoticeData(Function callBack){
       dio.
       get(Api.MASS_ANNOUNCEMENT).
       then((response){
         NoticeDataEntity noticeDataEntity =  EntityFactory.generateOBJ(response.data);
         callBack(noticeDataEntity);
         print(response.toString());
       });
    }
}