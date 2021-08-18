import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:zippo_ventas/src/pages/carrito_page.dart';
import 'package:zippo_ventas/src/pages/chat_page.dart';
import 'package:zippo_ventas/src/pages/checkout_page.dart';
import 'package:zippo_ventas/src/pages/detalle_pedido.dart';
import 'package:zippo_ventas/src/pages/friends_chat.dart';
import 'package:zippo_ventas/src/pages/home_chat.dart';
import 'package:zippo_ventas/src/pages/home_page.dart';
import 'package:zippo_ventas/src/pages/login_page.dart';
import 'package:zippo_ventas/src/pages/pedidos_page.dart';
import 'package:zippo_ventas/src/pages/product_detail_page.dart';
import 'package:zippo_ventas/src/pages/productos_pages.dart';
import 'package:zippo_ventas/src/pages/profile_pages.dart';
import 'package:zippo_ventas/src/pages/select_catalogo.dart';
import 'package:zippo_ventas/src/share_prefs/preferencias_usuario.dart';
import 'package:zippo_ventas/src/utils/data_utils.dart';



void main()async{

  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferenciasUsuario();
  
  await prefs.initPrefs();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 
  final _prefs = new PreferenciasUsuario();
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
   
   void initState() { 
    super.initState();
   
  }

  @override
  Widget build(BuildContext context){
    
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
        title: 'Zippo-Ronson',
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        initialRoute:'login',
        routes: {
      'login': (context) => LoginPage(),
      'select': (context) => SelectCatalogo(),
      'home': (context) => HomePage(),
      'productos': (context) => ProductosPage(),
      'productodetalle': (context) => ProductDetail(),
      'carrito': (context) => CarritoPage(),
      'checkout': (context) => CheckOutPage(),
      'profile': (context) => ProfilePage(),
      'pedidos': (context) => PedidosPage(),
      'detallopedido': (context) => DetallePedidoPage(), 
      'chat': (context) => FriendsChat(),
      //'loadingchat': (context) => HomeChat(),
      
    },
    theme: ThemeData.light(),
      );
  }
}

 