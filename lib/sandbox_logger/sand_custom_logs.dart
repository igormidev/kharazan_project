import 'dart:convert';
import 'dart:developer' as dev;

part 'log_templates.dart';
part 'values/constants.dart';
part 'color_logs.dart';
part 'values/enums.dart';
part 'log_type_model.dart';
part 'values/extensions.dart';
part 'stack_trace_formater.dart';

class SandLog implements SetConfig, AddLogModel {
  // ┌───────────────────────────────────────────────────────
  // ├  Builders of the log
  // └───────────────────────────────────────────────────────

  SandLog._internal({
    required String headler,
    required LogColor color,
    required String icon,
  })  : _headler = headler,
        _color = color,
        _icon = icon,
        _horizontalLenght = _maxHorizontalLenght;

  static SandLog get error => SandLog._internal(
        headler: 'An error has occurred !',
        color: LogColor.red,
        icon: '⛔',
      );

  static SandLog get info => SandLog._internal(
        headler: 'Info:',
        color: LogColor.white,
        icon: '*️⃣',
      );

  static SandLog get warning => SandLog._internal(
        headler: 'Warning! be alert with this:',
        color: LogColor.yellow,
        icon: '🔔',
      );

  static SandLog get success => SandLog._internal(
        headler: 'Uhul! Success! No bugs.',
        color: LogColor.green,
        icon: '✅',
      );

  // ┌───────────────────────────────────────────────────────
  // ├  Log configuration
  // └───────────────────────────────────────────────────────

  /// Here you can configure your [SandLog] functions will
  /// print logs in terminal or not.
  ///
  /// This is useful because it's good to configure to
  /// print logs or not based on whether the
  /// application is in release or debug mode.
  static void configureIfWillLog(bool willLog) => _willLog = willLog;

  static bool _willLog = true;

  /// Set the default horizontal lenght of the logs to be used when
  /// [setMaxHorizontalLenght] isn't called in a log function.
  void configureMaxLenght(int maxLenght) => _maxHorizontalLenght = maxLenght;

  static int _maxHorizontalLenght = 80;

  // ┌───────────────────────────────────────────────────────
  // ├  The values for the log
  // └───────────────────────────────────────────────────────

  String _headler;
  LogColor _color;
  String _icon;
  int _horizontalLenght;

  final List<LogModel> logs = [];

  // ┌───────────────────────────────────────────────────────
  // ├  Builder implementations
  // └───────────────────────────────────────────────────────

  @override
  AddLogModel addException(Object error, StackTrace stackTrace) {
    if (_willLog == false) return this;
    final errorModel = LogExceptionModel(error: error, stackTrace: stackTrace);
    logs.add(errorModel);
    return this;
  }

  @override
  AddLogModel addMap(Map<String, dynamic> map) {
    if (_willLog == false) return this;
    logs.add(LogMapModel(map));
    return this;
  }

  @override
  AddLogModel addString(String text) {
    if (_willLog == false) return this;
    logs.add(LogStringModel(text));
    return this;
  }

  @override
  void log() {
    if (_willLog == false) return;
    logs.insert(0, LogStringModel(_headler, color: _color, icon: _icon));
    logTemplateBuilder(_normalize(logs), horizontalLenght: _horizontalLenght);
  }

  // ┌───────────────────────────────────────────────────────
  // ├  Functions
  // └───────────────────────────────────────────────────────
  // ignore: unused_element
  LogModel _generateErrorLogs(
    Object? error,
    StackTrace? stackTrace,
    LogColor color,
  ) {
    assert(
      error == null && stackTrace != null,
      'Can not have a stackTrace without a error',
    );
    assert(error == null, 'Can not have a null error');

    if (error != null && stackTrace == null) {
      return LogStringModel.bottom('$error', color: color);
    }
    return LogExceptionModel.bottom(
      error: error!,
      stackTrace: stackTrace!,
      color: color,
    );
  }

  List<LogModel> _normalize(List<LogModel> logs) {
    return logs.mapper((log, isLast, isFirst, index) {
      if (isFirst) {
        log = log.copyWith(borderType: LogBorderType.headler);
      } else if (isLast) {
        log = log.copyWith(borderType: LogBorderType.bottom);
      } else {
        log = log.copyWith(borderType: LogBorderType.middle);
      }
      log = log.copyWith(color: _color);

      return log;
    });
  }

  /// Use this method as tempalte to build your custom log
  /// with the combination of [LogModel].
  ///
  /// If the [color] parameter is not null, will make all [logModels] have
  /// the same [color]. Otherwise, each [LogModel] will have the color
  /// that was configured inside there.
  ///
  /// The horizontal size of the log is determined by the [horizontalLenght]parameter
  /// that `can not be less then 70`.
  static void logTemplateBuilder(
    List<LogModel> logModels, {
    LogColor? color,
    int horizontalLenght = 80,
  }) {
    if (_willLog == false) return;
    assert(horizontalLenght >= 70, 'Can not be less then 70');

    // The text what will have a diferent color
    final List<String> textsToMakeHighLightedl = [];

    // Here is where we put the string that we will print.
    List<String> templates = [];

    // Here we do the logic to configure the color of the logs
    // that will be used in the print process.
    //
    // If we have the color parameter, all logs will have that same color.
    final List<LogModel> logModelsCastedToDesiredColor;
    if (color != null) {
      logModelsCastedToDesiredColor = logModels.map((model) {
        return model.copyWith(color: color);
      }).toList();
    } else {
      logModelsCastedToDesiredColor = logModels;
    }

    // Here i will fill my list of strings [templates] that will me printed with
    // Strings that depend of the type of the abstract class [LogModel].
    for (LogModel model in logModelsCastedToDesiredColor) {
      String? template;
      if (model is LogMapModel) {
        textsToMakeHighLightedl.addAll(model.emphasisTexts);
        template = _buildMapTemplate(model, horizontalLenght, model.borderType);
      } else if (model is LogExceptionModel) {
        template = _getStackTraceTemplate(model, horizontalLenght);
      } else if (model is LogStringModel) {
        textsToMakeHighLightedl.addAll(model.emphasisTexts);
        template = _getStringTemplate(model, horizontalLenght);
      }

      if (template == null) return;

      final resetColor = LogColor.resetColor.anciCode;
      final taggedText = template.replaceAll('\n', ('$BREAKLINEFLAG\n'));
      final splitedAndTaggedList = taggedText.split('\n');
      final coloredText = splitedAndTaggedList.map((sentence) {
        String text = sentence.replaceAll(BREAKLINEFLAG, '$resetColor\n');
        if (text.contains(resetColor) == false) text += resetColor;
        String colorText = model.color.anciCode + text;

        for (var text in textsToMakeHighLightedl) {
          colorText = colorText.replaceAll(
            text,
            '${LogColor.white.anciCode}$text${model.color.anciCode}',
          );
        }

        return colorText;
      }).join();

      templates.add(coloredText);
    }
    final text = templates.join();

    dev.log(text);
  }

  @override
  SetConfig setColor(LogColor color) {
    _color = color;
    return this;
  }

  @override
  SetConfig setHeadlerText(String headlerText) {
    _headler = headlerText;
    return this;
  }

  @override
  SetConfig setIcon(String icon) {
    _icon = icon;
    return this;
  }

  @override
  SetConfig setMaxHorizontalLenght(int lenght) {
    _horizontalLenght = lenght;
    return this;
  }
}

abstract class SetConfig implements AddLogModel {
  SetConfig setColor(LogColor color);
  SetConfig setHeadlerText(String headlerText);
  SetConfig setIcon(String icon);
  SetConfig setMaxHorizontalLenght(int lenght);
}

abstract class AddLogModel {
  AddLogModel addException(Object error, StackTrace stackTrace);
  AddLogModel addMap(Map<String, dynamic> map);
  AddLogModel addString(String text);
  void log();
}

// class SandLog {
//   SandLog._internal();
//   static final SandLog _singleton = SandLog._internal();
//   static SandLog get instance => _singleton;

//   /// Here you can configure your [SandLog] functions will
//   /// print logs in terminal or not.
//   ///
//   /// This is useful because it's good to configure to
//   /// print logs or not based on whether the
//   /// application is in release or debug mode.
//   void setWillLog(bool willLog) {
//     _willLog = willLog;
//   }

//   static bool _willLog = true;

//   /// A ready-made [text] log template for errors with default red
//   /// [color] and ⛔ as the default [errorIcon] that has an optional
//   /// [header] with the title of the error and the possibility to log a [map].
//   static void error({
//     String? text,
//     Map<String, dynamic>? map,
//     String header = 'An error has occurred !',
//     LogColor color = LogColor.red,
//     String icon = '⛔',
//     int horizontalLenght = 80,
//     Object? error,
//     StackTrace? stackTrace,
//   }) {
//     if (_willLog == false) return;
//     final logs = _generateStringAndMapLogs(text, map, header, color, icon);
//     if (error != null) logs.add(_generateErrorLogs(error, stackTrace, color));
//     logTemplateBuilder(logs, color: color, lenght: horizontalLenght);
//   }

//   static void info({
//     String? text,
//     Map<String, dynamic>? map,
//     String header = 'Info:',
//     LogColor color = LogColor.white,
//     String icon = '*️⃣',
//     int horizontalLenght = 80,
//     Object? error,
//     StackTrace? stackTrace,
//   }) {
//     if (_willLog == false) return;
//     final logs = _generateStringAndMapLogs(text, map, header, color, icon);
//     if (error != null) logs.add(_generateErrorLogs(error, stackTrace, color));
//     logTemplateBuilder(logs, color: color, lenght: horizontalLenght);
//   }

//   static void warning({
//     String? text,
//     Map<String, dynamic>? map,
//     String header = 'Warning! be alert with this:',
//     LogColor color = LogColor.yellow,
//     String icon = '🔔',
//     int horizontalLenght = 80,
//     Object? error,
//     StackTrace? stackTrace,
//   }) {
//     if (_willLog == false) return;
//     final logs = _generateStringAndMapLogs(text, map, header, color, icon);
//     if (error != null) logs.add(_generateErrorLogs(error, stackTrace, color));
//     logTemplateBuilder(logs, color: color, lenght: horizontalLenght);
//   }

//   static void success({
//     String? text,
//     Map<String, dynamic>? map,
//     String header = 'Uhul! Success! No bugs.',
//     LogColor color = LogColor.green,
//     String icon = '✅',
//     int horizontalLenght = 80,
//     Object? error,
//     StackTrace? stackTrace,
//   }) {
//     if (_willLog == false) return;
//     final logs = _generateStringAndMapLogs(text, map, header, color, icon);
//     if (error != null) logs.add(_generateErrorLogs(error, stackTrace, color));
//     logTemplateBuilder(logs, color: color, lenght: horizontalLenght);
//   }

//   static List<LogModel> _generateStringAndMapLogs(
//     String? message,
//     Map<String, dynamic>? model,
//     String header,
//     LogColor color,
//     String? icon,
//   ) {
//     if (message?.contains('\n') ?? false) {
//       message = message?.replaceAll('\n', '');
//     }
//     if (model == null && message == null) {
//       error(
//         text: ' YOU ARE TRYING TO LOG WITHOUT PASSING A TEXT OR MAP',
//         header: 'LOG ERROR',
//       );
//       assert(model == null && message == null);
//     }
//     final LogStringModel logHead =
//         LogStringModel.headler(header, color: color, icon: icon);
//     LogStringModel? text;
//     LogMapModel? map;

//     if (model != null) {
//       if (message == null) {
//         map = LogMapModel.bottom(model, color: color);
//       } else {
//         map = LogMapModel.middle(model, color: color);
//       }
//     }

//     if (message != null) {
//       text = LogStringModel.bottom(message, color: color);
//     }
//     List<LogModel> list = [
//       logHead,
//       if (map != null) map,
//       if (text != null) text,
//     ];
//     return list;
//   }

//   static LogModel _generateErrorLogs(
//     Object? error,
//     StackTrace? stackTrace,
//     LogColor color,
//   ) {
//     assert(
//       error == null && stackTrace != null,
//       'Can not have a stackTrace without a error',
//     );
//     assert(error == null, 'Can not have a null error');

//     if (error != null && stackTrace == null) {
//       return LogStringModel.bottom('$error', color: color);
//     }
//     return LogExceptionModel.bottom(
//       error: error!,
//       stackTrace: stackTrace!,
//       color: color,
//     );
//   }

//   /// Use this method as tempalte to build your custom log
//   /// with the combination of [LogModel].
//   ///
//   /// If the [color] parameter is not null, will make all [logModels] have
//   /// the same [color]. Otherwise, each [LogModel] will have the color
//   /// that was configured inside there.
//   ///
//   /// The horizontal size of the log is determined by the [lenght]parameter
//   /// that `can not be less then 70`.
//   static void logTemplateBuilder(
//     List<LogModel> logModels, {
//     LogColor? color,
//     int lenght = 80,
//   }) {
//     if (_willLog == false) return;
//     assert(lenght >= 70, 'Can not be less then 70');

//     // The text what will have a diferent color
//     final List<String> textsToMakeHighLightedl = [];

//     // Here is where we put the string that we will print.
//     List<String> templates = [];

//     // Here we do the logic to configure the color of the logs
//     // that will be used in the print process.
//     //
//     // If we have the color parameter, all logs will have that same color.
//     final List<LogModel> logModelsCastedToDesiredColor;
//     if (color != null) {
//       logModelsCastedToDesiredColor = logModels.map((model) {
//         return model.copyWith(color: color);
//       }).toList();
//     } else {
//       logModelsCastedToDesiredColor = logModels;
//     }

//     // Here i will fill my list of strings [templates] that will me printed with
//     // Strings that depend of the type of the abstract class [LogModel].
//     for (LogModel model in logModelsCastedToDesiredColor) {
//       String? template;
//       if (model is LogMapModel) {
//         textsToMakeHighLightedl.addAll(model.emphasisTexts);
//         template = _buildMapTemplate(model, lenght, model.borderType);
//       } else if (model is LogExceptionModel) {
//         template = _getStackTraceTemplate(model, lenght);
//       } else if (model is LogStringModel) {
//         textsToMakeHighLightedl.addAll(model.emphasisTexts);
//         template = _getStringTemplate(model, lenght);
//       }

//       if (template == null) return;

//       final resetColor = LogColor.resetColor.anciCode;
//       final taggedText = template.replaceAll('\n', (BREAKLINEFLAG + '\n'));
//       final splitedAndTaggedList = taggedText.split('\n');
//       final coloredText = splitedAndTaggedList.map((sentence) {
//         String text = sentence.replaceAll(BREAKLINEFLAG, '$resetColor\n');
//         if (text.contains(resetColor) == false) text += resetColor;
//         String colorText = model.color.anciCode + text;

//         textsToMakeHighLightedl.forEach((text) {
//           colorText = colorText.replaceAll(
//             text,
//             '${LogColor.white.anciCode}$text${model.color.anciCode}',
//           );
//         });

//         return colorText;
//       }).join();

//       templates.add(coloredText);
//     }
//     final text = templates.join();

//     dev.log(text);
//   }

//   static String _getStringTemplate(LogStringModel model, int lenght) {
//     // Using a MARKER, could be any value that would hardly appear in a text
//     //
//     // This is made because i need some caracter to replace later for the icon, and
//     // that place is the marker.
//     final text = model.icon == null ? model.text : '$ICON ${model.text}';
//     final border = model.borderType;
//     return _buildStringTemplate(text, lenght, border).replaceAll(
//       ICON,
//       '${model.icon}',
//     );
//   }

//   static String _getStackTraceTemplate(LogExceptionModel model, int lenght) {
//     String template = '';
//     final errorModel = LogStringModel('Error: ${model.error}');

//     final errorBorder = _getStackTopBorder(model.borderType);
//     final stackBorder = _getStackBottomBorder(model.borderType);

//     final text = errorModel.text;
//     final errorInText = _buildStringTemplate(text, lenght, errorBorder);
//     template += errorInText;

//     final stackModel = _buildStackTraceTemplate(model, lenght, stackBorder);
//     template += stackModel;
//     return template;
//   }

//   static LogBorderType _getStackTopBorder(LogBorderType border) {
//     switch (border) {
//       case LogBorderType.headler:
//         return LogBorderType.headler;
//       case LogBorderType.middle:
//         return LogBorderType.middle;
//       case LogBorderType.bottom:
//         return LogBorderType.middle;
//       case LogBorderType.single:
//         return LogBorderType.headler;
//     }
//   }

//   static LogBorderType _getStackBottomBorder(LogBorderType border) {
//     switch (border) {
//       case LogBorderType.headler:
//         return LogBorderType.middle;
//       case LogBorderType.middle:
//         return LogBorderType.middle;
//       case LogBorderType.bottom:
//         return LogBorderType.bottom;
//       case LogBorderType.single:
//         return LogBorderType.bottom;
//     }
//   }
// }
