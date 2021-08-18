import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:zippo_ventas/src/utils/data_utils.dart';
import 'package:zippo_ventas/src/widgets/builAppBarReturn.dart';
 

class FriendsChat extends StatefulWidget {
  const FriendsChat({Key key}) : super(key: key);

  @override
  _FriendsChatState createState() => _FriendsChatState();
}

class _FriendsChatState extends State<FriendsChat> {

  final _keyChannels = GlobalKey<ChannelsBlocState>();
  
  Future <void> _onCreateChannel()async{
      final result = await showDialog(context: context,
      
       builder: (context){
         final channelController = TextEditingController();
         return AlertDialog(
           title: Text('Create Channel'),
           content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: channelController,
                    decoration: InputDecoration(
                      hintText: 'Channel Name'
                    ),
                  ),
                  ElevatedButton(onPressed:()=>Navigator.of(context).pop(channelController.text), child: Text('Go'))
                            ],
                          ),
         );
       }
      );

       if(result!= null){
         final client = StreamChat.of(context).client;
         final channel = client.channel('messaging',id: result,
         extraData: {  
                    "name": "Osmany_Christian_Chat",  
                    "image":  DataUtils.getUserImage(result.toString()),  
                    "members": ["osmany", "christian"],  
                  });
         await channel.create();
         _keyChannels.currentState.queryChannels();
       }
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // floatingActionButton: FloatingActionButton.extended(onPressed: _onCreateChannel, label: Text('Crear canal')),
            appBar: buildAppBarReturn(context),
            body: ChannelsBloc(
              key: _keyChannels,
              child: ChannelListView(
                swipeToAction: true,
                filter: {
                  'members': {
                    '\$in': [StreamChat.of(context).user.id],
                  }
                },
                sort: [SortOption('last_message_at')],
                pagination: PaginationParams(
                  limit: 20,
                ),
                channelWidget: ChannelPage(
                   keyChannels: _keyChannels,
                ),
              ),
            ),
          );
        }
      
                    
                }
                
 class ChannelPage extends StatelessWidget {
   final keyChannels;

  const ChannelPage({Key key, this.keyChannels}) : super(key: key);
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: ChannelHeader(),
       body: Column(
         children: [
           Expanded(child: MessageListView(

          
           
           )),
           MessageInput()
         ],
       ),
     );
   }
 }