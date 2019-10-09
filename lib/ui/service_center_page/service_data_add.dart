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
       mTalentsList.add(ServiceEntity("images/xlrzs.png","学历认证"));
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
    ///获取就业数据
    static List<ServiceEntity> getListEmploymentList (){
      mEmploymentList.clear();
      mEmploymentList.add(ServiceEntity("images/zgzs.png","找工作"));
      mEmploymentList.add(ServiceEntity("images/xczp.png","现场招聘"));
      mEmploymentList.add(ServiceEntity("images/ks.png","考试"));
      mEmploymentList.add(ServiceEntity("images/xyzph.png","校园招聘会"));
      mEmploymentList.add(ServiceEntity(PIC_URL_CONTRACT_US,"联系我们"));
      return mEmploymentList;
    }
    ///获取培训数据
    static List<ServiceEntity> getListTrainList (){
      mTrainList.clear();
      mTrainList.add(ServiceEntity("images/ncsyrc.png","农村实用人才"));
      mTrainList.add(ServiceEntity("images/jnrcpx.png","技能人才培训"));
      return mTrainList;
    }
    ///获取档案数据
    static List<ServiceEntity> getListRecord(){
      mRecordList.clear();
      mRecordList.add(ServiceEntity("images/grxx.png","个人档案查询"));
      mRecordList.add(ServiceEntity("images/grhj.png","个人户籍查询"));
      mRecordList.add(ServiceEntity("images/kjddh.png","档案转入申请"));
      mRecordList.add(ServiceEntity("images/datg.png","档案托管证明"));
      mRecordList.add(ServiceEntity("images/dazs.png","档案政审证明"));
      mRecordList.add(ServiceEntity("images/qtqk.png","其他情况证明"));
      mRecordList.add(ServiceEntity("images/dyhd.png","党员活动"));
      mRecordList.add(ServiceEntity("images/dyjn.png","党费缴纳"));
      mRecordList.add(ServiceEntity("images/dyzm.png","党员证明"));
      mRecordList.add(ServiceEntity("images/dzzgx.png","我的支部"));
      mRecordList.add(ServiceEntity("images/dzcy.png","党组织成员"));
      mRecordList.add(ServiceEntity(PIC_URL_CONTRACT_US,"联系我们"));
      return mRecordList;
    }

}