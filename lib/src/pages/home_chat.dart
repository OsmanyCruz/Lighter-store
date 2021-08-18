import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:zippo_ventas/src/pages/friends_chat.dart';
import 'package:zippo_ventas/src/utils/data_utils.dart';
import 'package:zippo_ventas/src/widgets/builAppBarReturn.dart';

class HomeChat extends StatefulWidget {
  HomeChat({Key key}) : super(key: key);

  @override
  _HomeChatState createState() => _HomeChatState();
}

class _HomeChatState extends State<HomeChat> {
  
  @override
  void initState(){ 
    super.initState();
     _onGoPressed();
  }

   Future<void> _onGoPressed()async{
    
       final client = StreamChat.of(context).client;
    
           Navigator.of(context).push(MaterialPageRoute(
              builder: (_)=>FriendsChat()
            ));
 
 
     
  }
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: buildAppBarReturn(context),
      body:Center(child: CircularProgressIndicator())
    );
  }
            
              
}