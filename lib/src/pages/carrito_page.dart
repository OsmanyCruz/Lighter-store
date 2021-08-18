import 'package:flutter/material.dart';
import 'package:zippo_ventas/src/fonts/coco_line_icons_icons.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CarritoPage extends StatelessWidget {
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
              expandedHeight: 115,
              backgroundColor: Colors.white,
              elevation: 0,
              leading: Container(),
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Productos en tu',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff292525),
                                  fontSize: 35,
                                  fontFamily: 'MetaPro',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                'Carrito',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff292525),
                                  fontSize: 45,
                                  fontFamily: 'MetaPro',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: Column(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                padding: EdgeInsets.only(top: 0),
                child: ListView(
                  padding: EdgeInsets.only(top: 10),
                  children: [
                    ItemCart(),
                    ItemCart(),
                    ItemCart(),
                    ItemCart(),
                    ItemCart(),
                    ItemCart(),
                  ],
                ),
              ),
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

class ItemCart extends StatelessWidget {
  const ItemCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Slidable(
        actionPane: SlidableDrawerActionPane(),
        actionExtentRatio: 0.25,
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
                                      decorationStyle:
                                          TextDecorationStyle.wavy),
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
        secondaryActions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              height: 140,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey[350],
                      blurRadius: 10.0,
                      offset: Offset(0, 0))
                ],
              ),
              child: IconButton(
                  icon: Icon(CocoLineIcons.trash_2),
                  iconSize: 40,
                  color: Colors.white,
                  onPressed: () {}),
            ),
          )
        ],
      ),
    );
  }
}
