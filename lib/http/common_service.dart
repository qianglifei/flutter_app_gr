import 'package:dio/dio.dart';
import 'package:flutter_app_gr/entity/banner_data_entity.dart';
import 'package:flutter_app_gr/entity/entity_factory.dart';
import 'package:flutter_app_gr/entity/key_service_enterprises_entity.dart';
import 'package:flutter_app_gr/entity/news_parent_list_entity.dart';
import 'package:flutter_app_gr/entity/notice_data_entity.dart';
import 'package:flutter_app_gr/entity/favourite_entity.dart';
import 'package:flutter_app_gr/entity/search_entity.dart';
import 'package:flutter_app_gr/entity/second_banner_entity.dart';
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

    ///获取首页第二个轮播
    void getBannerSecondData(Function callBack){
      dio.
      get(Api.FIRST_SECOND_BANNER).
      then((response){
          SecondBannerEntity secondBannerEntity = EntityFactory.generateOBJ(response.data);
          callBack(secondBannerEntity);
          print("首页第二个轮播：" + response.toString());
      });
    }

    ///获取重点服务企业的列表
    void getKeyServiceEnterprisesData(Function callBack,String _pageSize,String _pageNum){
        Map<String,dynamic> map = new Map();
        map.addAll({
          "pageSize":_pageSize,
          "pageNum":_pageNum
        });
       dio.
       get(Api.Key_SERVICE_ENTERPRIESE,queryParameters: map).
       then((response){
         KeyServiceEnterprisesEntity enterprisesEntity = EntityFactory.generateOBJ(response.data);
         callBack(enterprisesEntity);
         print(response.toString());
       });
    }
    ///获取新闻列表标题
    void getNewsListTitleData(Function callBack){
      dio.
      get(Api.GET_NEWS_PARENT_LIST).
      then((response){
        NewsParentListEntity newsParentListEntity = EntityFactory.generateOBJ(response.data);
        callBack(newsParentListEntity);
        print(response.toString());
      });
    }
    
    ///获取踩你喜欢列表数据
    void getLikeListData(Function callBack, String _pageSize,String _pageNum){
      Map<String,dynamic> map = new Map();
      map.addAll({
        "pageSize": _pageSize,
        "pageNum" : _pageNum
      });
      dio.get(Api.LIKE_LIST,queryParameters: map).
      then((response){
        FavouriteEntity favouriteEntity = EntityFactory.generateOBJ(response.data);
        callBack(favouriteEntity);
        print("哇哈哈" + response.toString());
      });
    }

    ///获取新闻列表数据
    void getNewsListData(Function callBack, String _fwbh,String _pageNum,String _pageSize){
      Map<String,dynamic> map = new Map();
      map.addAll({
        "flxbh" : _fwbh,
        "pageSize" : _pageSize,
        "pageNum" : _pageNum
      });
      dio.
      get(Api.GET_NEWS_LIST,queryParameters: map).
      then((response){
        FavouriteEntity favouriteEntity = EntityFactory.generateOBJ(response.data);
        callBack(favouriteEntity);
        print("哇哈哈" + response.toString());
        print("哇哈哈:" + _fwbh);
      });
    }

    void getSearchResult(Function callBack , String searchContent){
      Map<String,dynamic> map = new Map();
      map.addAll({
        "ssgjz" : searchContent
      });
      dio.
      get(Api.FIRST_SEARCH,queryParameters: map).
      then((response){
        SearchEntity entity = EntityFactory.generateOBJ(response.data);
        callBack(entity);
      });
    }
}