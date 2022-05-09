package com.imiaoyu.shadow.shadow


import android.os.PersistableBundle
import android.util.Log
import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry
import io.flutter.plugins.GeneratedPluginRegistrant

//引入
import android.os.Build;
import android.os.Bundle;

class MainActivity: FlutterActivity() {




    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger,"app.channel.shared.data").setMethodCallHandler(
                MethodChannel.MethodCallHandler { call, result ->
                    run {
                        if (call.method.contentEquals("getParam")) {
                            result.success("message")
                            Log.i("test","ms")
                        }
                    }
                }
        )
    }


    //设置状态栏沉浸式透明（修改flutter状态栏黑色半透明为全透明）
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            window.statusBarColor = 0
        }
    }
}
