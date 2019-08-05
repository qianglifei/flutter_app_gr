import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import 'api.dart';
import 'dio_manager.dart';
class CommonService{
    Dio dio = DioManager.singleton.dio;
    ///获取Banner数据
    void getBannerList(Function callBack){
       dio.
       get(Api.FIRST_BANNER,options: new Options()).
       then((response){
         print(response.toString());
         //callBack()
       });
    }
}