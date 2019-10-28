class FavouriteEntity {
	int returnCode;
	String returnMsg;
	int pageCount;
	int rowsCount;
	FavouriteReturndata returnData;
	int startNum;

	FavouriteEntity({this.returnCode, this.returnMsg, this.pageCount, this.rowsCount, this.returnData, this.startNum});

	FavouriteEntity.fromJson(Map<String, dynamic> json) {
		returnCode = json['returnCode'];
		returnMsg = json['returnMsg'];
		pageCount = json['pageCount'];
		rowsCount = json['rowsCount'];
		returnData = json['returnData'] != null ? new FavouriteReturndata.fromJson(json['returnData']) : null;
		startNum = json['startNum'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['returnCode'] = this.returnCode;
		data['returnMsg'] = this.returnMsg;
		data['pageCount'] = this.pageCount;
		data['rowsCount'] = this.rowsCount;
		if (this.returnData != null) {
      data['returnData'] = this.returnData.toJson();
    }
		data['startNum'] = this.startNum;
		return data;
	}
}

class FavouriteReturndata {
	List<FavouriteReturndataZx> zxs;
	String message;
	String executeResult;

	FavouriteReturndata({this.zxs, this.message, this.executeResult});

	FavouriteReturndata.fromJson(Map<String, dynamic> json) {
		if (json['zxs'] != null) {
			zxs = new List<FavouriteReturndataZx>();(json['zxs'] as List).forEach((v) { zxs.add(new FavouriteReturndataZx.fromJson(v)); });
		}
		message = json['message'];
		executeResult = json['executeResult'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.zxs != null) {
      data['zxs'] =  this.zxs.map((v) => v.toJson()).toList();
    }
		data['message'] = this.message;
		data['executeResult'] = this.executeResult;
		return data;
	}
}

class FavouriteReturndataZx {
	String appSfzd;
	String webDzs;
	int pageSize;
	String appSfgbpl;
	String appDzs;
	String cjsj;
	String sjly;
	String bt;
	String yhId;
	String zxId;
	String zxlxId;
	String sfydz;
	String dzs;
	String sfdz;
	String sfgbpl;
	String fxs;
	String appFbsj;
	String webSfgbpl;
	String flxbh;
	String fmmblx;
	String appFbr;
	String cjr;
	String djs;
	String zxlxbh;
	int pageNum;
	String sfdl;
	String webDjs;
	List<FavouriteReturndataZxsFmtp> fmtp;
	String webFmmblx;
	String appSffb;
	String webSffb;
	String pls;
	String fbr;
	String appSfxj;
	String webFbsj;
	String zxnr;
	String webFbr;
	String webSfxj;
	String fbsj;
	String webZxnr;
	String appDjs;
	String appZxnr;
	String appFmmblx;

	FavouriteReturndataZx({this.appSfzd, this.webDzs, this.pageSize, this.appSfgbpl, this.appDzs, this.cjsj, this.sjly, this.bt, this.yhId, this.zxId, this.zxlxId, this.sfydz, this.dzs, this.sfdz, this.sfgbpl, this.fxs, this.appFbsj, this.webSfgbpl, this.flxbh, this.fmmblx, this.appFbr, this.cjr, this.djs, this.zxlxbh, this.pageNum, this.sfdl, this.webDjs, this.fmtp, this.webFmmblx, this.appSffb, this.webSffb, this.pls, this.fbr, this.appSfxj, this.webFbsj, this.zxnr, this.webFbr, this.webSfxj, this.fbsj, this.webZxnr, this.appDjs, this.appZxnr, this.appFmmblx});

	FavouriteReturndataZx.fromJson(Map<String, dynamic> json) {
		appSfzd = json['app_sfzd'];
		webDzs = json['web_dzs'];
		pageSize = json['pageSize'];
		appSfgbpl = json['app_sfgbpl'];
		appDzs = json['app_dzs'];
		cjsj = json['cjsj'];
		sjly = json['sjly'];
		bt = json['bt'];
		yhId = json['yh_id'];
		zxId = json['zx_id'];
		zxlxId = json['zxlx_id'];
		sfydz = json['sfydz'];
		dzs = json['dzs'];
		sfdz = json['sfdz'];
		sfgbpl = json['sfgbpl'];
		fxs = json['fxs'];
		appFbsj = json['app_fbsj'];
		webSfgbpl = json['web_sfgbpl'];
		flxbh = json['flxbh'];
		fmmblx = json['fmmblx'];
		appFbr = json['app_fbr'];
		cjr = json['cjr'];
		djs = json['djs'];
		zxlxbh = json['zxlxbh'];
		pageNum = json['pageNum'];
		sfdl = json['sfdl'];
		webDjs = json['web_djs'];
		if (json['fmtp'] != null) {
			fmtp = new List<FavouriteReturndataZxsFmtp>();(json['fmtp'] as List).forEach((v) { fmtp.add(new FavouriteReturndataZxsFmtp.fromJson(v)); });
		}
		webFmmblx = json['web_fmmblx'];
		appSffb = json['app_sffb'];
		webSffb = json['web_sffb'];
		pls = json['pls'];
		fbr = json['fbr'];
		appSfxj = json['app_sfxj'];
		webFbsj = json['web_fbsj'];
		zxnr = json['zxnr'];
		webFbr = json['web_fbr'];
		webSfxj = json['web_sfxj'];
		fbsj = json['fbsj'];
		webZxnr = json['web_zxnr'];
		appDjs = json['app_djs'];
		appZxnr = json['app_zxnr'];
		appFmmblx = json['app_fmmblx'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['app_sfzd'] = this.appSfzd;
		data['web_dzs'] = this.webDzs;
		data['pageSize'] = this.pageSize;
		data['app_sfgbpl'] = this.appSfgbpl;
		data['app_dzs'] = this.appDzs;
		data['cjsj'] = this.cjsj;
		data['sjly'] = this.sjly;
		data['bt'] = this.bt;
		data['yh_id'] = this.yhId;
		data['zx_id'] = this.zxId;
		data['zxlx_id'] = this.zxlxId;
		data['sfydz'] = this.sfydz;
		data['dzs'] = this.dzs;
		data['sfdz'] = this.sfdz;
		data['sfgbpl'] = this.sfgbpl;
		data['fxs'] = this.fxs;
		data['app_fbsj'] = this.appFbsj;
		data['web_sfgbpl'] = this.webSfgbpl;
		data['flxbh'] = this.flxbh;
		data['fmmblx'] = this.fmmblx;
		data['app_fbr'] = this.appFbr;
		data['cjr'] = this.cjr;
		data['djs'] = this.djs;
		data['zxlxbh'] = this.zxlxbh;
		data['pageNum'] = this.pageNum;
		data['sfdl'] = this.sfdl;
		data['web_djs'] = this.webDjs;
		if (this.fmtp != null) {
      data['fmtp'] =  this.fmtp.map((v) => v.toJson()).toList();
    }
		data['web_fmmblx'] = this.webFmmblx;
		data['app_sffb'] = this.appSffb;
		data['web_sffb'] = this.webSffb;
		data['pls'] = this.pls;
		data['fbr'] = this.fbr;
		data['app_sfxj'] = this.appSfxj;
		data['web_fbsj'] = this.webFbsj;
		data['zxnr'] = this.zxnr;
		data['web_fbr'] = this.webFbr;
		data['web_sfxj'] = this.webSfxj;
		data['fbsj'] = this.fbsj;
		data['web_zxnr'] = this.webZxnr;
		data['app_djs'] = this.appDjs;
		data['app_zxnr'] = this.appZxnr;
		data['app_fmmblx'] = this.appFmmblx;
		return data;
	}
}

class FavouriteReturndataZxsFmtp {
	String fmtpkhdmc;
	String cjsj;
	String zxId;
	String zxfmtpId;
	String fmtplj;
	String xsd;
	String fmtpfwdmc;

	FavouriteReturndataZxsFmtp({this.fmtpkhdmc, this.cjsj, this.zxId, this.zxfmtpId, this.fmtplj, this.xsd, this.fmtpfwdmc});

	FavouriteReturndataZxsFmtp.fromJson(Map<String, dynamic> json) {
		fmtpkhdmc = json['fmtpkhdmc'];
		cjsj = json['cjsj'];
		zxId = json['zx_id'];
		zxfmtpId = json['zxfmtp_id'];
		fmtplj = json['fmtplj'];
		xsd = json['xsd'];
		fmtpfwdmc = json['fmtpfwdmc'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['fmtpkhdmc'] = this.fmtpkhdmc;
		data['cjsj'] = this.cjsj;
		data['zx_id'] = this.zxId;
		data['zxfmtp_id'] = this.zxfmtpId;
		data['fmtplj'] = this.fmtplj;
		data['xsd'] = this.xsd;
		data['fmtpfwdmc'] = this.fmtpfwdmc;
		return data;
	}
}
