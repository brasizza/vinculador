class EpocException implements Exception {
  String cause;
  StackTrace? stack;
  final bool isTimeout;
  EpocException(this.cause, {this.stack, this.isTimeout = false});

  @override
  String toString() => cause;
}
