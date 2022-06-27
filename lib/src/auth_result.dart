class AuthResult {
  final String? accessToken;
  final String? idToken;
  final String? tokenSecret;
  final String? code;

  AuthResult({
    this.accessToken,
    this.idToken,
    this.tokenSecret,
    this.code,
  });

  @override
  String toString() {
    return 'AuthResult(idToken: $idToken, accessToken: $accessToken, tokenSecret: $tokenSecret, code: $code)';
  }
}
