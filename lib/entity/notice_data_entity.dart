class NoticeDataEntity {
	int returnCode;
	String returnMsg;
	int pageCount;
	int rowsCount;
	NoticeDataReturndata returnData;
	int startNum;

	NoticeDataEntity({this.returnCode, this.returnMsg, this.pageCount, this.rowsCount, this.returnData, this.startNum});

	NoticeDataEntity.fromJson(Map<String, dynamic> json) {
		returnCode = json['returnCode'];
		returnMsg = json['returnMsg'];
		pageCount = json['pageCount'];
		rowsCount = json['rowsCount'];
		returnData = json['returnData'] != null ? new NoticeDataReturndata.fromJson(json['returnData']) : null;
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

class NoticeDataReturndata {
	List<NoticeDataReturndataZzzx> zzzx;
	String message;
	String executeResult;

	NoticeDataReturndata({this.zzzx, this.message, this.executeResult});

	NoticeDataReturndata.fromJson(Map<String, dynamic> json) {
		if (json['zzzx'] != null) {
			zzzx = new List<NoticeDataReturndataZzzx>();(json['zzzx'] as List).forEach((v) { zzzx.add(new NoticeDataReturndataZzzx.fromJson(v)); });
		}
		message = json['message'];
		executeResult = json['executeResult'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.zzzx != null) {
      data['zzzx'] =  this.zzzx.map((v) => v.toJson()).toList();
    }
		data['message'] = this.message;
		data['executeResult'] = this.executeResult;
		return data;
	}
}

class NoticeDataReturndataZzzx {
	String bt;
	String zxId;
	String appFbsj;

	NoticeDataReturndataZzzx({this.bt, this.zxId, this.appFbsj});

	NoticeDataReturndataZzzx.fromJson(Map<String, dynamic> json) {
		bt = json['bt'];
		zxId = json['zx_id'];
		appFbsj = json['app_fbsj'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['bt'] = this.bt;
		data['zx_id'] = this.zxId;
		data['app_fbsj'] = this.appFbsj;
		return data;
	}
}
