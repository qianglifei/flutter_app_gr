class BannerDataEntity {
	int returnCode;
	String returnMsg;
	int pageCount;
	int rowsCount;
	BannerDataReturndata returnData;
	int startNum;

	BannerDataEntity({this.returnCode, this.returnMsg, this.pageCount, this.rowsCount, this.returnData, this.startNum});

	BannerDataEntity.fromJson(Map<String, dynamic> json) {
		returnCode = json['returnCode'];
		returnMsg = json['returnMsg'];
		pageCount = json['pageCount'];
		rowsCount = json['rowsCount'];
		returnData = json['returnData'] != null ? new BannerDataReturndata.fromJson(json['returnData']) : null;
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

class BannerDataReturndata {
	String nowDate;
	String message;
	String executeResult;
	List<BannerDataReturndataBanner> banners;

	BannerDataReturndata({this.nowDate, this.message, this.executeResult, this.banners});

	BannerDataReturndata.fromJson(Map<String, dynamic> json) {
		nowDate = json['nowDate'];
		message = json['message'];
		executeResult = json['executeResult'];
		if (json['banners'] != null) {
			banners = new List<BannerDataReturndataBanner>();(json['banners'] as List).forEach((v) { banners.add(new BannerDataReturndataBanner.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['nowDate'] = this.nowDate;
		data['message'] = this.message;
		data['executeResult'] = this.executeResult;
		if (this.banners != null) {
      data['banners'] =  this.banners.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class BannerDataReturndataBanner {
	String xh;
	String ggnrlx;
	String bannerId;
	String ggtpfwdmc;
	String ggtpkhdmc;
	String ggtpsclj;
	String gglx;
	String ljbs;
	String kssj;

	BannerDataReturndataBanner({this.xh, this.ggnrlx, this.bannerId, this.ggtpfwdmc, this.ggtpkhdmc, this.ggtpsclj, this.gglx, this.ljbs, this.kssj});

	BannerDataReturndataBanner.fromJson(Map<String, dynamic> json) {
		xh = json['xh'];
		ggnrlx = json['ggnrlx'];
		bannerId = json['banner_id'];
		ggtpfwdmc = json['ggtpfwdmc'];
		ggtpkhdmc = json['ggtpkhdmc'];
		ggtpsclj = json['ggtpsclj'];
		gglx = json['gglx'];
		ljbs = json['ljbs'];
		kssj = json['kssj'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['xh'] = this.xh;
		data['ggnrlx'] = this.ggnrlx;
		data['banner_id'] = this.bannerId;
		data['ggtpfwdmc'] = this.ggtpfwdmc;
		data['ggtpkhdmc'] = this.ggtpkhdmc;
		data['ggtpsclj'] = this.ggtpsclj;
		data['gglx'] = this.gglx;
		data['ljbs'] = this.ljbs;
		data['kssj'] = this.kssj;
		return data;
	}
}
