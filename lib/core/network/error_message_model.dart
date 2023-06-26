class ErrorMessageModel {
  final String message;
  final int statusCode;
  final bool success;

  ErrorMessageModel({required this.statusCode, required this.message, required this.success});

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) => ErrorMessageModel(
        message: json['message'],
        statusCode: json["status_code"],
        success: json["success"],
      );
}
