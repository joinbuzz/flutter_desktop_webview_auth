import 'src/provider_args.dart';

const _defaultSignInScope = 'https://www.googleapis.com/auth/plus.login';

class GoogleSignInArgs extends ProviderArgs {
  final String clientId;
  final String scope;
  final String responseType;
  final String accessType;
  final String prompt;

  @override
  final String redirectUri;

  @override
  final host = 'accounts.google.com';

  @override
  final path = '/o/oauth2/auth';

  GoogleSignInArgs({
    required this.clientId,
    required this.redirectUri,
    this.scope = _defaultSignInScope,
    this.responseType = 'token id_token',
    this.accessType = 'offline',
    this.prompt = 'select_account consent',
  });

  @override
  Map<String, String> buildQueryParameters() {
    return {
      'client_id': clientId,
      'scope': scope,
      'response_type': responseType,
      'redirect_uri': redirectUri,
      'access_type': accessType,
      'prompt': prompt,
    };
  }
}
