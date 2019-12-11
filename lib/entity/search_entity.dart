class SearchEntity {
	int returnCode;
	String returnMsg;
	int pageCount;
	int rowsCount;
	SearchReturndata returnData;
	int startNum;

	SearchEntity({this.returnCode, this.returnMsg, this.pageCount, this.rowsCount, this.returnData, this.startNum});

	SearchEntity.fromJson(Map<String, dynamic> json) {
		returnCode = json['returnCode'];
		returnMsg = json['returnMsg'];
		pageCount = json['pageCount'];
		rowsCount = json['rowsCount'];
		returnData = json['returnData'] != null ? new SearchReturndata.fromJson(json['returnData']) : null;
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

class SearchReturndata {
	List<SearchReturndataZwarr> zwArr;
	List<SearchReturndataZxarr> zxArr;
	List<SearchReturndataZcarr> zcArr;

	SearchReturndata({this.zwArr, this.zxArr, this.zcArr});

	SearchReturndata.fromJson(Map<String, dynamic> json) {
		if (json['zwArr'] != null) {
			zwArr = new List<SearchReturndataZwarr>();(json['zwArr'] as List).forEach((v) { zwArr.add(new SearchReturndataZwarr.fromJson(v)); });
		}
		if (json['zxArr'] != null) {
			zxArr = new List<SearchReturndataZxarr>();(json['zxArr'] as List).forEach((v) { zxArr.add(new SearchReturndataZxarr.fromJson(v)); });
		}
		if (json['zcArr'] != null) {
			zcArr = new List<SearchReturndataZcarr>();(json['zcArr'] as List).forEach((v) { zcArr.add(new SearchReturndataZcarr.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.zwArr != null) {
      data['zwArr'] =  this.zwArr.map((v) => v.toJson()).toList();
    }
		if (this.zxArr != null) {
      data['zxArr'] =  this.zxArr.map((v) => v.toJson()).toList();
    }
		if (this.zcArr != null) {
      data['zcArr'] =  this.zcArr.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class SearchReturndataZwarr {
	String yprshj;
	String dwxzmc;
	String dwzwId;
	String gzxz;
	String sshymc;
	String dwmc;
	String sshy;
	String gznx;
	String zprs;
	String xlyqmc;
	String zplxmc;
	String dwxxId;
	String yxrqStart;
	String dwgm;
	String xzdyz;
	String dwlgfwdmc;
	String zwmc;
	String gzddjdmc;
	String dwgmmc;
	String xzdyq;
	String gzddsfmc;
	String dwlgkhdmc;
	String xlyq;
	String gzddqmc;
	String sftd;
	String gzddsmc;
	String gzxzmc;
	String gzddq;
	String dwxz;
	String dwlgsc;
	String zplx;

	SearchReturndataZwarr({this.yprshj, this.dwxzmc, this.dwzwId, this.gzxz, this.sshymc, this.dwmc, this.sshy, this.gznx, this.zprs, this.xlyqmc, this.zplxmc, this.dwxxId, this.yxrqStart, this.dwgm, this.xzdyz, this.dwlgfwdmc, this.zwmc, this.gzddjdmc, this.dwgmmc, this.xzdyq, this.gzddsfmc, this.dwlgkhdmc, this.xlyq, this.gzddqmc, this.sftd, this.gzddsmc, this.gzxzmc, this.gzddq, this.dwxz, this.dwlgsc, this.zplx});

	SearchReturndataZwarr.fromJson(Map<String, dynamic> json) {
		yprshj = json['yprshj'];
		dwxzmc = json['dwxzmc'];
		dwzwId = json['dwzw_id'];
		gzxz = json['gzxz'];
		sshymc = json['sshymc'];
		dwmc = json['dwmc'];
		sshy = json['sshy'];
		gznx = json['gznx'];
		zprs = json['zprs'];
		xlyqmc = json['xlyqmc'];
		zplxmc = json['zplxmc'];
		dwxxId = json['dwxx_id'];
		yxrqStart = json['yxrq_start'];
		dwgm = json['dwgm'];
		xzdyz = json['xzdyz'];
		dwlgfwdmc = json['dwlgfwdmc'];
		zwmc = json['zwmc'];
		gzddjdmc = json['gzddjdmc'];
		dwgmmc = json['dwgmmc'];
		xzdyq = json['xzdyq'];
		gzddsfmc = json['gzddsfmc'];
		dwlgkhdmc = json['dwlgkhdmc'];
		xlyq = json['xlyq'];
		gzddqmc = json['gzddqmc'];
		sftd = json['sftd'];
		gzddsmc = json['gzddsmc'];
		gzxzmc = json['gzxzmc'];
		gzddq = json['gzddq'];
		dwxz = json['dwxz'];
		dwlgsc = json['dwlgsc'];
		zplx = json['zplx'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['yprshj'] = this.yprshj;
		data['dwxzmc'] = this.dwxzmc;
		data['dwzw_id'] = this.dwzwId;
		data['gzxz'] = this.gzxz;
		data['sshymc'] = this.sshymc;
		data['dwmc'] = this.dwmc;
		data['sshy'] = this.sshy;
		data['gznx'] = this.gznx;
		data['zprs'] = this.zprs;
		data['xlyqmc'] = this.xlyqmc;
		data['zplxmc'] = this.zplxmc;
		data['dwxx_id'] = this.dwxxId;
		data['yxrq_start'] = this.yxrqStart;
		data['dwgm'] = this.dwgm;
		data['xzdyz'] = this.xzdyz;
		data['dwlgfwdmc'] = this.dwlgfwdmc;
		data['zwmc'] = this.zwmc;
		data['gzddjdmc'] = this.gzddjdmc;
		data['dwgmmc'] = this.dwgmmc;
		data['xzdyq'] = this.xzdyq;
		data['gzddsfmc'] = this.gzddsfmc;
		data['dwlgkhdmc'] = this.dwlgkhdmc;
		data['xlyq'] = this.xlyq;
		data['gzddqmc'] = this.gzddqmc;
		data['sftd'] = this.sftd;
		data['gzddsmc'] = this.gzddsmc;
		data['gzxzmc'] = this.gzxzmc;
		data['gzddq'] = this.gzddq;
		data['dwxz'] = this.dwxz;
		data['dwlgsc'] = this.dwlgsc;
		data['zplx'] = this.zplx;
		return data;
	}
}

class SearchReturndataZxarr {
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
	String fmtp;
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

	SearchReturndataZxarr({this.appSfzd, this.webDzs, this.pageSize, this.appSfgbpl, this.appDzs, this.cjsj, this.sjly, this.bt, this.yhId, this.zxId, this.zxlxId, this.sfydz, this.dzs, this.sfdz, this.sfgbpl, this.fxs, this.appFbsj, this.webSfgbpl, this.flxbh, this.fmmblx, this.appFbr, this.cjr, this.djs, this.zxlxbh, this.pageNum, this.sfdl, this.webDjs, this.fmtp, this.webFmmblx, this.appSffb, this.webSffb, this.pls, this.fbr, this.appSfxj, this.webFbsj, this.zxnr, this.webFbr, this.webSfxj, this.fbsj, this.webZxnr, this.appDjs, this.appZxnr, this.appFmmblx});

	SearchReturndataZxarr.fromJson(Map<String, dynamic> json) {
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
		fmtp = json['fmtp'];
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
		data['fmtp'] = this.fmtp;
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

class SearchReturndataZcarr {
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
	String fmtp;
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

	SearchReturndataZcarr({this.appSfzd, this.webDzs, this.pageSize, this.appSfgbpl, this.appDzs, this.cjsj, this.sjly, this.bt, this.yhId, this.zxId, this.zxlxId, this.sfydz, this.dzs, this.sfdz, this.sfgbpl, this.fxs, this.appFbsj, this.webSfgbpl, this.flxbh, this.fmmblx, this.appFbr, this.cjr, this.djs, this.zxlxbh, this.pageNum, this.sfdl, this.webDjs, this.fmtp, this.webFmmblx, this.appSffb, this.webSffb, this.pls, this.fbr, this.appSfxj, this.webFbsj, this.zxnr, this.webFbr, this.webSfxj, this.fbsj, this.webZxnr, this.appDjs, this.appZxnr, this.appFmmblx});

	SearchReturndataZcarr.fromJson(Map<String, dynamic> json) {
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
		fmtp = json['fmtp'];
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
		data['fmtp'] = this.fmtp;
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
