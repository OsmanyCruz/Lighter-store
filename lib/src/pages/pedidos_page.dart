import 'package:flutter/material.dart';
import 'package:zippo_ventas/src/fonts/coco_line_icons_icons.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:zippo_ventas/src/pages/detalle_pedido.dart';
import 'package:zippo_ventas/src/widgets/bottomBarMenu.dart';
import 'package:zippo_ventas/src/widgets/builAppBar.dart';
import 'dart:math';


class PedidosPage extends StatefulWidget {
  @override
  _PedidosPageState createState() => _PedidosPageState();
}

class _PedidosPageState extends State<PedidosPage> {
  DateRangePickerController controllerSatePicker;
  @override
  void initState() { 
    super.initState();
     //controllerSatePicker.selectedDates.add(DateTime.parse("2021-03-17 20:18:04Z")); 
     
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      bottomNavigationBar: BottonBarMenu(selected: 2,),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
               return <Widget>[
                    SliverAppBar(
                      leading: Container(),
                      expandedHeight: MediaQuery.of(context).size.height*0.50,
                      backgroundColor: Colors.white,
                      elevation: 0,
                      flexibleSpace: FlexibleSpaceBar(
                        stretchModes: [
                          StretchMode.zoomBackground,
                          StretchMode.blurBackground,
                          StretchMode.fadeTitle
                        ],
                        collapseMode: CollapseMode.parallax,
                        background: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pedidos',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff292525),
                                      fontSize: 40,
                                      fontFamily: 'MetaPro',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
                              child: Container(
                                  padding: EdgeInsets.only(right: 20,left: 20,top: 10),
                                  decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(20),
                                                boxShadow: <BoxShadow>[
                                                    BoxShadow(
                                                        color: Colors.grey[350],
                                                        blurRadius: 6.0,
                                                        offset: Offset(0, 0))
                                                  ], 
                                              ),
                                child: Center(
                                  child: SfDateRangePicker(
                                      controller: controllerSatePicker,
                                      rangeSelectionColor: Color(0xffF8ABA6),
                                      startRangeSelectionColor: Color(0xffEC5F63),
                                      endRangeSelectionColor: Color(0xffEC5F63),
                                      selectionMode: DateRangePickerSelectionMode.range,
                                      onSelectionChanged: (value){
                                      },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ),
                    ),
               ];
          }, body:Container(
                     
                      child: ListView(
                                  children: [
                                    buildItemFuncion(),
                                    buildItemFuncion(),
                                    buildItemFuncion(),
                                    buildItemFuncion(),
                                    buildItemFuncion(),
                                    buildItemFuncion(),
                                    buildItemFuncion(),
                                    buildItemFuncion(),
                                    buildItemFuncion(),
                                    buildItemFuncion(),
                                    buildItemFuncion(),
                                    buildItemFuncion(),
                                    buildItemFuncion(),
                                    

                                    
                                    
                                ],
                              ),
          )
      ),
    );
  }

  ItemFuncion buildItemFuncion() {

    int min = 1; //min and max values act as your 6 digit range
    int max = 6;
    var rng = new Random();
    final index = (min + rng.nextInt(max - min));

    switch (index) {
      case 1:
        return ItemFuncion(
              color1: Color(0xff7C72FC),
              color2: Color(0xffD6C9FF),
            );
        break;
      case 2:
        return ItemFuncion(
              color1: Color(0xffFF8B9F),
              color2: Color(0xffFFBBC6),
            );
        break;
      case 3:
        return ItemFuncion(
              color1: Color(0xffFF474D),
              color2: Color(0xffFF7D81),
            );
        break;
      case 4:
        return ItemFuncion(
              color1: Color(0xff6FB96F),
              color2: Color(0xffB3E2B3),
            );
        break;
      case 5:
        return ItemFuncion(
              color1: Color(0xffF3B659),
              color2: Color(0xffFFD99E),
            );
        break;
      case 6:
        return ItemFuncion(
              color1: Color(0xffF39DF6),
              color2: Color(0xffEFCDF1),
            );
        break;
      default:return ItemFuncion(
              color1: Color(0xff7C72FC),
              color2: Color(0xff7C72FC),
            );
    }
   
  }
}


class ItemFuncion extends StatelessWidget {
  final Color color1;
  final Color color2;
   
  
  const ItemFuncion({
    Key key, this.color1, this.color2,
  });

  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: const EdgeInsets.only(right: 20,left: 20,top: 15),
      child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetallePedidoPage(mainColor: color1)
                      ),
                  );
                  
                },
              child: Container(
            height: 80,
            width: MediaQuery.of(context).size.width-60,
            decoration: BoxDecoration(
                color: color2,
                borderRadius: BorderRadius.circular(15),
                boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey[350],
                        blurRadius: 6.0,
                        offset: Offset(0, 0))
                  ], 
              ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                  Expanded(
                                    child: Container(
                      width: 70,
                        decoration: BoxDecoration(
                          color: color1,
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(15)
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '4\nNOV',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'MetaPro',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'aceptado',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'MetaPro',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ),
                  ),

                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pedido #12345',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'HelveticaNeue',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                '10:30 AM',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'HelveticaNeue',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 16,)
                        ],
                      ),
                    )
                  )
                  

                  
  
               ],
             ),
             
          ),
      )
    );
  }

  


}