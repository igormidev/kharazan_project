part of 'sand_custom_logs.dart';

/// Will print the [text] in `green` color to the console.
void logInGreen(
  String text, {
  Object? error,
  StackTrace? stackTrace,
}) {
  _logInAnyColor(text, LogColor.green.anciCode, error, stackTrace);
}

/// Will print the [text] in `black` color to the console.
void logInBlack(
  String text, {
  Object? error,
  StackTrace? stackTrace,
}) {
  _logInAnyColor(text, LogColor.black.anciCode, error, stackTrace);
}

/// Will print the [text] in `white` color to the console.
void logInWhite(
  String text, {
  Object? error,
  StackTrace? stackTrace,
}) {
  _logInAnyColor(text, LogColor.white.anciCode, error, stackTrace);
}

/// Will print the [text] in `red` color to the console.
void logInRed(
  String text, {
  Object? error,
  StackTrace? stackTrace,
}) {
  _logInAnyColor(text, LogColor.red.anciCode, error, stackTrace);
}

/// Will print the [text] in `yellow` color to the console.
void logInYellow(
  String text, {
  Object? error,
  StackTrace? stackTrace,
}) {
  _logInAnyColor(text, LogColor.yellow.anciCode, error, stackTrace);
}

/// Will print the [text] in `blue` color to the console.
void logInBlue(
  String text, {
  Object? error,
  StackTrace? stackTrace,
}) {
  _logInAnyColor(text, LogColor.blue.anciCode, error, stackTrace);
}

/// Will print the [text] in `cyan` color to the console.
void logInCyan(
  String text, {
  Object? error,
  StackTrace? stackTrace,
}) {
  _logInAnyColor(text, LogColor.cyan.anciCode, error, stackTrace);
}

/// Will print the [text] in `magenta` color to the console.
void logInMagenta(
  String text, {
  Object? error,
  StackTrace? stackTrace,
}) {
  _logInAnyColor(text, LogColor.magenta.anciCode, error, stackTrace);
}

void _logInAnyColor(
  String text,
  String colorAnci,
  Object? error,
  StackTrace? stackTrace,
) {
  final textWithColor = '$colorAnci$text${LogColor.resetColor.anciCode}';
  final errorWithColor = '$colorAnci$error${LogColor.resetColor.anciCode}';
  final String stackTraceStr;
  if (stackTrace != null) {
    stackTraceStr = _castStackTraceToString(stackTrace, colorAnci) ?? '';
  } else {
    stackTraceStr = '';
  }
  dev.log('\n$textWithColor\n$errorWithColor\n\n$stackTraceStr');
}
