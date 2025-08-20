abstract class AnalyticsService {
  Future<void> logEvent(String name, {Map<String, Object>? params});

  Future<void> setUserId(String userId);

  Future<void> setUserProperty(String key, String value);
}