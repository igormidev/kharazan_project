part of 'sand_custom_logs.dart';

/// This is a abstract class. Use the classes [LogStringModel] for [String]
/// or [const LogMapModel] for logging a [Map] of a object, for exemple.
abstract class LogModel {
  const LogModel();
  abstract final LogColor color;
  abstract final LogBorderType borderType;
  LogModel copyWith({LogColor color, LogBorderType borderType});
}

/// # Types of logs
/// The log tamplate has borders in top, right, left and bottom.
///
/// ### Use enums to separate information from a log.
/// The normal sequence is a [headler] first, then an indeterminate number of [middle] and ending with [bottom].
/// Using only [headler] and ending with [bottom] in the sequence is totaly okay to.
///
/// ### This is an overview of which borders each enum contains:
/// - [headler] will have `top, left` and `right` border and don't have a `bottom` border.
/// - [bottom] will have `bottom, left` and `right` border and don't have a `top` border.
/// - [middle] will have only `left` and `right` border and don't have a `top` or `bottom` border.
/// - [single] will have `all border` directions and is stand alone, it's not meant to be used together like the others.
enum LogBorderType { headler, middle, bottom, single }

class LogStringModel extends LogModel {
  final String _rawText;

  /// The text that will be printed.
  String get text {
    return _rawText.replaceAll(I, '');
  }

  /// The Strings that will be printed in the console with a highlight.
  List<String> get emphasisTexts {
    final List<String> texts = [];

    String buffer = '';
    final textList = _rawText.split(' ').trim.removeEmpty;

    for (var text in textList) {
      final hasInBuffer = buffer.contains(I.trim());
      final hasInText = text.contains(I.trim());
      if (hasInBuffer || hasInText) {
        if (hasInText) {
          if (hasInBuffer) {
            texts.add(buffer.replaceAll(I.trim(), '').trim());
            buffer = '';
          } else {
            buffer += text.trim();
          }
        } else {
          buffer += '$text ';
        }
      }
    }

    return texts;
  }

  /// A optional UTF-8 unicode icon.
  /// Exemple: '🔔'
  final String? icon;

  /// A enum that represents the type of border of your log template
  @override
  final LogBorderType borderType;

  /// The color of the [text] and borders printed in the log
  @override
  final LogColor color;

  LogStringModel(
    String text, {
    this.borderType = LogBorderType.single,
    this.color = LogColor.cyan,
    this.icon,
  }) : _rawText = text;

  LogStringModel.single(
    String text, {
    this.color = LogColor.cyan,
    this.icon,
  })  : borderType = LogBorderType.single,
        _rawText = text;

  LogStringModel.headler(
    String text, {
    this.color = LogColor.cyan,
    this.icon,
  })  : borderType = LogBorderType.headler,
        _rawText = text;

  LogStringModel.middle(
    String text, {
    this.color = LogColor.cyan,
  })  : borderType = LogBorderType.middle,
        icon = null,
        _rawText = text;

  const LogStringModel.bottom(
    String text, {
    this.color = LogColor.cyan,
    this.icon,
  })  : borderType = LogBorderType.bottom,
        _rawText = text;

  @override
  String toString() {
    return 'LogStringModel(text: $text, icon: $icon, borderType: $borderType, color: $color)';
  }

  @override
  LogStringModel copyWith({
    String? text,
    String? icon,
    LogBorderType? borderType,
    LogColor? color,
  }) {
    return LogStringModel(
      text ?? _rawText,
      icon: icon ?? this.icon,
      borderType: borderType ?? this.borderType,
      color: color ?? this.color,
    );
  }
}

class LogMapModel extends LogModel {
  /// A optional title that will be on top of your [map].
  final String? title;

  /// A map to be printed in the console.
  /// To **print a object**, call his `toMap()` function.
  ///
  /// The model will be indented automatically when transformed to a string.
  final Map<String, dynamic> map;

  /// The Strings that will be printed in the console with a highlight.
  List<String> get emphasisTexts {
    return map.entries.map((entry) => '"${entry.key}"').toList();
  }

  /// A enum that represents the type of border of your log template
  @override
  final LogBorderType borderType;

  /// The color of the text printed in the log. The [title], [map] and borders.
  @override
  final LogColor color;

  const LogMapModel(
    this.map, {
    this.title,
    this.borderType = LogBorderType.single,
    this.color = LogColor.cyan,
  });

  const LogMapModel.single(
    this.map, {
    this.title,
    this.color = LogColor.cyan,
  }) : borderType = LogBorderType.single;

  const LogMapModel.headler(
    this.map, {
    this.title,
    this.color = LogColor.cyan,
  }) : borderType = LogBorderType.headler;

  const LogMapModel.middle(
    this.map, {
    this.title,
    this.color = LogColor.cyan,
  }) : borderType = LogBorderType.middle;

  const LogMapModel.bottom(
    this.map, {
    this.title,
    this.color = LogColor.cyan,
  }) : borderType = LogBorderType.bottom;

  @override
  String toString() {
    return 'const LogMapModel(title: $title, map: $map, borderType: $borderType, color: $color)';
  }

  @override
  LogMapModel copyWith({
    String? title,
    Map<String, dynamic>? map,
    LogBorderType? borderType,
    LogColor? color,
  }) {
    return LogMapModel(
      map ?? this.map,
      title: title ?? this.title,
      borderType: borderType ?? this.borderType,
      color: color ?? this.color,
    );
  }
}

class LogExceptionModel extends LogModel {
  /// A enum that represents the type of border of your log template
  @override
  final LogBorderType borderType;

  /// The color of the text printed in the log. The [error], [stackTrace] and borders.
  @override
  final LogColor color;

  /// The [Exception] error that will be logged with .toString().
  final Object error;

  /// The [StackTrace] that will be logged with the tracking of the error.
  final StackTrace stackTrace;

  LogExceptionModel({
    required this.error,
    required this.stackTrace,
    this.color = LogColor.cyan,
    this.borderType = LogBorderType.single,
  });

  LogExceptionModel.single({
    required this.error,
    required this.stackTrace,
    this.color = LogColor.cyan,
  }) : borderType = LogBorderType.single;

  LogExceptionModel.headler({
    required this.error,
    required this.stackTrace,
    this.color = LogColor.cyan,
  }) : borderType = LogBorderType.headler;

  LogExceptionModel.middle({
    required this.error,
    required this.stackTrace,
    this.color = LogColor.cyan,
  }) : borderType = LogBorderType.middle;

  LogExceptionModel.bottom({
    required this.error,
    required this.stackTrace,
    this.color = LogColor.cyan,
  }) : borderType = LogBorderType.bottom;

  @override
  LogExceptionModel copyWith({
    LogBorderType? borderType,
    LogColor? color,
    Object? error,
    StackTrace? stackTrace,
  }) {
    return LogExceptionModel(
      borderType: borderType ?? this.borderType,
      color: color ?? this.color,
      error: error ?? this.error,
      stackTrace: stackTrace ?? this.stackTrace,
    );
  }
}
