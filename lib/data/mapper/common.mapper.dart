import '../dto/common/response_wrapeer/response_wrapper.dart';

extension ResponseWrapperX on ResponseWrapper {
  ResponseWrapper<T> toModel<T>(T data) {
    return ResponseWrapper<T>(
      status: status,
      code: code,
      massage: massage,
      data: data,
    );
  }
}
