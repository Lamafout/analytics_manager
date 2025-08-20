import 'services/analytics_service.dart';

class AnalyticsManager implements AnalyticsService {
  final List<AnalyticsService> _services;

  AnalyticsManager(this._services);

  @override
  Future<void> logEvent(String name, {Map<String, Object>? params}) async {
    for (final service in _services) {
      await service.logEvent(name, params: params);
    }
  }

  @override
  Future<void> setUserId(String userId) async {
    for (final service in _services) {
      await service.setUserId(userId);
    }
  }

  @override
  Future<void> setUserProperty(String key, String value) async {
    for (final service in _services) {
      await service.setUserProperty(key, value);
    }
  }
}
