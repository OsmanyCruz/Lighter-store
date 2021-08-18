import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:zippo_ventas/src/utils/data_utils.dart';
import 'package:zippo_ventas/src/widgets/builAppBarReturn.dart';
import 'package:zippo_ventas/src/pages/home_chat.dart';
 

class ChatPage extends StatefulWidget {
    
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  StreamChatClient _client;

  @override
  void initState() { 
    _client = StreamChatClient(
      'tfmc6ac54k36',
      logLevel: Level.INFO
    );
    
    super.initState();
  }
 
  
  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      builder: (context,child){
        return StreamChat(
          streamChatThemeData: StreamChatThemeData(),
          child: child,
          client: _client,
        );
      },
      home: HomeChat(),
    );
  }
}