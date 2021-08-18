import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:zippo_ventas/src/fonts/coco_line_icons_icons.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:zippo_ventas/src/utils/data_utils.dart';
import 'package:zippo_ventas/src/widgets/bottomBarMenu.dart';
import 'package:zippo_ventas/src/widgets/builAppBar.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:slimy_card/slimy_card.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'dart:math';

import 'package:zippo_ventas/src/widgets/builAppBarReturn.dart';

class DetallePedidoPage extends StatefulWidget {
  final Color mainColor;

  const DetallePedidoPage({Key key, this.mainColor}) : super(key: key);
  @override
  _DetallePedidoPageState createState() => _DetallePedidoPageState();
}

class _DetallePedidoPageState extends State<DetallePedidoPage> {
  @override
  void initState() {
    super.initState();
    //controllerSatePicker.selectedDates.add(DateTime.parse("2021-03-17 20:18:04Z"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBarReturn(context),
      bottomNavigationBar: BottonBarMenu(
        selected: 2,
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          _settingModalBottomSheet(context);
        },
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: widget.mainColor),
              image: DecorationImage(
                  image: AssetImage('assets/vendedorfoto.png'))),
        ),
      ),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                leading: Container(),
                expandedHeight: MediaQuery.of(context).size.height * 0.08,
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
                          padding: const EdgeInsets.only(left: 20, top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Pedido #1234',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff292525),
                                  fontSize: 40,
                                  fontFamily: 'HelveticaNeue',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ];
          },
          body: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(top: 20),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 5, top: 5),
                  child: SlimyCard(
                    color: widget.mainColor,
                    width: MediaQuery.of(context).size.width,
                    topCardHeight: 220,
                    bottomCardHeight: 350,
                    topCardWidget: TopIndicatorStatus(),
                    bottomCardWidget: BottomIndicatorStatus(),
                    slimeEnabled: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Productos pedidos',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff292525),
                          fontSize: 25,
                          fontFamily: 'HelveticaNeue',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                ItemCart(),
                ItemCart(),
                ItemCart(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text(
                            'Información de la orden',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'MetaPro',
                                fontSize: 25,
                                fontWeight: FontWeight.w300,
                                color: Colors.black),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total sin descuentos',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'MetaPro',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                            Text(
                              '\$149.970',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontFamily: 'HelveticaNeue',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Descuentos productos',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontFamily: 'MetaPro',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                              Text(
                                '\$149.970',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontFamily: 'HelveticaNeue',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Descuento medio de pago',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontFamily: 'MetaPro',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                              Text(
                                '\$149.970',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontFamily: 'HelveticaNeue',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Descuentos cliente',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontFamily: 'MetaPro',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                              Text(
                                '\$149.970',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontFamily: 'HelveticaNeue',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total a pagar:',
                              style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                            Text(
                              '\$130.473',
                              style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(55)),
                    height: 55.0,
                    onPressed: () {},
                    color: Color(0xffF5333F),
                    child: Text(
                      'repetir compra',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                )
              ],
            ),
          )),
    );
  }
}

class BottomIndicatorStatus extends StatelessWidget {
  const BottomIndicatorStatus({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    CocoLineIcons.thumbs_up,
                    color: Colors.white,
                    size: 16,
                  ),
                  DottedLine(
                    direction: Axis.vertical,
                    lineLength: 30,
                    lineThickness: 1.0,
                    dashLength: 4.0,
                    dashColor: Colors.white,
                    dashRadius: 0.0,
                    dashGapLength: 4.0,
                    dashGapColor: Colors.transparent,
                    dashGapRadius: 0.0,
                  ),
                  Icon(
                    CocoLineIcons.thumbs_up,
                    color: Colors.white,
                    size: 16,
                  ),
                  DottedLine(
                    direction: Axis.vertical,
                    lineLength: 30,
                    lineThickness: 1.0,
                    dashLength: 4.0,
                    dashColor: Colors.white,
                    dashRadius: 0.0,
                    dashGapLength: 4.0,
                    dashGapColor: Colors.transparent,
                    dashGapRadius: 0.0,
                  ),
                  Icon(
                    CocoLineIcons.thumbs_up,
                    color: Colors.white,
                    size: 16,
                  ),
                  DottedLine(
                    direction: Axis.vertical,
                    lineLength: 30,
                    lineThickness: 1.0,
                    dashLength: 4.0,
                    dashColor: Colors.white,
                    dashRadius: 0.0,
                    dashGapLength: 4.0,
                    dashGapColor: Colors.transparent,
                    dashGapRadius: 0.0,
                  ),
                  Icon(
                    CocoLineIcons.hand,
                    color: Colors.white,
                    size: 16,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Orden recibida',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'MetaPro',
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                      Text(
                        '1:10 pm 03 Marzo',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'MetaPro',
                            fontWeight: FontWeight.w300,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Orden en camino',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'MetaPro',
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                      Text(
                        '9:20 pm 20 Diciembre',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'MetaPro',
                            fontWeight: FontWeight.w300,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Compra confirmada',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'MetaPro',
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                      Text(
                        '22:00 pm 20 Diciembre',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'MetaPro',
                            fontWeight: FontWeight.w300,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Entrega',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'MetaPro',
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                      Text(
                        'En 40 minutos',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'MetaPro',
                            fontWeight: FontWeight.w300,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TopIndicatorStatus extends StatelessWidget {
  const TopIndicatorStatus({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Progreso de pedido',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'MetaPro',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    'Compra\nConfirmada',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 33,
                      fontFamily: 'MetaPro',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Explicación del estado\ndel pedido en que consiste\ny que significa',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'MetaPro',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                    flex: 8,
                    child: SfRadialGauge(
                      axes: <RadialAxis>[
                        RadialAxis(
                            minimum: 0,
                            maximum: 100,
                            startAngle: 270,
                            endAngle: 270,
                            showLabels: false,
                            showTicks: false,
                            radiusFactor: 0.8,
                            axisLineStyle: AxisLineStyle(
                                cornerStyle: CornerStyle.bothFlat,
                                color: Colors.white38,
                                thickness: 3),
                            pointers: <GaugePointer>[
                              RangePointer(
                                value: 75,
                                cornerStyle: CornerStyle.bothFlat,
                                width: 3,
                                sizeUnit: GaugeSizeUnit.logicalPixel,
                                color: Colors.white,
                              ),
                            ],
                            annotations: <GaugeAnnotation>[
                              GaugeAnnotation(
                                angle: 90,
                                axisValue: 5,
                                positionFactor: 0.1,
                                widget: Text(
                                  '3',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 45,
                                    fontFamily: 'HelveticaNeue',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              )
                            ])
                      ],
                    )),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      '3/4',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'HelveticaNeue',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemCart extends StatelessWidget {
  const ItemCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, top: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 140,
        width: MediaQuery.of(context).size.width,
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
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(14),
                    child: Image.asset('assets/producto6.jpg'),
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Black Crackle \nGold Zippo Logo',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color(0xff292525),
                            fontSize: 24,
                            fontFamily: 'MetaPro',
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        Column(
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
                                  TextSpan(
                                    text: '60. ',
                                    style: TextStyle(
                                      color: Color(0xffBBBBBB),
                                      fontSize: 20,
                                      fontFamily: 'HelveticaNeue',
                                      fontWeight: FontWeight.w700,
                                      height: 1,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' 990',
                                    style: TextStyle(
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
                                    decorationStyle: TextDecorationStyle.wavy),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '55. ',
                                    style: TextStyle(
                                        color: Color(0xff707070),
                                        fontSize: 24,
                                        fontFamily: 'HelveticaNeue',
                                        fontWeight: FontWeight.w700,
                                        height: 1),
                                  ),
                                  TextSpan(
                                    text: '990',
                                    style: TextStyle(
                                        color: Color(0xff707070),
                                        fontSize: 16,
                                        fontFamily: 'HelveticaNeue',
                                        fontWeight: FontWeight.w300,
                                        height: 1),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Color(0xffE4EDEF),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                              child: IconButton(
                                  icon: Icon(
                                    Icons.remove,
                                    color: Color(0xff818080),
                                    size: 16,
                                  ),
                                  onPressed: () {})),
                        ),
                        Text(
                          '2',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color(0xff818080),
                            fontSize: 22,
                            fontFamily: 'HelveticaNeue',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Color(0xffE4EDEF),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                              child: IconButton(
                                  icon: Icon(
                                    Icons.add,
                                    color: Color(0xff818080),
                                    size: 16,
                                  ),
                                  onPressed: () {})),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: true,
      backgroundColor: Colors.white,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      context: context,
      builder: (BuildContext bc) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 300,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/vendedorfoto.png')),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.grey[350],
                          blurRadius: 10.0,
                          offset: Offset(0, 0))
                    ],
                  ),
                ),
                Text(
                  'Ximena Halpert',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'MetaPro',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'ejecutivo de ventas',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'MetaPro',
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  'ximenahalpert@gmail.com',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'MetaPro',
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  '+569 4027 2740',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            color: Color(0xff39C209), shape: BoxShape.circle),
                        child: Center(
                            child: IconButton(
                          icon: Icon(CocoLineIcons.paper_plane),
                          iconSize: 20,
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pushNamed(context, 'chat');
                          },
                        )),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      });
}
