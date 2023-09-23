import 'dart:io';

abstract class NetworkInfoAwsome {
  Future<bool> get isConnected;
}

class CheckNetworkInfoAwsome implements NetworkInfoAwsome {
  @override
  Future<bool> get isConnected async {
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
