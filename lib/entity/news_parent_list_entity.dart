class NewsParentListEntity {
	int returnCode;
	String returnMsg;
	int pageCount;
	int rowsCount;
	NewsParentListEntityReturndata returnData;
	int startNum;

	NewsParentListEntity({this.returnCode, this.returnMsg, this.pageCount, this.rowsCount, this.returnData, this.startNum});

	NewsParentListEntity.fromJson(Map<String, dynamic> json) {
		returnCode = json['returnCode'];
		returnMsg = json['returnMsg'];
		pageCount = json['pageCount'];
		rowsCount = json['rowsCount'];
		returnData = json['returnData'] != null ? new NewsParentListEntityReturndata.fromJson(json['returnData']) : null;
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

class NewsParentListEntityReturndata {
	List<NewsParentListEntityReturndataFlxlb> flxlb;
	String message;
	String executeResult;

	NewsParentListEntityReturndata({this.flxlb, this.message, this.executeResult});

	NewsParentListEntityReturndata.fromJson(Map<String, dynamic> json) {
		if (json['flxlb'] != null) {
			flxlb = new List<NewsParentListEntityReturndataFlxlb>();(json['flxlb'] as List).forEach((v) { flxlb.add(new NewsParentListEntityReturndataFlxlb.fromJson(v)); });
		}
		message = json['message'];
		executeResult = json['executeResult'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.flxlb != null) {
      data['flxlb'] =  this.flxlb.map((v) => v.toJson()).toList();
    }
		data['message'] = this.message;
		data['executeResult'] = this.executeResult;
		return data;
	}
}

class NewsParentListEntityReturndataFlxlb {
	String zlxbh;
	String flxbh;
	int pageSize;
	String cjr;
	String zxlxbh;
	String czlx;
	String zlxId;
	int pageNum;
	String sfqy;
	String wdlx;
	String xh;
	String cjsj;
	String flxId;
	String sfyxxg;
	String yhId;
	String sfsc;
	String lxjb;
	String zlxmc;
	String zxlxId;
	String bz;
	String flxmc;
	String zxlxmc;

	NewsParentListEntityReturndataFlxlb({this.zlxbh, this.flxbh, this.pageSize, this.cjr, this.zxlxbh, this.czlx, this.zlxId, this.pageNum, this.sfqy, this.wdlx, this.xh, this.cjsj, this.flxId, this.sfyxxg, this.yhId, this.sfsc, this.lxjb, this.zlxmc, this.zxlxId, this.bz, this.flxmc, this.zxlxmc});

	NewsParentListEntityReturndataFlxlb.fromJson(Map<String, dynamic> json) {
		zlxbh = json['zlxbh'];
		flxbh = json['flxbh'];
		pageSize = json['pageSize'];
		cjr = json['cjr'];
		zxlxbh = json['zxlxbh'];
		czlx = json['czlx'];
		zlxId = json['zlx_id'];
		pageNum = json['pageNum'];
		sfqy = json['sfqy'];
		wdlx = json['wdlx'];
		xh = json['xh'];
		cjsj = json['cjsj'];
		flxId = json['flx_id'];
		sfyxxg = json['sfyxxg'];
		yhId = json['yh_id'];
		sfsc = json['sfsc'];
		lxjb = json['lxjb'];
		zlxmc = json['zlxmc'];
		zxlxId = json['zxlx_id'];
		bz = json['bz'];
		flxmc = json['flxmc'];
		zxlxmc = json['zxlxmc'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['zlxbh'] = this.zlxbh;
		data['flxbh'] = this.flxbh;
		data['pageSize'] = this.pageSize;
		data['cjr'] = this.cjr;
		data['zxlxbh'] = this.zxlxbh;
		data['czlx'] = this.czlx;
		data['zlx_id'] = this.zlxId;
		data['pageNum'] = this.pageNum;
		data['sfqy'] = this.sfqy;
		data['wdlx'] = this.wdlx;
		data['xh'] = this.xh;
		data['cjsj'] = this.cjsj;
		data['flx_id'] = this.flxId;
		data['sfyxxg'] = this.sfyxxg;
		data['yh_id'] = this.yhId;
		data['sfsc'] = this.sfsc;
		data['lxjb'] = this.lxjb;
		data['zlxmc'] = this.zlxmc;
		data['zxlx_id'] = this.zxlxId;
		data['bz'] = this.bz;
		data['flxmc'] = this.flxmc;
		data['zxlxmc'] = this.zxlxmc;
		return data;
	}
}
