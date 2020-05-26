import 'package:flutter_app_gr/entity/banner_news_detail_entity.dart';

bannerNewsDetailEntityFromJson(BannerNewsDetailEntity data, Map<String, dynamic> json) {
	if (json['returnCode'] != null) {
		data.returnCode = json['returnCode']?.toInt();
	}
	if (json['returnMsg'] != null) {
		data.returnMsg = json['returnMsg']?.toString();
	}
	if (json['returnData'] != null) {
		data.returnData = new BannerNewsDetailReturnData().fromJson(json['returnData']);
	}
	if (json['pageCount'] != null) {
		data.pageCount = json['pageCount']?.toInt();
	}
	if (json['rowsCount'] != null) {
		data.rowsCount = json['rowsCount']?.toInt();
	}
	if (json['startNum'] != null) {
		data.startNum = json['startNum']?.toInt();
	}
	return data;
}

Map<String, dynamic> bannerNewsDetailEntityToJson(BannerNewsDetailEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['returnCode'] = entity.returnCode;
	data['returnMsg'] = entity.returnMsg;
	if (entity.returnData != null) {
		data['returnData'] = entity.returnData.toJson();
	}
	data['pageCount'] = entity.pageCount;
	data['rowsCount'] = entity.rowsCount;
	data['startNum'] = entity.startNum;
	return data;
}

bannerNewsDetailReturnDataFromJson(BannerNewsDetailReturnData data, Map<String, dynamic> json) {
	if (json['message'] != null) {
		data.message = json['message']?.toString();
	}
	if (json['executeResult'] != null) {
		data.executeResult = json['executeResult']?.toString();
	}
	if (json['zxxq'] != null) {
		data.zxxq = new BannerNewsDetailReturnDataZxxq().fromJson(json['zxxq']);
	}
	return data;
}

Map<String, dynamic> bannerNewsDetailReturnDataToJson(BannerNewsDetailReturnData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['message'] = entity.message;
	data['executeResult'] = entity.executeResult;
	if (entity.zxxq != null) {
		data['zxxq'] = entity.zxxq.toJson();
	}
	return data;
}

bannerNewsDetailReturnDataZxxqFromJson(BannerNewsDetailReturnDataZxxq data, Map<String, dynamic> json) {
	if (json['zx_id'] != null) {
		data.zxId = json['zx_id']?.toString();
	}
	if (json['bt'] != null) {
		data.bt = json['bt']?.toString();
	}
	if (json['zxlx_id'] != null) {
		data.zxlxId = json['zxlx_id']?.toString();
	}
	if (json['zxlxbh'] != null) {
		data.zxlxbh = json['zxlxbh']?.toString();
	}
	if (json['flxbh'] != null) {
		data.flxbh = json['flxbh']?.toString();
	}
	if (json['app_zxnr'] != null) {
		data.appZxnr = json['app_zxnr']?.toString();
	}
	if (json['web_zxnr'] != null) {
		data.webZxnr = json['web_zxnr']?.toString();
	}
	if (json['zxnr'] != null) {
		data.zxnr = json['zxnr']?.toString();
	}
	if (json['app_sfxj'] != null) {
		data.appSfxj = json['app_sfxj']?.toString();
	}
	if (json['web_sfxj'] != null) {
		data.webSfxj = json['web_sfxj']?.toString();
	}
	if (json['app_sffb'] != null) {
		data.appSffb = json['app_sffb']?.toString();
	}
	if (json['web_sffb'] != null) {
		data.webSffb = json['web_sffb']?.toString();
	}
	if (json['app_fbsj'] != null) {
		data.appFbsj = json['app_fbsj']?.toString();
	}
	if (json['web_fbsj'] != null) {
		data.webFbsj = json['web_fbsj']?.toString();
	}
	if (json['fbsj'] != null) {
		data.fbsj = json['fbsj']?.toString();
	}
	if (json['app_fbr'] != null) {
		data.appFbr = json['app_fbr']?.toString();
	}
	if (json['web_fbr'] != null) {
		data.webFbr = json['web_fbr']?.toString();
	}
	if (json['fbr'] != null) {
		data.fbr = json['fbr']?.toString();
	}
	if (json['app_dzs'] != null) {
		data.appDzs = json['app_dzs']?.toString();
	}
	if (json['web_dzs'] != null) {
		data.webDzs = json['web_dzs']?.toString();
	}
	if (json['dzs'] != null) {
		data.dzs = json['dzs']?.toString();
	}
	if (json['app_djs'] != null) {
		data.appDjs = json['app_djs']?.toString();
	}
	if (json['web_djs'] != null) {
		data.webDjs = json['web_djs']?.toString();
	}
	if (json['djs'] != null) {
		data.djs = json['djs']?.toString();
	}
	if (json['app_sfgbpl'] != null) {
		data.appSfgbpl = json['app_sfgbpl']?.toString();
	}
	if (json['web_sfgbpl'] != null) {
		data.webSfgbpl = json['web_sfgbpl']?.toString();
	}
	if (json['app_sfzd'] != null) {
		data.appSfzd = json['app_sfzd']?.toString();
	}
	if (json['sfgbpl'] != null) {
		data.sfgbpl = json['sfgbpl']?.toString();
	}
	if (json['app_fmmblx'] != null) {
		data.appFmmblx = json['app_fmmblx']?.toString();
	}
	if (json['web_fmmblx'] != null) {
		data.webFmmblx = json['web_fmmblx']?.toString();
	}
	if (json['fmmblx'] != null) {
		data.fmmblx = json['fmmblx']?.toString();
	}
	if (json['cjsj'] != null) {
		data.cjsj = json['cjsj']?.toString();
	}
	if (json['cjr'] != null) {
		data.cjr = json['cjr']?.toString();
	}
	if (json['yh_id'] != null) {
		data.yhId = json['yh_id']?.toString();
	}
	if (json['sfdz'] != null) {
		data.sfdz = json['sfdz']?.toString();
	}
	if (json['sjly'] != null) {
		data.sjly = json['sjly']?.toString();
	}
	if (json['fmtp'] != null) {
		data.fmtp = json['fmtp']?.toString();
	}
	if (json['pls'] != null) {
		data.pls = json['pls']?.toString();
	}
	if (json['fxs'] != null) {
		data.fxs = json['fxs']?.toString();
	}
	if (json['sfdl'] != null) {
		data.sfdl = json['sfdl']?.toString();
	}
	if (json['pageNum'] != null) {
		data.pageNum = json['pageNum']?.toInt();
	}
	if (json['pageSize'] != null) {
		data.pageSize = json['pageSize']?.toInt();
	}
	if (json['sfydz'] != null) {
		data.sfydz = json['sfydz']?.toString();
	}
	return data;
}

Map<String, dynamic> bannerNewsDetailReturnDataZxxqToJson(BannerNewsDetailReturnDataZxxq entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['zx_id'] = entity.zxId;
	data['bt'] = entity.bt;
	data['zxlx_id'] = entity.zxlxId;
	data['zxlxbh'] = entity.zxlxbh;
	data['flxbh'] = entity.flxbh;
	data['app_zxnr'] = entity.appZxnr;
	data['web_zxnr'] = entity.webZxnr;
	data['zxnr'] = entity.zxnr;
	data['app_sfxj'] = entity.appSfxj;
	data['web_sfxj'] = entity.webSfxj;
	data['app_sffb'] = entity.appSffb;
	data['web_sffb'] = entity.webSffb;
	data['app_fbsj'] = entity.appFbsj;
	data['web_fbsj'] = entity.webFbsj;
	data['fbsj'] = entity.fbsj;
	data['app_fbr'] = entity.appFbr;
	data['web_fbr'] = entity.webFbr;
	data['fbr'] = entity.fbr;
	data['app_dzs'] = entity.appDzs;
	data['web_dzs'] = entity.webDzs;
	data['dzs'] = entity.dzs;
	data['app_djs'] = entity.appDjs;
	data['web_djs'] = entity.webDjs;
	data['djs'] = entity.djs;
	data['app_sfgbpl'] = entity.appSfgbpl;
	data['web_sfgbpl'] = entity.webSfgbpl;
	data['app_sfzd'] = entity.appSfzd;
	data['sfgbpl'] = entity.sfgbpl;
	data['app_fmmblx'] = entity.appFmmblx;
	data['web_fmmblx'] = entity.webFmmblx;
	data['fmmblx'] = entity.fmmblx;
	data['cjsj'] = entity.cjsj;
	data['cjr'] = entity.cjr;
	data['yh_id'] = entity.yhId;
	data['sfdz'] = entity.sfdz;
	data['sjly'] = entity.sjly;
	data['fmtp'] = entity.fmtp;
	data['pls'] = entity.pls;
	data['fxs'] = entity.fxs;
	data['sfdl'] = entity.sfdl;
	data['pageNum'] = entity.pageNum;
	data['pageSize'] = entity.pageSize;
	data['sfydz'] = entity.sfydz;
	return data;
}