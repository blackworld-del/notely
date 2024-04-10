class ErrorResponse {
  final dynamic data;
  final ErrorDetail error;

  ErrorResponse({required this.data, required this.error});

  factory ErrorResponse.fromJson(Map<String, dynamic> json) {
    return ErrorResponse(
      data: json['data'],
      error: ErrorDetail.fromJson(json['error']),
    );
  }
}

class ErrorDetail {
  final String message;

  ErrorDetail({
    required this.message,
  });

  factory ErrorDetail.fromJson(Map<String, dynamic> json) {
    return ErrorDetail(
      message: json['message'],
    );
  }
}
