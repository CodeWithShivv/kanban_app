import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

class ErrorReporter {
  static final ErrorReporter _instance = ErrorReporter._internal();

  factory ErrorReporter() {
    return _instance;
  }

  ErrorReporter._internal();

  void initialize() {
    // Initialize Crashlytics
    FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);

    // Pass all uncaught errors from the framework to Crashlytics
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  }

  void reportError(dynamic exception, StackTrace stackTrace) {
    FirebaseCrashlytics.instance.recordError(exception, stackTrace);
  }

  void log(String message) {
    FirebaseCrashlytics.instance.log(message);
  }
}
