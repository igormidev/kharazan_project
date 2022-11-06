part of 'sand_custom_logs.dart';

String _buildStringTemplate(
  String rawText,
  int lenght,
  LogBorderType borderType,
) {
  final linesBreaked = _obtainBreakLinesOfText(rawText, lenght);
  final List<String> lines = _formSentencesWithWords(linesBreaked, lenght);
  final String linesWithBorder = _putBorderInLines(lines, lenght);
  final String template =
      _topAndBottomWrapper(linesWithBorder, lenght, borderType);
  return template;
}

String _buildMapTemplate(
  LogMapModel model,
  int lenght,
  LogBorderType borderType,
) {
  final List<String> splitedMap = _getSplitedMapText(model.map, lenght);
  final linesBreaked = _obtainBreakLinesOfText(model.title ?? '', lenght);
  final titleSentences = _formSentencesWithWords(linesBreaked, lenght);
  List<String> words = [
    if (model.title != null) ...titleSentences,
    ...splitedMap,
  ];
  String linesWithBorder = _putBorderInLines(words, lenght);
  String template = _topAndBottomWrapper(linesWithBorder, lenght, borderType);
  return template;
}

String _buildStackTraceTemplate(
  LogExceptionModel model,
  int lenght,
  LogBorderType borderType,
) {
  final stack = model.stackTrace;
  final stackTraceConvertedToString = _castStackTraceToString(stack);

  final List<String>? splitedMap = stackTraceConvertedToString?.split('\n');

  if (splitedMap == null || splitedMap.isEmpty) return '';
  final linesWithBorder = _putBorderInLines(splitedMap, lenght);
  final linesWithPadding = linesWithBorder.replaceAll('│ (', '#     │ (');
  final template = _topAndBottomWrapper(linesWithPadding, lenght, borderType);
  return template;
}

List<String> _obtainBreakLinesOfText(String rawText, int lenght) {
  final taggedTextInCodeUint = <int>[];
  for (var codeUint in rawText.codeUnits) {
    if (codeUint == BREAKLINECODEUINT) {
      taggedTextInCodeUint.addAll(' $BREAKLINEFLAG '.codeUnits);
    } else {
      taggedTextInCodeUint.add(codeUint);
    }
  }

  final String flaggedText = utf8.decode(taggedTextInCodeUint);

  final List<String> splittedWord = flaggedText.split(' ');
  return splittedWord;
}

List<String> _formSentencesWithWords(
  List<String> words,
  int horizontalLenght, [
  String prefix = '',
]) {
  List<String> sentences = [];
  String sentence = prefix;

  for (var word in words) {
    if (word.contains(BREAKLINEFLAG)) {
      sentences.add(sentence);
      sentence = prefix;
      continue;
    }
    if (word.length >= horizontalLenght) {
      sentences.add(sentence);
      sentence = prefix;
      final List<String> splittedWord = _manageBigWords(word, horizontalLenght);
      sentences.addAll(splittedWord);
      continue;
    }
    final possibleSpace = sentence.isEmpty ? '' : ' ';
    if ((sentence.length + '$possibleSpace$word'.length) <= horizontalLenght) {
      sentence = '$sentence $word';
    } else {
      sentences.add(sentence);
      sentence = prefix;
      sentence = '$sentence $word';
    }
  }
  sentences.add(sentence);
  return sentences;
}

String _putBorderInLines(List<String> sentences, int horizontalLenght) {
  List<String> linesWithBorder = sentences.map((text) {
    final String paddedText = text.padRight((horizontalLenght - 1), ' ');
    return '│$paddedText │\n';
  }).toList();
  return linesWithBorder.join('');
}

String _topAndBottomWrapper(
  String text,
  int horizontalLenght,
  LogBorderType borderType,
) {
  final String traceRow = ''.padRight(horizontalLenght, '─');
  switch (borderType) {
    case LogBorderType.headler:
      return '''\n┌$traceRow┐\n$text├$traceRow┤''';
    case LogBorderType.middle:
      return '''\n$text├$traceRow┤''';
    case LogBorderType.bottom:
      return '''\n$text└$traceRow┘\n''';
    case LogBorderType.single:
      return '''\n┌$traceRow┐\n$text└$traceRow┘\n''';
  }
}

List<String> _getSplitedMapText(
  Map<String, dynamic> rawMap,
  int lenght,
) {
  final cleanMap = castMapKeysToStringIfNeeded(rawMap);
  // final String jsonMap = const JsonEncoder.withIndent('').convert(cleanMap);
  const prefix = '    ';
  final jsonMap = jsonEncode(cleanMap)
      .replaceAll('{', '{\n')
      .replaceAll('}', '\n}')
      .replaceAll(':"', ':  "')
      .replaceAll(',"', ',\n"');

  final splitedText = <String>[];

  final linesBreaked = _obtainBreakLinesOfText(jsonMap, lenght);
  final mapSentences = _formSentencesWithWords(linesBreaked, lenght, prefix);

  splitedText.addAll(mapSentences);

  final paddedSentences = splitedText.map((sentence) {
    if (sentence.trim() == '{') return sentence.replaceAll('$prefix{', '{');
    if (sentence.trim() == '}') return sentence.replaceAll('$prefix}', '}');
    if (sentence.trim().startsWith('"')) {
      return sentence.replaceAll('$prefix"', '  "');
    }
    return sentence;
  }).toList();
  return paddedSentences;
}

List<String> _manageBigWords(String word, int horizontalLenght) {
  final List<String> sentencesSplitedInWordsSmallerThanLimit = [];
  final List<String> sentences = word.splitByLength(horizontalLenght);
  for (var sentence in sentences) {
    if (sentencesSplitedInWordsSmallerThanLimit.length <= 30) {
      sentencesSplitedInWordsSmallerThanLimit.add(sentence);
    }
  }
  return [
    ...sentencesSplitedInWordsSmallerThanLimit,
    if (sentences.length > 30) 'HUGE TEXT! Sorry, had to be cropped :(',
  ];
}

/// Some a key of a map is not a primitive type, it will convert that
/// key to a string with .toString() method.
Map<String, dynamic> castMapKeysToStringIfNeeded(Map map) {
  final Map<String, dynamic> castedMap = {};
  final aceptedRunTypes = [String, bool, num, null];
  for (var entry in map.entries) {
    if (aceptedRunTypes.contains(entry.value.runtimeType)) {
      castedMap[entry.key.toString()] = entry.value;
    } else if (entry.value is List) {
      final castedListValues = [];
      for (var element in (entry.value as List)) {
        if (aceptedRunTypes.contains(entry.runtimeType)) {
          castedListValues.add(element);
        } else if (element.runtimeType is Map) {
          castedListValues.add(castMapKeysToStringIfNeeded(element));
        } else {
          castedListValues.add(element.toString());
        }
      }
      castedMap[entry.key.toString()] = castedListValues;
    } else if (entry.value is Map) {
      final castedMap = entry.value as Map;
      castedMap[entry.key.toString()] = castMapKeysToStringIfNeeded(castedMap);
    } else {
      castedMap[entry.key.toString()] = entry.value.toString();
    }
  }
  return castedMap;
}

String _getStringTemplate(LogStringModel model, int lenght) {
  // Using a MARKER, could be any value that would hardly appear in a text
  //
  // This is made because i need some caracter to replace later for the icon, and
  // that place is the marker.
  final text = model.icon == null ? model.text : '$ICON ${model.text}';
  final border = model.borderType;
  return _buildStringTemplate(text, lenght, border).replaceAll(
    ICON,
    '${model.icon}',
  );
}

String _getStackTraceTemplate(LogExceptionModel model, int lenght) {
  String template = '';
  final errorModel = LogStringModel('Error: ${model.error}');

  final errorBorder = _getStackTopBorder(model.borderType);
  final stackBorder = _getStackBottomBorder(model.borderType);

  final text = errorModel.text;
  final errorInText = _buildStringTemplate(text, lenght, errorBorder);
  template += errorInText;

  final stackModel = _buildStackTraceTemplate(model, lenght, stackBorder);
  template += stackModel;
  return template;
}

LogBorderType _getStackTopBorder(LogBorderType border) {
  switch (border) {
    case LogBorderType.headler:
      return LogBorderType.headler;
    case LogBorderType.middle:
      return LogBorderType.middle;
    case LogBorderType.bottom:
      return LogBorderType.middle;
    case LogBorderType.single:
      return LogBorderType.headler;
  }
}

LogBorderType _getStackBottomBorder(LogBorderType border) {
  switch (border) {
    case LogBorderType.headler:
      return LogBorderType.middle;
    case LogBorderType.middle:
      return LogBorderType.middle;
    case LogBorderType.bottom:
      return LogBorderType.bottom;
    case LogBorderType.single:
      return LogBorderType.bottom;
  }
}
