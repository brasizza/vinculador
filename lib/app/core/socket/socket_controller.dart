import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class SocketController {
  late io.Socket socket;
  void init() {
    socket = io.io(
        'http://socket-io.epoc.com.br',
        io.OptionBuilder()
            .setTransports(['websocket']) // for Flutter or Dart VM
            .setPath('/socket-io/socket.io')
            .setTimeout(2000)
            .disableAutoConnect()
            .enableMultiplex()
            .enableReconnection()
            .build());

    socket.onConnect((data) {
      debugPrint('onConnect -  $data + =>  ${DateTime.now()}');
    });

    socket.onDisconnect((data) {
      debugPrint('onDisconnect -  $data + =>  ${DateTime.now()}');
    });

    socket.onConnecting((data) {
      debugPrint('onConnecting - ${DateTime.now()}');
    });

    socket.onError((data) {
      socket.disconnect();
      socket.connect();
      debugPrint('onError - ${DateTime.now()}');
    });

    socket.onConnectError((data) {
      debugPrint('onConnectError - ${DateTime.now()}');
    });

    socket.onReconnect((data) {
      debugPrint('onReconnect - ${DateTime.now()}');
    });
  }

  void connect() {
    socket.connect();
  }

  void close() {
    socket.dispose();
  }

  clearListeners() {
    socket.clearListeners();
  }

  addChannel(String channel, Function f) {
    debugPrint('Adicionando no channel $channel');
    socket.on(channel, (data) => f(data));
  }

  removeChannel(String channel) {
    debugPrint('Removendo o channel $channel');
    socket.off(channel);
  }

  void reconnect() {
    if (socket.connected) {
      socket.disconnect();
    }
    socket.connect();
  }
}
