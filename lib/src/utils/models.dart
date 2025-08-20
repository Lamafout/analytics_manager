class OnboardingCompletedParams {
  final double durationSec;

  OnboardingCompletedParams(this.durationSec);

  Map<String, Object?> toMap() => {
    "duration_sec": durationSec,
  };
}

class LoginParams {
  final String method;

  LoginParams(this.method);

  Map<String, Object?> toMap() => {
    "login_method": method,
  };
}
