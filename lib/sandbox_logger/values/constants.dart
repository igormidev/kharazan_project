// ignore_for_file: constant_identifier_names

part of '../sand_custom_logs.dart';

/// This resets the color to the default CLI color
const String _ansiResetColor = '\x1B[0m';

// ANSI color constants
const String _ansiBlackColor = '\x1b[30m';
const String _ansiRedColor = '\x1b[31m';
const String _ansiGreenColor = '\x1b[32m';
const String _ansiYellowColor = '\x1b[33m';
const String _ansiBlueColor = '\x1b[34m';
const String _ansiMagentaColor = '\x1b[35m';
const String _ansiCyanColor = '\x1b[36m';
const String _ansiWhiteColor = '\x1b[37m';

// String Marker (Can be anything that is hard to have in a text, to use as a flag)
const String ICON = '[#(d';
const String BREAKLINEFLAG = '{H{-';
const String I = ' INITHIGHLIGHT ';
const int BREAKLINECODEUINT = 10;
