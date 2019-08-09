import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
class DioManager{
  Dio _dio;

  static DioManager singleton = DioManager.internal();

  DioManager.internal() {
    _dio = new Dio();
    ///https 证书校验
    //有两种方法可以校验https证书，假设我们的后台服务使用的是自签名证书，证书格式是PEM格式，我们将证书的内容保存在本地
    //字符串中，那么我们的校验逻辑如下
    ///String PEM = “XXXX” certificte content
    ///(dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client){
    /// client.badCertificateCallBack = (X509Certificate cert,String host,int port){
    ///     if(cert.pem ==PEM){ // Verify the certificate
    ///        return true;
    ///     }
    ///     return false;
    ///   }
    /// }

    /// X509Certificate 是证书的标准格式，包含了证书除私钥外所有信息，读者可以自行查阅文档。另外，上面的示例没有
    /// 校验host，是因为只要服务器返回的证书内容和本地的保存一致，就已经能证明是我们的服务器了（而不是中间人），host
    /// 验证通常是为了防止证书和域名不匹配。
    //对于自签名的证书，我们也可以将其添加到本地证书信任链中，这样证书验证是就会自动通过，而不会再走到
    ///badCertificateCallBack回调中：
    ///（dio.httpClientAdapter as DefaultHttpClientAdapter）.onHttpClientCreate = (client){
    ///   SecurityContext sc = new SecurityContext;
    ///   //file is the path of certificate
    ///   sc.setTrustedCertificates(file);
    ///   HttpClient httpClient = new HttpClient(context,sc)
    ///   return httpClient;
    /// }
    // 注意，通过setTrustedCertificate()设置的证书格式必须是PEM或者PKCS12，则需要将证书密码传入，
    // 这样则会在代码中暴漏证书密码，所以客户端证书校验不建议使用PKCS12格式的证书。
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client){
      client.badCertificateCallback = (X509Certificate cert,String host,int port){
        return true;
      };
    };
  }

  factory DioManager(){
    return singleton;
  }

  get dio{
    return _dio;
  }
}