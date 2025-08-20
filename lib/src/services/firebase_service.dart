import 'package:firebase_analytics/firebase_analytics.dart';
import 'analytics_service.dart';

class FirebaseAnalyticsAdapter implements AnalyticsService {
  final FirebaseAnalytics _analytics;

  FirebaseAnalyticsAdapter(this._analytics);

  @override
  Future<void> logEvent(String name, {Map<String, Object>? params}) {
    return _analytics.logEvent(name: name, parameters: params);
  }

  @override
  Future<void> setUserId(String userId) {
    return _analytics.setUserId(id: userId);
  }

  @override
  Future<void> setUserProperty(String key, String value) {
    return _analytics.setUserProperty(name: key, value: value);
  }
}
