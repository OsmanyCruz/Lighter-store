import 'package:flutter/material.dart';
import 'package:zippo_ventas/src/fonts/coco_line_icons_icons.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CheckOutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Container(
          width: 80,
          child: Center(child: Image.asset('assets/logo-zippo-negro.png')),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Image.asset('assets/cambiarcatalogo.png'))
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 100,
              backgroundColor: Colors.white,
              elevation: 0,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: [
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground,
                  StretchMode.fadeTitle
                ],
                collapseMode: CollapseMode.pin,
                background: Container(
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
                                    'Check out',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff292525),
                                      fontSize: 45,
                                      fontFamily: 'MetaPro',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Direcciones',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: 'MetaPro',
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff292525)),
                      ),
                      IconButton(
                        icon: Icon(
                          CocoLineIcons.add,
                          color: Color(0xffF5333F),
                          size: 30,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Container(
                  height: 155,
                  padding: EdgeInsets.only(top: 0),
                  child: ListView(
                    padding: EdgeInsets.only(top: 10),
                    scrollDirection: Axis.horizontal,
                    children: [
                      ItemAddress(),
                      ItemAddress(),
                      ItemAddress(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Elige tu metodo de pago',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: 'MetaPro',
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff292525)),
                  ),
                ),
                Container(
                  height: 155,
                  padding: EdgeInsets.only(top: 0),
                  child: ListView(
                    padding: EdgeInsets.only(top: 10),
                    scrollDirection: Axis.horizontal,
                    children: [
                      ItemCard(),
                      ItemCard(),
                      ItemCard(),
                      ItemCard(),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey[350],
                        blurRadius: 6.0,
                        offset: Offset(0, 0))
                  ],
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
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
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Descuentos productos',
                                              style: TextStyle(
                                                  fontFamily: 'MetaPro',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              '\$5.000',
                                              style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Descuentos cliente',
                                              style: TextStyle(
                                                  fontFamily: 'MetaPro',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              '\$5.000',
                                              style: TextStyle(
                                                  fontFamily: 'HelveticaNeue',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      thickness: 2,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(55)),
                        height: 55.0,
                        onPressed: () {
                          Navigator.pushNamed(context, 'checkout');
                        },
                        color: Color(0xffF5333F),
                        child: Text(
                          'Check out',
                          style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 140,
          width: MediaQuery.of(context).size.width - 60,
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
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xff4CA9DF),
                  Color(0xFF292E91),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 61,
                            child: Image.asset('assets/logocard.png'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Credito'.toUpperCase(),
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'HelveticaNeue',
                                fontWeight: FontWeight.w300,
                                height: 1.5),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 16,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'descuento asociado'.toUpperCase(),
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'HelveticaNeue',
                                fontWeight: FontWeight.w300,
                                height: 1.5),
                          ),
                          Text(
                            '10%'.toUpperCase(),
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'HelveticaNeue',
                                fontWeight: FontWeight.w700,
                                height: 1.5),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.radio_button_checked,
                        color: Colors.white,
                        size: 22,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class ItemAddress extends StatelessWidget {
  const ItemAddress({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 140,
          width: MediaQuery.of(context).size.width - 60,
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
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 8,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'No. 1221 Chiloé, Región Metropolitana \nSantiago, Chile.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Color(0xff292525),
                                fontSize: 16,
                                fontFamily: 'HelveticaNeue',
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Color(0xffBCBCBC),
                            size: 16,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Cod. 8320000',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Color(0xff9F9F9F),
                            fontSize: 18,
                            fontFamily: 'HelveticaNeue',
                            fontWeight: FontWeight.w500,
                            height: 1.5),
                      ),
                      Icon(
                        Icons.radio_button_checked,
                        color: Color(0xffF5333F),
                        size: 22,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
