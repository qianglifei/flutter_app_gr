package com.company.qlf.flutter_app_gr;

import android.os.Build;
import android.os.Bundle;
import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP){
      //Api >21 ,设置状态栏为透明色
      getWindow().setStatusBarColor(0);
    }
    GeneratedPluginRegistrant.registerWith(this);
  }
}
