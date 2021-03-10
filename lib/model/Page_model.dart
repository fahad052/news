import 'package:flutter/material.dart';

class PageModel {
  String _images;
  String _titles;
  String _descrabtions;
  IconData _icons;
  PageModel(this._titles, this._descrabtions, this._images, this._icons);

  String get image => _images;
  String get title => _titles;
  String get descrabtion => _descrabtions;
  IconData get icon => _icons;
}
