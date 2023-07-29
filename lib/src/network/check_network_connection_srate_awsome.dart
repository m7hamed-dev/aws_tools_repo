import 'dart:io';

abstract class NetWorkStateAwsome {
  Future<bool> isInternetConnected();
}

class CheckNetworkStateAwsome implements NetWorkStateAwsome {
  @override
  Future<bool> isInternetConnected() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } catch (e) {
      if (e is SocketException) {
        return false;
      }
      return false;
    }
  }
}
