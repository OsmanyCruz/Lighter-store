import 'package:flutter/material.dart';
import 'package:zippo_ventas/src/fonts/coco_line_icons_icons.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:zippo_ventas/src/widgets/bottomBarMenu.dart';
import 'package:zippo_ventas/src/widgets/builAppBar.dart';
   
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      bottomNavigationBar: BottonBarMenu(selected: 0),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
             return <Widget>[
                  SliverAppBar(
                    expandedHeight: 200,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Container(
                          
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 20),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(top: 40),
                                 child: Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Hola,',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xff292525),
                                              fontSize: 35,
                                              fontFamily: 'MetaPro',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            'Osmany Cruz',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xff292525),
                                              fontSize: 35,
                                              fontFamily: 'MetaPro',
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: (){
                                          
                                        },
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                  color: Colors.grey[350],
                                                  blurRadius: 6.0,
                                                  offset: Offset(0, 0))
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage('assets/profilefoto.png'),
                                              fit: BoxFit.cover
                                            )
                                          ),
                                          
                                        ),
                                      )
                                    ],
                                 ),
                               ),

                                
                               Container(
                                 height: 50,
                                 width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                     color: Color(0xffF5F9FA),
                                     borderRadius: BorderRadius.circular(10),
                                     border: Border.all(
                                       color: Colors.grey[300],
                                       width: 1
                                     ),
                              boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.grey[400],
                                      blurRadius: 10.0,
                                      spreadRadius: 0,
                                      offset: Offset(0, 0))
                                ],
                            ),

                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15,right: 20),
                                  child: Icon(CocoLineIcons.search,color: Color(0xffA7A7A7),size: 20,),
                                ),
                                Text(
                                'Buscar...',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffA7A7A7),
                                  fontSize: 18,
                                  fontFamily: 'MetaPro',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              ],
                            ),

                               ),
                                

                             ],
                           ),
                         ),
                      ),
                    ),

                  )
             ];
        }, body: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: ListView(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 20),
                          child: Text(
                            'PROMOCIONES',
                            style: TextStyle(
                              color: Color(0xff404040),
                              fontSize: 18,
                              fontFamily: 'MetaPro',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 20,bottom: 5),
                          child: Container(
                            height: 120,
                            child: Swiper(
                                  itemBuilder: (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          image: DecorationImage(
                                            image: AssetImage('assets/Promo$index.png'),
                                            fit: BoxFit.fill
                                           ),
                                           boxShadow: <BoxShadow>[
                                  BoxShadow(
                                        color: Colors.grey,
                                        //spreadRadius: 3,
                                        blurRadius: 6, 
                                        offset: Offset(0, 0))
                                ],
                                        ),
                                         
                                      ),
                                    );
                                  },
                                  itemCount: 3,
                                  itemWidth: 300.0,
                                  layout: SwiperLayout.STACK,
                                ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'CATEGORIAS',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff404040),
                                  fontSize: 18,
                                  fontFamily: 'MetaPro',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'TODOS',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xffB5B5B5),
                                      fontSize: 14,
                                      fontFamily: 'MetaPro',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),

                                    Icon(Icons.arrow_forward_ios_rounded,size: 15,color: Color(0xffB5B5B5),)

                                ],
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 20,bottom: 5),
                          child: Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                CategoryItem(
                                  imagen: 'assets/Gentlemans.png',
                                  cantidad: '07',
                                  titulo: 'Gentlemans',
                                ),
                                CategoryItem(
                                  imagen: 'assets/Geometry.png',
                                  cantidad: '17',
                                  titulo: 'Geometry',
                                ),
                                CategoryItem(
                                  imagen: 'assets/Logo.png',
                                  cantidad: '20',
                                  titulo: 'Logo',
                                ),
                                CategoryItem(
                                  imagen: 'assets/Classic.png',
                                  cantidad: '13',
                                  titulo: 'Classic',
                                ),
  
                              ],
                            ),
                          ),
                        ),

                        Padding(
                           padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'BEST SELLER',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff404040),
                                  fontSize: 18,
                                  fontFamily: 'MetaPro',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'TODOS',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xffB5B5B5),
                                      fontSize: 14,
                                      fontFamily: 'MetaPro',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),

                                    Icon(Icons.arrow_forward_ios_rounded,size: 15,color: Color(0xffB5B5B5),)

                                ],
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: 220,
                            width: MediaQuery.of(context).size.width,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                BestSellerItem(
                                  nombre: 'Black Crackle\nGold Zippo Logo',
                                  precio: '55',
                                  decimal: '990',
                                  imagen: 'assets/producto6.jpg',
                                ),
                                BestSellerItem(
                                  nombre: 'Black Crackle\nGold Zippo Logo',
                                  precio: '55',
                                  decimal: '990',
                                  imagen: 'assets/producto2.jpg',
                                ),
                                BestSellerItem(
                                  nombre: 'Black Crackle\nGold Zippo Logo',
                                  precio: '55',
                                  decimal: '990',
                                  imagen: 'assets/producto3.jpg',
                                ),
                                BestSellerItem(
                                  nombre: 'Black Crackle\nGold Zippo Logo',
                                  precio: '55',
                                  decimal: '990',
                                  imagen: 'assets/producto4.jpg',
                                ),
                                BestSellerItem(
                                  nombre: 'Black Crackle\nGold Zippo Logo',
                                  precio: '55',
                                  decimal: '990',
                                  imagen: 'assets/producto7.jpg',
                                ),

                                BestSellerItem(
                                  nombre: 'Black Crackle\nGold Zippo Logo',
                                  precio: '55',
                                  decimal: '990',
                                  imagen: 'assets/producto5.jpg',
                                ),
                                BestSellerItem(
                                  nombre: 'Black Crackle\nGold Zippo Logo',
                                  precio: '55',
                                  decimal: '990',
                                  imagen: 'assets/producto10.jpg',
                                ),
                                BestSellerItem(
                                  nombre: 'Black Crackle\nGold Zippo Logo',
                                  precio: '55',
                                  decimal: '990',
                                  imagen: 'assets/producto9.png',
                                ),
                                 
  
                              ],
                            ),
                          ),
                        )

                      ],
                    ),
        ),
    ),
  );
  
}

  
  
}



 
 
class BestSellerItem extends StatelessWidget {
final String nombre;
final String precio;
final String decimal;
final String imagen;


  const BestSellerItem({this.nombre, this.precio, this.imagen, this.decimal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5,left: 5),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, 'productodetalle');
        },
              child: Stack(
          //fit: StackFit.passthrough,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                width: 130,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 8,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                ),
                child:Transform.translate(
                        offset: Offset(-40,0),
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Container(
                                    padding: EdgeInsets.all(15),
                                    child: Opacity(
                                              opacity: 0.05,
                                              child: Image.asset('assets/logo-zippo-negro.png')
                                          )
                                  )
                  ),
                ),
              ),
            ),

            Container(
                width: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
              ),
              child: Transform.translate(
                    offset: const Offset(15, 0.0),
                    child: Container(
                            height: 130,
                              child: Image.asset(imagen)
                          ),
                  ),
            ),

          Positioned(
            bottom: 22,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                   nombre,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xff707070),
                      fontSize: 14,
                      fontFamily: 'MetaPro',
                      fontWeight: FontWeight.w400,
                      height: 1
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
  text: TextSpan(
    text: '\$ ',
    style: TextStyle(
                      color: Color(0xff707070),
                      fontSize: 8,
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.w700,
                      height: 1,
                      decorationStyle: TextDecorationStyle.wavy
                    ),
    children: <TextSpan>[
        TextSpan(text: '$precio. ', style: 
                  TextStyle(
                      color: Color(0xff707070),
                      fontSize: 20,
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.w700,
                      height: 1
                    ),
        ),
        TextSpan(text: decimal, style: 
                  TextStyle(
                      color: Color(0xff707070),
                      fontSize: 12,
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.w300,
                      height: 1
                    ),
        ),
    ],
  ),
),
                       
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Icon(CocoLineIcons.add,color: Color(0xffF5333F),size: 25,)
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String imagen;
  final String cantidad;
  final String titulo;
  
  const CategoryItem({
    Key key, this.imagen, this.cantidad, this.titulo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5,left: 15,top: 5,bottom: 5),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, 'productos');
        },
              child: Container(
          padding: EdgeInsets.only(top: 25,left: 8,right: 8,),
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(imagen),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.grey[900], BlendMode.softLight)
            ),
            boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey[350],
                    blurRadius: 10.0,
                    offset: Offset(0, 0))
              ], 
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text(
                  cantidad,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  titulo,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w300,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}