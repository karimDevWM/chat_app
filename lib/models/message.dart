import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  Message({
    required this.text,
    required this.from,
    required this.createdAt,
  });
  Message.fromJson(Map<String, Object?> json)
      : this(
          text: json['text'].toString(),
          from: json['from'].toString(),
          createdAt: json['createdAt'] as Timestamp,
        );

  final String text;
  final String from;
  final Timestamp createdAt;

  Map<String, Object?> toJson() {
    return {
      'text': text,
      'from': from,
      'createdAt': createdAt,
    };
  }
}
