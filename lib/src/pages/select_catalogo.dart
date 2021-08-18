import 'package:flutter/material.dart';
import 'dart:math' as math;
   
class SelectCatalogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  color: Color(0xffF5333F),
                ),
              ),
              Expanded(
                child: Container(
                  color: Color(0xff434343),
                ),
              )
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                'Seleccione el catalogo que por el que quiere comenzar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'MetaPro',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),

          Column(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                     Navigator.pushReplacementNamed(context, 'home');
                  },
                                  child: Stack(
                    children: [
                      Container(
                        child: Transform.translate(
                          offset: Offset(
                          -MediaQuery.of(context).size.width*0.1
                          ,0
                        ),
                          child: Transform.rotate(
                            angle: math.pi / 3.5,
                             child: Container(
                               height: 300,
                               child: Image.asset('assets/ronsonproduct.png')
                            )
                          ),
                        ),
                        
                      ),
                      Center(
                        child: Container(
                          width: 150,
                          child: Image.asset('assets/logo-ronson-blanco.png')
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                     Navigator.pushReplacementNamed(context, 'home');
                  },
                                  child: Stack(
                    children: [
                      Container(
                        child: Transform.translate(
                          offset: Offset(
                          MediaQuery.of(context).size.width*0.65,
                          MediaQuery.of(context).size.width*0.55
                        ),
                          child: Transform.rotate(
                            angle: -math.pi / 5.5,
                             child: Container(
                               height: 220,
                               child: Image.asset('assets/zippoproduct.png')
                             )
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 115,
                          child: Image.asset('assets/logo-zippo-blanco.png')
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}