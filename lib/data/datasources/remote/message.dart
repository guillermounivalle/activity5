

import 'package:firebase_database/firebase_database.dart';

class Message {
  late final String text;
  late final DateTime date;

  Message (this.text, this.date);

  Message.fromJson(Map<dynamic, dynamic> json)
   : date = DateTime.parse(json['date'] as String),
     text = json['text'] as String;

  Map<dynamic, dynamic> toJson()=> <dynamic, dynamic>{
    'date': date.toString(),
    'text': text
  };
}