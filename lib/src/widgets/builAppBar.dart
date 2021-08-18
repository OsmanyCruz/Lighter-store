import 'package:flutter/material.dart';
import 'package:zippo_ventas/src/fonts/coco_line_icons_icons.dart';
AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leadingWidth: 100,
      leading: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Center(child: Image.asset('assets/logo-zippo-negro.png')),
        ),
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