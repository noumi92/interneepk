class ApiExceptions implements Exception{
  final _message;
  final _prefix;
  ApiExceptions([this._message, this._prefix]);
  @override
  String toString(){
    return '$_prefix : $_message';
  }
}

class GeneralException extends ApiExceptions{
  GeneralException([String? message]) : super(message, 'Something went wrong');
}

class InternetException extends ApiExceptions{
  InternetException([String? message]) : super(message, 'No Internet');
}

class RequestTimeOut extends ApiExceptions{
  RequestTimeOut([String? message]) : super(message, 'Request Time out');
}

class ServerException extends ApiExceptions{
  ServerException([String? message]) : super(message, 'Server Not Responding');
}

class InvalidUrlException extends ApiExceptions{
  InvalidUrlException([String? message]) : super(message, 'Invalid Urls');
}
class FetchDataException extends ApiExceptions{
  FetchDataException([String? message]) : super(message, 'Data Fetch Error');
}