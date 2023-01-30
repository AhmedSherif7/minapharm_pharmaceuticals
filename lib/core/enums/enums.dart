enum RequestState {
  loading,
  error,
  success,
}

enum AuthErrorType {
  usernameError,
  passwordError,
}

enum HttpErrorType {
  badRequest(400),
  unauthorized(401),
  forbidden(403),
  notFound(404),
  requestTimeout(408),
  internalServerError(501),
  unexpectedError(0);

  const HttpErrorType(this.code);

  final int code;
}
