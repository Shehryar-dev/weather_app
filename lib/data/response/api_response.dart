import 'package:weather_app/core/constants/screen_path.dart';

class ApiResponse<T>{
    Status? status;
    T? data;
    String? message;

    ApiResponse(this.status, this.data, this.message);

    ApiResponse.loading() : status = Status.loading;

    ApiResponse.completed(this.data) : status = Status.completed;

    ApiResponse.error(this.message) : status = Status.error;
}