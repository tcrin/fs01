import 'package:flutter/material.dart';

class ScreenValues {
  final BuildContext? _context;
  double? _height;
  double? _width;

  ScreenValues(this._context) {
    MediaQueryData _queryData = MediaQuery.of(_context!);
    _height = _queryData.size.height / 100.0;
    _width = _queryData.size.width / 100.0;
  }

  double sizeH(double r) {
    return _height! * r;
  }

  double sizeW(double r) {
    return _width! * r;
  }
}