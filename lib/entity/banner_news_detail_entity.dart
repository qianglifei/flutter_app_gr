import 'package:flutter_app_gr/generated/json/base/json_convert_content.dart';
import 'package:flutter_app_gr/generated/json/base/json_filed.dart';

class BannerNewsDetailEntity with JsonConvert<BannerNewsDetailEntity> {
	int returnCode;
	String returnMsg;
	BannerNewsDetailReturnData returnData;
	int pageCount;
	int rowsCount;
	int startNum;
}

class BannerNewsDetailReturnData with JsonConvert<BannerNewsDetailReturnData> {
	String message;
	String executeResult;
	BannerNewsDetailReturnDataZxxq zxxq;
}

class BannerNewsDetailReturnDataZxxq with JsonConvert<BannerNewsDetailReturnDataZxxq> {
	@JSONField(name: "zx_id")
	String zxId;
	String bt;
	@JSONField(name: "zxlx_id")
	String zxlxId;
	String zxlxbh;
	String flxbh;
	@JSONField(name: "app_zxnr")
	String appZxnr;
	@JSONField(name: "web_zxnr")
	String webZxnr;
	String zxnr;
	@JSONField(name: "app_sfxj")
	String appSfxj;
	@JSONField(name: "web_sfxj")
	String webSfxj;
	@JSONField(name: "app_sffb")
	String appSffb;
	@JSONField(name: "web_sffb")
	String webSffb;
	@JSONField(name: "app_fbsj")
	String appFbsj;
	@JSONField(name: "web_fbsj")
	String webFbsj;
	String fbsj;
	@JSONField(name: "app_fbr")
	String appFbr;
	@JSONField(name: "web_fbr")
	String webFbr;
	String fbr;
	@JSONField(name: "app_dzs")
	String appDzs;
	@JSONField(name: "web_dzs")
	String webDzs;
	String dzs;
	@JSONField(name: "app_djs")
	String appDjs;
	@JSONField(name: "web_djs")
	String webDjs;
	String djs;
	@JSONField(name: "app_sfgbpl")
	String appSfgbpl;
	@JSONField(name: "web_sfgbpl")
	String webSfgbpl;
	@JSONField(name: "app_sfzd")
	String appSfzd;
	String sfgbpl;
	@JSONField(name: "app_fmmblx")
	String appFmmblx;
	@JSONField(name: "web_fmmblx")
	String webFmmblx;
	String fmmblx;
	String cjsj;
	String cjr;
	@JSONField(name: "yh_id")
	String yhId;
	String sfdz;
	String sjly;
	String fmtp;
	String pls;
	String fxs;
	String sfdl;
	int pageNum;
	int pageSize;
	String sfydz;
}
