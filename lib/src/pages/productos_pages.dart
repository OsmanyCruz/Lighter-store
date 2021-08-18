import 'package:flutter/material.dart';
import 'package:zippo_ventas/src/fonts/coco_line_icons_icons.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:animate_do/animate_do.dart';
import 'package:zippo_ventas/src/widgets/builAppBar.dart';  
import 'package:zippo_ventas/src/widgets/bottomBarMenu.dart';
   
class ProductosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      initialIndex: 0,
        child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        bottomNavigationBar: BottonBarMenu(selected: 1),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
               return <Widget>[
                    SliverAppBar(
                      
                      expandedHeight: 220,
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
                             child: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 10),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(top: 30),
                                     child: Row(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Explora el mundo',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xff292525),
                                                  fontSize: 35,
                                                  fontFamily: 'MetaPro',
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                              Text(
                                                'zippo',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xff292525),
                                                  fontSize: 35,
                                                  fontFamily: 'MetaPro',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                     ),
                                   ),
 
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                         height: 50,
                                         width: MediaQuery.of(context).size.width-80,
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
                                Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Color(0xffF5333F),
                                          borderRadius: BorderRadius.circular(10),
                                          boxShadow: <BoxShadow>[
                                          BoxShadow(
                                            color: Colors.grey[400],
                                            blurRadius: 10.0,
                                            spreadRadius: 0,
                                            offset: Offset(0, 0))
                                        ],
                                      ),
                                      child: Icon(CocoLineIcons.setting___2,color: Colors.white,size: 20,),
                                    )
                                    ],
                                  ),
                                 ],
                               ),
                             ),
                          ),
                        ),
                      ),
                    ),
 
                    SliverAppBar(
                        floating: true,
                        pinned: true,
                        expandedHeight: 70,
                        backgroundColor: Colors.white,
                        elevation: 0,
                        leading: Container(),
                        flexibleSpace: FlexibleSpaceBar(
                          background: Padding(
                            padding: const EdgeInsets.only(bottom: 40),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                                            child:Row(
                                              children: [
                                                Container(
                                                   height: 25,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius: BorderRadius.circular(8)
                                                  ),
                                                  child: Center(
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 10,),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'precio descendente',
                                                              textAlign: TextAlign.left,
                                                              style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 12,
                                                                fontFamily: 'MetaPro',
                                                                fontWeight: FontWeight.w500,
                                                                height: 1
                                                              ),
                                                            ),
                                                            Icon(Icons.close,color: Colors.white,size: 14,)
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                        ),
                          ),
                        ),
                        bottom: TabBar(
                                isScrollable: true,
                                indicatorWeight: 3.0,
                                indicatorSize: TabBarIndicatorSize.label,
                                indicatorPadding: EdgeInsets.only(right: 8,left: 8,bottom: 5),
                                indicatorColor: Color(0xffF5333F),
                                labelColor: Color(0xffF5333F),
                                unselectedLabelColor: Colors.black,
                                labelStyle: TextStyle(fontSize: 18,fontFamily: 'MetaPro',fontWeight: FontWeight.w400),
                                labelPadding: EdgeInsets.only(right: 10,left: 10),
                                  tabs: <Widget>[
                                    Tab(
                                      text: 'Todos',
                                    ),
                                    Tab(
                                      text: 'Gentlemans',
                                    ),
                                    Tab(
                                      text: 'Geometry',
                                    ),
                                    Tab(
                                      text: 'Logo',
                                    ),
                                    Tab(
                                      text: 'Classic',
                                    ),
                                    Tab(
                                      text: 'Gammers',
                                    ),
                                    Tab(
                                      text: 'Slim',
                                    ),
                                  ]
                                ),
                    )
               ];
          }, body: TabBarView(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 10,left: 10,top: 20),
                  child: StaggeredGridView.countBuilder(
                            crossAxisCount: 4,
                            itemCount: 20,
                            itemBuilder: (BuildContext context, int index) {
                              if(index==0){
                                return ZoomIn(
                                    child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Todos',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xff292525),
                                              fontSize: 25,
                                              fontFamily: 'MetaPro',
                                              fontWeight: FontWeight.w500,
                                              height: 1
                                            ),
                                          ),
                                          Text(
                                          '(200)',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xffF5333F),
                                              fontSize: 25,
                                              fontFamily: 'HelveticaNeue',
                                              fontWeight: FontWeight.w300,
                                              height: 1
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                );
                              }
                              return  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: listItem(index)
                              );
                            },
                            
                            staggeredTileBuilder: (int index) {
                                if(index==0){
                                  return StaggeredTile.count(2,1);
                                }
                                return new StaggeredTile.count(2,3);
                            },
                            mainAxisSpacing: 10.0,
                            crossAxisSpacing: 10.0,
                          )
                ),


                Container(
                  padding: EdgeInsets.only(right: 10,left: 10,top: 20),
                  child: StaggeredGridView.countBuilder(
                            crossAxisCount: 4,
                            itemCount: 20,
                            itemBuilder: (BuildContext context, int index) {
                              if(index==0){
                                return ZoomIn(
                                                                  child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Gentlemans',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xff292525),
                                              fontSize: 25,
                                              fontFamily: 'MetaPro',
                                              fontWeight: FontWeight.w500,
                                              height: 1
                                            ),
                                          ),
                                          Text(
                                          '(23)',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xffF5333F),
                                              fontSize: 25,
                                              fontFamily: 'HelveticaNeue',
                                              fontWeight: FontWeight.w300,
                                              height: 1
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                );
                              }
                              return  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: listItem(index)
                              );
                            },
                            
                            staggeredTileBuilder: (int index) {
                                if(index==0){
                                  return StaggeredTile.count(2,1);
                                }
                                return new StaggeredTile.count(2,3);
                            },
                            mainAxisSpacing: 10.0,
                            crossAxisSpacing: 10.0,
                          )
                ),


                Container(
                  padding: EdgeInsets.only(right: 10,left: 10,top: 20),
                  child: StaggeredGridView.countBuilder(
                            crossAxisCount: 4,
                            itemCount: 20,
                            itemBuilder: (BuildContext context, int index) {
                              if(index==0){
                                return ZoomIn(
                                                                  child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Geometry',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xff292525),
                                              fontSize: 25,
                                              fontFamily: 'MetaPro',
                                              fontWeight: FontWeight.w500,
                                              height: 1
                                            ),
                                          ),
                                          Text(
                                          '(35)',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xffF5333F),
                                              fontSize: 25,
                                              fontFamily: 'HelveticaNeue',
                                              fontWeight: FontWeight.w300,
                                              height: 1
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                );
                              }
                              return  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: listItem(index)
                              );
                            },
                            
                            staggeredTileBuilder: (int index) {
                                if(index==0){
                                  return StaggeredTile.count(2,1);
                                }
                                return new StaggeredTile.count(2,3);
                            },
                            mainAxisSpacing: 10.0,
                            crossAxisSpacing: 10.0,
                          )
                ),


                Container(
                  padding: EdgeInsets.only(right: 10,left: 10,top: 20),
                  child: StaggeredGridView.countBuilder(
                            crossAxisCount: 4,
                            itemCount: 20,
                            itemBuilder: (BuildContext context, int index) {
                              if(index==0){
                                return ZoomIn(
                                                                  child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Logo',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xff292525),
                                              fontSize: 25,
                                              fontFamily: 'MetaPro',
                                              fontWeight: FontWeight.w500,
                                              height: 1
                                            ),
                                          ),
                                          Text(
                                          '(87)',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xffF5333F),
                                              fontSize: 25,
                                              fontFamily: 'HelveticaNeue',
                                              fontWeight: FontWeight.w300,
                                              height: 1
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                );
                              }
                              return  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: listItem(index)
                              );
                            },
                            
                            staggeredTileBuilder: (int index) {
                                if(index==0){
                                  return StaggeredTile.count(2,1);
                                }
                                return new StaggeredTile.count(2,3);
                            },
                            mainAxisSpacing: 10.0,
                            crossAxisSpacing: 10.0,
                          )
                ),


                Container(
                  padding: EdgeInsets.only(right: 10,left: 10,top: 20),
                  child: StaggeredGridView.countBuilder(
                            crossAxisCount: 4,
                            itemCount: 20,
                            itemBuilder: (BuildContext context, int index) {
                              if(index==0){
                                return ZoomIn(
                                                                  child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Classic',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xff292525),
                                              fontSize: 25,
                                              fontFamily: 'MetaPro',
                                              fontWeight: FontWeight.w500,
                                              height: 1
                                            ),
                                          ),
                                          Text(
                                          '(24)',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xffF5333F),
                                              fontSize: 25,
                                              fontFamily: 'HelveticaNeue',
                                              fontWeight: FontWeight.w300,
                                              height: 1
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                );
                              }
                              return  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: listItem(index)
                              );
                            },
                            
                            staggeredTileBuilder: (int index) {
                                if(index==0){
                                  return StaggeredTile.count(2,1);
                                }
                                return new StaggeredTile.count(2,3);
                            },
                            mainAxisSpacing: 10.0,
                            crossAxisSpacing: 10.0,
                          )
                ),


                Container(
                  padding: EdgeInsets.only(right: 10,left: 10,top: 20),
                  child: StaggeredGridView.countBuilder(
                            crossAxisCount: 4,
                            itemCount: 20,
                            itemBuilder: (BuildContext context, int index) {
                              if(index==0){
                                return ZoomIn(
                                                                  child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Gammers',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xff292525),
                                              fontSize: 25,
                                              fontFamily: 'MetaPro',
                                              fontWeight: FontWeight.w500,
                                              height: 1
                                            ),
                                          ),
                                          Text(
                                          '(31)',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xffF5333F),
                                              fontSize: 25,
                                              fontFamily: 'HelveticaNeue',
                                              fontWeight: FontWeight.w300,
                                              height: 1
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                );
                              }
                              return  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: listItem(index)
                              );
                            },
                            
                            staggeredTileBuilder: (int index) {
                                if(index==0){
                                  return StaggeredTile.count(2,1);
                                }
                                return new StaggeredTile.count(2,3);
                            },
                            mainAxisSpacing: 10.0,
                            crossAxisSpacing: 10.0,
                          )
                ),
 
                Container(
                  padding: EdgeInsets.only(right: 10,left: 10,top: 20),
                  child: StaggeredGridView.countBuilder(
                            crossAxisCount: 4,
                            itemCount: 20,
                            itemBuilder: (BuildContext context, int index) {
                              if(index==0){
                                return ZoomIn(
                                      child: Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Slim',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xff292525),
                                              fontSize: 25,
                                              fontFamily: 'MetaPro',
                                              fontWeight: FontWeight.w500,
                                              height: 1
                                            ),
                                          ),
                                          Text(
                                          '(48)',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xffF5333F),
                                              fontSize: 25,
                                              fontFamily: 'HelveticaNeue',
                                              fontWeight: FontWeight.w300,
                                              height: 1
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                );
                              }
                              return  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: listItem(index)
                              );
                            },
                            
                            staggeredTileBuilder: (int index) {
                                if(index==0){
                                  return StaggeredTile.count(2,1);
                                }
                                return new StaggeredTile.count(2,3);
                            },
                            mainAxisSpacing: 10.0,
                            crossAxisSpacing: 10.0,
                          )
                ),
      ],)
      ),

      ),
    );
  }
}

class ItemListProducto extends StatelessWidget {
  final String nombre;
  final String precio;
  final String decimal;
  final String imagen;
 
  const ItemListProducto({
    Key key, this.nombre, this.precio, this.decimal, this.imagen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, 'productodetalle');
      },
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 8,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
              ),
              child: Stack(
                      //fit: StackFit.passthrough,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            child:Transform.translate(
                                    offset: Offset(0,0),
                                    child: RotatedBox(
                                      quarterTurns: 3,
                                      child: Container(
                                                padding: EdgeInsets.only(left: 40),
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
                          child: Transform.translate(
                                offset: const Offset(45, 10),
                                child: Container(
                                        height: 150,
                                          child: Image.asset(imagen)
                                      ),
                              ),
                        ),

                      Positioned(
                        bottom: 10,
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
                                padding: const EdgeInsets.only(top: 5),
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
                                          TextSpan(text: '$decimal', style: 
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
                                      padding: const EdgeInsets.only(left: 45),
                                      child: Icon(CocoLineIcons.add,color: Color(0xffF5333F),size: 30,)
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

ItemListProducto listItem(index){

  switch (index) {
    case 0:
        return ItemListProducto(
                  nombre: 'Black Crackle\nGold Zippo Logo',
                  precio: '55',
                  decimal: '990',
                  imagen: 'assets/producto6.jpg',
                );
      break;
    case 1:
        return ItemListProducto(
                  nombre: 'Black Crackle\nGold Zippo Logo',
                  precio: '55',
                  decimal: '990',
                  imagen: 'assets/producto2.jpg',
        );
      break;
    case 2:
        return ItemListProducto(
                  nombre: 'Black Crackle\nGold Zippo Logo',
                  precio: '55',
                  decimal: '990',
                  imagen: 'assets/producto3.jpg',
              );
      break;
    case 3:
        return ItemListProducto(
                  nombre: 'Black Crackle\nGold Zippo Logo',
                  precio: '55',
                  decimal: '990',
                  imagen: 'assets/producto4.jpg',
              );
      break;
    case 4:
        return ItemListProducto(
                  nombre: 'Black Crackle\nGold Zippo Logo',
                  precio: '55',
                  decimal: '990',
                  imagen: 'assets/producto7.jpg',
              );
      break;
    case 5:
        return ItemListProducto(
                  nombre: 'Black Crackle\nGold Zippo Logo',
                  precio: '55',
                  decimal: '990',
                  imagen: 'assets/producto5.jpg',
              );
      break;
    case 6:
        return ItemListProducto(
                  nombre: 'Black Crackle\nGold Zippo Logo',
                  precio: '55',
                  decimal: '990',
                  imagen: 'assets/producto10.jpg',
              );
      break;
    case 7:
        return ItemListProducto(
                  nombre: 'Black Crackle\nGold Zippo Logo',
                  precio: '55',
                  decimal: '990',
                  imagen: 'assets/producto9.png',
              );
      break;
    default:
      return ItemListProducto(
                    nombre: 'Black Crackle\nGold Zippo Logo',
                    precio: '55',
                    decimal: '990',
                    imagen: 'assets/producto6.jpg',
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
      padding: const EdgeInsets.only(right: 15,left: 5,top: 5,bottom: 5),
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
    );
  }
}