import 'package:flutter/material.dart';

class ServiceEntity{
    String _picUrl;
    String _titleName;

    ServiceEntity(this._picUrl,this._titleName);

    String get titleName => _titleName;

    set titleName(String value) {
      _titleName = value;
    }

    String get picUrl{
      return _picUrl;
    }

    set picId(String value) {
      _picUrl = value;
    }

}