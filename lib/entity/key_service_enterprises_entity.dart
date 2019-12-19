class KeyServiceEnterprisesEntity {
	int returnCode;
	String returnMsg;
	int pageCount;
	int rowsCount;
	KeyServiceEnterprisesReturndata returnData;
	int startNum;

	KeyServiceEnterprisesEntity({this.returnCode, this.returnMsg, this.pageCount, this.rowsCount, this.returnData, this.startNum});

	KeyServiceEnterprisesEntity.fromJson(Map<String, dynamic> json) {
		returnCode = json['returnCode'];
		returnMsg = json['returnMsg'];
		pageCount = json['pageCount'];
		rowsCount = json['rowsCount'];
		returnData = json['returnData'] != null ? new KeyServiceEnterprisesReturndata.fromJson(json['returnData']) : null;
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

class KeyServiceEnterprisesReturndata {
	List<KeyServiceEnterprisesReturndataZdqylb> zdqylbs;
	String message;
	String executeResult;

	KeyServiceEnterprisesReturndata({this.zdqylbs, this.message, this.executeResult});

	KeyServiceEnterprisesReturndata.fromJson(Map<String, dynamic> json) {
		if (json['zdqylbs'] != null) {
			zdqylbs = new List<KeyServiceEnterprisesReturndataZdqylb>();(json['zdqylbs'] as List).forEach((v) { zdqylbs.add(new KeyServiceEnterprisesReturndataZdqylb.fromJson(v)); });
		}
		message = json['message'];
		executeResult = json['executeResult'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.zdqylbs != null) {
      data['zdqylbs'] =  this.zdqylbs.map((v) => v.toJson()).toList();
    }
		data['message'] = this.message;
		data['executeResult'] = this.executeResult;
		return data;
	}
}

class KeyServiceEnterprisesReturndataZdqylb {
	String dwzprs;
	String dwmc;
	String sshy;
	String szdqmc;
	int pageSize;
	String zpzws;
	int pageNum;
	String zprs;
	String szdqq;
	String dwlgkhdmc;
	String dwxxId;
	String dwxz;
	String dwlgsc = "";
	String dwlgfwdmc;

	KeyServiceEnterprisesReturndataZdqylb({this.dwzprs, this.dwmc, this.sshy, this.szdqmc, this.pageSize, this.zpzws, this.pageNum, this.zprs, this.szdqq, this.dwlgkhdmc, this.dwxxId, this.dwxz, this.dwlgsc, this.dwlgfwdmc});

	KeyServiceEnterprisesReturndataZdqylb.fromJson(Map<String, dynamic> json) {
		dwzprs = json['dwzprs'];
		dwmc = json['dwmc'];
		sshy = json['sshy'];
		szdqmc = json['szdqmc'];
		pageSize = json['pageSize'];
		zpzws = json['zpzws'];
		pageNum = json['pageNum'];
		zprs = json['zprs'];
		szdqq = json['szdqq'];
		dwlgkhdmc = json['dwlgkhdmc'];
		dwxxId = json['dwxx_id'];
		dwxz = json['dwxz'];
		dwlgsc = json['dwlgsc'];
		dwlgfwdmc = json['dwlgfwdmc'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['dwzprs'] = this.dwzprs;
		data['dwmc'] = this.dwmc;
		data['sshy'] = this.sshy;
		data['szdqmc'] = this.szdqmc;
		data['pageSize'] = this.pageSize;
		data['zpzws'] = this.zpzws;
		data['pageNum'] = this.pageNum;
		data['zprs'] = this.zprs;
		data['szdqq'] = this.szdqq;
		data['dwlgkhdmc'] = this.dwlgkhdmc;
		data['dwxx_id'] = this.dwxxId;
		data['dwxz'] = this.dwxz;
		data['dwlgsc'] = this.dwlgsc;
		data['dwlgfwdmc'] = this.dwlgfwdmc;
		return data;
	}
}
