import 'package:flutter/material.dart';
import 'package:zippo_ventas/src/fonts/coco_line_icons_icons.dart';
import 'package:zippo_ventas/src/widgets/bottomBarMenu.dart';
import 'package:zippo_ventas/src/widgets/builAppBar.dart';
   
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    appBar: buildAppBar(context),
    bottomNavigationBar: BottonBarMenu(selected: 3),
     
    body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
           return <Widget>[
                SliverAppBar(
                  expandedHeight: 250,
                  backgroundColor: Colors.white,
                  elevation: 0,
                  flexibleSpace: FlexibleSpaceBar(
                    stretchModes: [
                      StretchMode.zoomBackground,
                      StretchMode.blurBackground,
                      StretchMode.fadeTitle
                    ],
                    collapseMode: CollapseMode.pin,
                    background: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                         child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30,left: 20),
                                      child: Text(
                                        'Perfíl',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xff292525),
                                          fontSize: 40,
                                          fontFamily: 'MetaPro',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              height: 82,
                                              width: 82,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffF5F9FA),
                                                  shape: BoxShape.circle,
                                              boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                color: Colors.grey[400],
                                                blurRadius: 10.0,
                                                spreadRadius: 0,
                                                offset: Offset(0, 0))
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage('assets/profilefoto.png'),
                                              fit: BoxFit.cover
                                            )
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text: 'Osmany ',
                                            style: TextStyle(
                                                      color: Color(0xff292525),
                                                      fontSize: 35,
                                                      fontFamily: 'MetaPro',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1,
                                                    ),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Cruz', style: 
                                                TextStyle(
                                                    color: Color(0xff292525),
                                                    fontSize: 35,
                                                    fontFamily: 'MetaPro',
                                                    fontWeight: FontWeight.w300,
                                                    height: 1,
                                                  ),

                                              ),
                                               
                                            ],
                                          ),
                                        ),
                                        Text(
                                        'osmanycruzgarcia@gmai.com',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xff292525),
                                            fontSize: 16,
                                            fontFamily: 'MetaPro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                        '+56 9 4027 2730',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xff292525),
                                            fontSize: 16,
                                            fontFamily: 'HelveticaNeue',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                    ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                      ),
                    ),
                  ),
                ),
 
                SliverAppBar(
                    floating: false,
                    pinned: true,
                    expandedHeight: 80,
                    backgroundColor: Colors.white,
                    elevation: 0,
                    leading: Container(),
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                                        child:Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                               height: 50,
                                               width: 70,
                                              child: Center(
                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 10,),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children: [
                                                      Icon(CocoLineIcons.shopping_cart_1,color: Color(0xff363853),),
                                                      Text(
                                                        'Pedidos',
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                            color: Color(0xff363853),
                                                            fontSize: 10,
                                                            fontFamily: 'HelveticaNeue',
                                                            fontWeight: FontWeight.w400,
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: (){
                                                Navigator.pushNamed(context, 'chat');
                                              },
                                              child: Container(
                                                 height: 50,
                                                 width: 70,
                                                child: Center(
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 10,),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                      children: [
                                                        Icon(CocoLineIcons.message___3,color: Color(0xff363853),),
                                                        Text(
                                                          'Mensajes',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                              color: Color(0xff363853),
                                                              fontSize: 10,
                                                              fontFamily: 'HelveticaNeue',
                                                              fontWeight: FontWeight.w400,
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                               height: 50,
                                               width: 70,
                                              child: Center(
                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 10,),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children: [
                                                      Icon(CocoLineIcons.heart,color: Color(0xff363853),),
                                                      Text(
                                                        'Favoritos',
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                            color: Color(0xff363853),
                                                            fontSize: 10,
                                                            fontFamily: 'HelveticaNeue',
                                                            fontWeight: FontWeight.w400,
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                    ),
                       
                    ),
                     
                )
           ];
      }, body: ListView(
          children: [
             //AlertaItem(),
             ItemFuncion(
               icon: Icon(CocoLineIcons.location,color: Colors.white,size: 26,),
               titulo: 'Direcciones',
               descripcion: 'Configurar tus direcciones',
             ),
            ItemFuncion(
               icon: Icon(Icons.notifications,color: Colors.white,size: 26,),
               titulo: 'Notificaciones',
               descripcion: 'Configurar tus notificaciones',
             ),
             ItemFuncion(
               icon: Icon(Icons.settings,color: Colors.white,size: 26,),
               titulo: 'Configuraciones',
               descripcion: 'Configurar tus preferencias',
             ),
              GestureDetector(
               onTap: (){
                 
               },
               child: ItemFuncion(
                 icon: Icon(Icons.logout,color: Colors.white,size: 26,),
                 titulo: 'Logout',
                 descripcion: 'Salir de tu cuenta',
               ),
             ),
             
    
      ],)
      ),
      );
  }
 
  
}

class AlertaItem extends StatelessWidget {
  const AlertaItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                 child: Container(
                   height: 100,
                   decoration: BoxDecoration(
                     color: Colors.redAccent,
                     borderRadius: BorderRadius.circular(10),
                     border: Border.all(
                       color: Color(0xFFEDEDED)
                     ),
                     boxShadow: <BoxShadow>[
                     BoxShadow(
                         color: Colors.grey[350],
                         blurRadius: 10.0,
                         offset: Offset(0, 0))
                     ],
                     gradient: LinearGradient(
                       colors: <Color>[
                         Colors.white,
                         Color(0xFFEDEDED),
                       ],
                     ),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         width: 10,
                         decoration: BoxDecoration(
                           color: Color(0xffCB612A),
                           borderRadius:BorderRadius.horizontal(
                             left: Radius.circular(10)
                           )
                         ),
                       ),
                       Icon(Icons.info_rounded,size: 35,color: Color(0xffF1664E),),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text(
                             'Repetir ultimo pedido',
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               color: Color(0xffA7A7A7),
                               fontSize: 14,
                               fontFamily: 'MetaPro',
                               fontWeight: FontWeight.w400,
                             ),
                           ),
                           Text(
                             'Su ultimo pedido se realizó el\n25 febrero\ndecea repetir su ultimo pedido',
                             textAlign: TextAlign.start,
                             style: TextStyle(
                               color: Color(0xffA7A7A7),
                               fontSize: 12,
                               fontFamily: 'MetaPro',
                               fontWeight: FontWeight.w400,
                             ),
                           ),
                         ],
                       ),
                       Padding(
                         padding: const EdgeInsets.only(right: 5,top: 5,bottom: 5),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           crossAxisAlignment: CrossAxisAlignment.end,
                           children: [
                             Icon(Icons.close,size: 16,color: Color(0xffF1664E),),
                             Container(
                               height: 30,
                               width: 65,
                               decoration: BoxDecoration(
                                  color: Color(0xffF1664E),
                                  borderRadius: BorderRadius.circular(10)
                               ),
                               child: Center(
                                 child: Text(
                                         'Repetir',
                                         style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 12,
                                           fontFamily: 'MetaPro',
                                           fontWeight: FontWeight.w400,
                                         ),
                                       ),
                               ),
                              
                             )
                           ],
                         ),
                       )
                     ],
                   ),
                 ),
               );
  }
}


class ItemFuncion extends StatelessWidget {
  final Icon icon;
  final String titulo;
  final String descripcion;
  
  const ItemFuncion({
    Key key, this.icon, this.titulo, this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10,top: 10),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 112,
          width: MediaQuery.of(context).size.width-60,
          child: Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey[350],
                      blurRadius: 10.0,
                      offset: Offset(0, 0))
                ], 
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.redAccent,
                  ),
                  child: icon,
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded,size: 18,color: Color(0xffBCBCBC),),
                title: Text(
                        '$titulo',
                          style: TextStyle(
                            color: Color(0xff292525),
                            fontSize: 22,
                            fontFamily: 'MetaPro',
                            fontWeight: FontWeight.w500,
                          ),
                      ),
                subtitle: Text(
                        '$descripcion',
                          style: TextStyle(
                            color: Color(0xff9F9F9F),
                            fontSize: 20,
                            fontFamily: 'MetaPro',
                            fontWeight: FontWeight.w300,
                          ),
                      ),
              ),
            )
          ),
        )
    );
  }
}
