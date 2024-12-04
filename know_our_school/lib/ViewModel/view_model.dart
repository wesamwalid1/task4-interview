//TODO: add your view model class here

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../model/model.dart';

class SchoolViewModel extends ChangeNotifier {
  School? _school;

  School? get school => _school;

  Future<void> loadSchoolData() async {
    final String response = await rootBundle.loadString('lib/JSONdata/SchoolData.json');
    final List<dynamic> data = json.decode(response);
    _school = School.fromJson(data.first);
    notifyListeners();
  }
}
