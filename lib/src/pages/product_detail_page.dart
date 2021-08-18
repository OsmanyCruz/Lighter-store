import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:zippo_ventas/src/fonts/coco_line_icons_icons.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:animate_do/animate_do.dart';
import 'package:share/share.dart';

import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:zippo_ventas/src/widgets/builAppBarReturn.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key key}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {

  bool favorito;
  bool isvisible;
  int cantidad;
  AnimationController _favController;
  AnimationController _cantidadController;

  Future<Null> urlFileShare() async {
  
  if (Platform.isAndroid) {
    var url = 'https://zippo.cl/wp-content/uploads/2020/04/942683-MLC25997437315_092017-F_67bf3221e8114bae8e2e67662d153c9e.jpg';
    var response = await get(url);
    final documentDirectory = (await getExternalStorageDirectory()).path;
    File imgFile = new File('$documentDirectory/zippo.jpg');
    imgFile.writeAsBytesSync(response.bodyBytes);
      Share.shareFiles(['$documentDirectory/zippo.jpg'],
              subject: 'URL File Share',
              text: 'Te recomiendo este encendedor en https://zippo.cl/producto/encendedor-zippo-black-crackle-gold-zippo-logo/');
               
        } else {
          Share.share('Hello, check your share files!',
              subject: 'URL File Share');
        }
         
}

  @override
  void initState() { 
    super.initState();
    favorito=false;
    isvisible = false;
    cantidad= 0;
  }

  void agregar(){
    setState(() {
      cantidad = cantidad+1;
    });
    _cantidadController.repeat();
  }

  void restar(){
    if(cantidad>0){
      setState(() {
        cantidad = cantidad-1;
      });
       _cantidadController.repeat();
    }
  }


  @override
  Widget build(BuildContext context) {
    final fondos = [
          {
          'image': Image.asset('assets/zippoproduct.png',fit: BoxFit.scaleDown,),
          },
          {
          'image': Image.asset('assets/detalle1.jpg',fit: BoxFit.scaleDown,)
          },
          {
          'image': Image.asset('assets/detalle2.jpg',fit: BoxFit.scaleDown,)
          },
          {
          'image': Image.asset('assets/detalle3.jpg',fit: BoxFit.scaleDown,)
          },
          
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBarReturn(context),
      body: SlidingUpPanel(
                backdropEnabled: true,
                backdropColor: Colors.white,
                backdropOpacity: 0.8,
                color: Colors.transparent,
                boxShadow: [],
                onPanelClosed: (){
                  setState(() {
                    isvisible = false;
                  });
                },
                onPanelOpened: (){
                  setState(() {
                    isvisible = true;
                  });
                },
                minHeight: 170,
                maxHeight: MediaQuery.of(context).size.height*0.8,
                panel: Padding(
                 padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5,right: 5,left: 5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                      offset: Offset(0, 0), // changes position of shadow
                                    ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    isvisible?
                                    Icon(Icons.keyboard_arrow_down)
                                    :
                                    Icon(Icons.keyboard_arrow_up)
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 15,
                                          child: Image.asset('assets/fuegologo.png')
                                      ),
                                      SizedBox(width: 10,),
                                      Text(
                                        'Especificaciones',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Color(0xff787575),
                                          fontSize: 16,
                                          fontFamily: 'HelveticaNeue',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical:8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 24,
                                              child: Image.asset('assets/windproof.png')
                                          ),
                                          SizedBox(width: 5,),
                                          Text(
                                            'windproof design',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Color(0xff787575),
                                              fontSize: 16,
                                              fontFamily: 'HelveticaNeue',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 20,
                                              child: Image.asset('assets/zippoclick.png')
                                          ),
                                          SizedBox(width: 5,),
                                          Text(
                                            'zippo "click"',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Color(0xff787575),
                                              fontSize: 16,
                                              fontFamily: 'HelveticaNeue',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 12,
                                              child: Image.asset('assets/madeinusa.png')
                                          ),
                                          SizedBox(width: 5,),
                                          Text(
                                            'echo en USA',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Color(0xff787575),
                                              fontSize: 16,
                                              fontFamily: 'HelveticaNeue',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    height: 150,
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xffF5F9FA),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius: 5,
                                              offset: Offset(0, 0), // changes position of shadow
                                            ),
                                        ],
                                      ),
                                      child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  IconButton(icon: Icon(Icons.remove,color: Color(0xff818080),size: 18,), onPressed: (){
                                                          restar();
                                                      }),
                                                      
                                                    ElasticIn(
                                                      manualTrigger: true,
                                                      controller: ( controller ) => _cantidadController = controller,
                                                    child: Text(
                                                          '$cantidad',
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(
                                                            color: Color(0xff818080),
                                                            fontSize: 17,
                                                            fontFamily: 'HelveticaNeue',
                                                            fontWeight: FontWeight.w400,
                                                          ),
                                                        ),
                                                    ),
                                                      
                                                      IconButton(icon: Icon(Icons.add,color: Color(0xff818080),size: 18,), onPressed: (){
                                                          agregar();
                                                      }),
                                                      
                                                ],
                                              ),
                                    ),
                                  ),
                                ),
                                
                                Expanded(
                                  flex:4,
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    child: Container(
                                      height: 150,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF5333F),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 3,
                                                blurRadius: 5,
                                                offset: Offset(0, 0), // changes position of shadow
                                              ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            Text(
                                                'Comprar',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17,
                                                  fontFamily: 'MetaPro',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              SizedBox(width: 10,),
                                              Icon(CocoLineIcons.bag,color: Colors.white,)
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20,right: 5,left: 5,bottom: 20),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                      offset: Offset(0, 0), // changes position of shadow
                                    ),
                              ],
                            ),
                            child: Text(
                              'SKU: ZP1935\nCategoría: Classic\nEtiqueta: papa\nModelo: Chrome Lighter Finishes',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color(0xff818080),
                                fontSize: 20,
                                fontFamily: 'HelveticaNeue',
                                fontWeight: FontWeight.w400,
                                height: 1.3
                              ),
                            ),
                         
                           
                          ),
                        ),
                      ),
                       Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20,right: 5,left: 5,bottom: 20),
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                      offset: Offset(0, 0), // changes position of shadow
                                    ),
                              ],
                            ),
                            child: Text(
                                '• Empacado en caja de regalos\n• Garantía de por vida que asegura que nuestro encendedor ”Funciona o lo arreglamos gratis ™"\n• El encendedor viene sin llenar. Utilice el líquido combustible de encendedor marca Zippo\n• El diseño a prueba de viento trabaja prácticamente en cualquier lugar, aun en condiciones muy ventosas.\n• Para obtener un rendimiento óptimo, le recomendamos utilizar piedras y mechas marca Zippo',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Color(0xff818080),
                                  fontSize: 20,
                                  fontFamily: 'HelveticaNeue',
                                  fontWeight: FontWeight.w400,
                                  height: 1.3
                                ),
                              ),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
                body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, top: 20,bottom: 150),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: 120,
              child: RotatedBox(
                quarterTurns: 3,
                child: Container(
                          width: MediaQuery.of(context).size.height*0.38,
                          child: Opacity(
                                    opacity: 0.04,
                                    child: Image.asset('assets/logogrande.png')
                                )
                        )
              ),
            ),
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                                'Black Crackle \nGold Zippo Logo',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Color(0xff292525),
                                  fontSize: 35,
                                  fontFamily: 'MetaPro',
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                        ],
                      ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                             child: Swiper(
                                itemBuilder: (BuildContext context,int index){
                                  final fondo = fondos[index];
                                  return  Container(
                                    padding: EdgeInsets.all(10),
                                    child: fondo['image']
                                  );
                                },
                                itemCount: fondos.length,
                                pagination: new SwiperPagination(
                                  builder: new DotSwiperPaginationBuilder(
                                      color: Color(0xffC2C2C2),
                                      activeColor: Color(0xffEE2E22)),
                                ),
                                control: new SwiperControl(
                                   size: 15,
                                   color: Color(0xff29292B)
                                ),
                              ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 60),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  'Favorito',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: favorito?Color(0xffF5333F):Color(0xff787575),
                                                    fontSize: 12,
                                                    fontFamily: 'MetaPro',
                                                    fontWeight: FontWeight.w700,
                                                    height: 1
                                                  ),
                                                ),
                                                 
                                                favorito?
                                                ElasticIn(
                                                  manualTrigger: true,
                                                   controller: ( controller ) => _favController = controller,
                                                   child: IconButton(icon: Icon(Icons.favorite,color:Color(0xffF5333F),), onPressed: (){
                                                               if(favorito){
                                                                    setState(() {
                                                                      favorito = false;
                                                                      _favController.repeat();
                                                                    });
                                                                  }else{
                                                                    setState(() {
                                                                      favorito =true;
                                                                      _favController.repeat();
                                                                    });
                                                                  }
                                                          }),
                                                  )
                                                :ElasticIn(
                                                  manualTrigger: true, 
                                                  controller: ( controller ) => _favController = controller,
                                                child: IconButton(icon: Icon(Icons.favorite_border,color:Color(0xff787575),), onPressed: (){
                                                               if(favorito){
                                                                    setState(() {
                                                                      favorito = false;
                                                                      _favController.repeat();
                                                                    });
                                                                  }else{
                                                                    setState(() {
                                                                      favorito =true;
                                                                      _favController.repeat();
                                                                    });
                                                                  }
                                                          }),
                                                
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20,),
                                            IconButton(icon: Icon(Icons.share,color:Color(0xff787575),), onPressed: ()async{
                                              await urlFileShare();
                                            }),
                                            
                                            SizedBox(height: 20,),
                                            IconButton(icon: Icon(CocoLineIcons.send,color:Color(0xff787575),), onPressed: (){
                                               
                                            }),
                                          ],
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 20),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                  RichText(
                                                  text: TextSpan(
                                                    text: '\$ ',
                                                    style: TextStyle(
                                                                    color: Color(0xffBBBBBB),
                                                                    fontSize: 8,
                                                                    fontFamily: 'HelveticaNeue',
                                                                    fontWeight: FontWeight.w700,
                                                                    height: 1,
                                                                    decoration: TextDecoration.lineThrough,

                                                                  ),
                                                    children: <TextSpan>[
                                                      TextSpan(text: '60. ', style: 
                                                                TextStyle(
                                                                    color: Color(0xffBBBBBB),
                                                                    fontSize: 20,
                                                                    fontFamily: 'HelveticaNeue',
                                                                    fontWeight: FontWeight.w700,
                                                                    height: 1,
                                                                    decoration: TextDecoration.lineThrough,
                                                                    
                                                                  ),

                                                      ),
                                                      TextSpan(text: ' 990', style: 
                                                                TextStyle(
                                                                    color: Color(0xffBBBBBB),
                                                                    fontSize: 12,
                                                                    fontFamily: 'HelveticaNeue',
                                                                    fontWeight: FontWeight.w300,
                                                                    height: 1,
                                                                    decoration: TextDecoration.lineThrough,
                                                                  ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              RichText(
                                                  text: TextSpan(
                                                    text: '\$ ',
                                                    style: TextStyle(
                                                                    color: Color(0xff707070),
                                                                    fontSize: 12,
                                                                    fontFamily: 'HelveticaNeue',
                                                                    fontWeight: FontWeight.w700,
                                                                    height: 1,
                                                                    decorationStyle: TextDecorationStyle.wavy
                                                                  ),
                                                    children: <TextSpan>[
                                                      TextSpan(text: '55. ', style: 
                                                                TextStyle(
                                                                    color: Color(0xff707070),
                                                                    fontSize: 24,
                                                                    fontFamily: 'HelveticaNeue',
                                                                    fontWeight: FontWeight.w700,
                                                                    height: 1
                                                                  ),
                                                      ),
                                                      TextSpan(text: '990', style: 
                                                                TextStyle(
                                                                    color: Color(0xff707070),
                                                                    fontSize: 16,
                                                                    fontFamily: 'HelveticaNeue',
                                                                    fontWeight: FontWeight.w300,
                                                                    height: 1
                                                                  ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    
                  ),
                ),
              ],
            )
          ],
        ),
      ),
              ),
    );
  }

  
}