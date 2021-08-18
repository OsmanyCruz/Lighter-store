import 'package:flutter/material.dart';
import 'package:zippo_ventas/src/fonts/coco_line_icons_icons.dart';

AppBar buildAppBarReturn(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,size: 16,),color: Colors.black, onPressed: () { Navigator.of(context).pop(); },),
        title: Container(
          width: 80,
          child: Center(child: Image.asset('assets/logo-zippo-negro.png')),
        ),
        actions: [
       
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
          child: IconButton(icon:Icon(CocoLineIcons.shopping_cart_1,color: Color(0xffB7B7B7),size: 22,), onPressed: (){
              Navigator.pushNamed(context, 'carrito');
          }),
        ),
         
      ],
      );
  }