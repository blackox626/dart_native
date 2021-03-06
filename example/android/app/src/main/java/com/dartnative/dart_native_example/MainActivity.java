package com.dartnative.dart_native_example;

import android.os.Bundle;

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  static{
    System.loadLibrary("test_lib");
  }

  @Override
  public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
    GeneratedPluginRegistrant.registerWith(flutterEngine);
  }

  public static int getNumber() {
    return 100;
  }

  public static double getDouble() {
    return 100.23;
  }

  public static byte getByte() {
    return 1;
  }

  public static float getFloat() {
    return 100.0f;
  }

  public static char getChar() {
    return 'a';
  }

  public static short getShort() {
    return 1;
  }

  public static long getLong() {
    return 1;
  }

}
