import 'package:flutter/material.dart';
import 'package:flutter_app_gr/ui/service_center_page/service_entity.dart';

class ServiceDataContents{
    //人才列表
    static List<ServiceEntity> mTalentsList = new List();
    //专家列表
    static List<ServiceEntity> mSpecialistList = new List();
    //就业列表
    static List<ServiceEntity> mEmploymentList = new List();
    //培训服务
    static List<ServiceEntity> mTrainList = new List();
    //档案服务
    static List<ServiceEntity> mRecordList = new List();
    //中介服务
    static List<ServiceEntity> mIntermediaryAgentList = new List();
    //综合服务
    static List<ServiceEntity> mSynthesizeList = new List();

    static const String PIC_URL_CONTRACT_US = "images/tstd.png";
    ///获取人才数据
    static List<ServiceEntity> getListTalents(){
       mTalentsList.clear();
       mTalentsList.add(ServiceEntity("images/rczcs.png","人才政策"));
       mTalentsList.add(ServiceEntity("images/gygy.png","高级人才公寓"));
       mTalentsList.add(ServiceEntity("images/qngy.png","青年人才公寓"));
       mTalentsList.add(ServiceEntity("images/rcgys.png","短期人才公寓"));
       mTalentsList.add(ServiceEntity("images/zmyzs.png","筑梦驿站"));
       mTalentsList.add(ServiceEntity("images/rclc.png","人才绿卡"));
       mTalentsList.add(ServiceEntity("images/hd.png","活动"));
       mTalentsList.add(ServiceEntity("images/ycgzz.png","引才工作站"));
       mTalentsList.add(ServiceEntity("images/xlrz.png","学历认证"));
       mTalentsList.add(ServiceEntity(PIC_URL_CONTRACT_US,"联系我们"));
       return mTalentsList;
    }
    ///获取专家数据
    static List<ServiceEntity> getListSpecialist(){
      mSpecialistList.clear();
      mSpecialistList.add(ServiceEntity("images/zjfc.png","专家风采"));
      mSpecialistList.add(ServiceEntity("images/zjjt.png","专家讲堂"));
      mSpecialistList.add(ServiceEntity("images/zjjy.png","专家建议"));
      mSpecialistList.add(ServiceEntity("images/zjfp.png","专家扶贫"));
      return mSpecialistList;
    }

    static List<ServiceEntity> getListEmploymentList (){
      mEmploymentList.clear();
      mEmploymentList.add(ServiceEntity("images/zjfc.png","专家风采"));
      mEmploymentList.add(ServiceEntity("images/zjfc.png","专家风采"));
      mEmploymentList.add(ServiceEntity("images/zjfc.png","专家风采"));
      mEmploymentList.add(ServiceEntity("images/zjfc.png","专家风采"));
      mEmploymentList.add(ServiceEntity("images/zjfc.png","专家风采"));
      mEmploymentList.add(ServiceEntity("images/zjfc.png","专家风采"));
      return mEmploymentList;
    }

}