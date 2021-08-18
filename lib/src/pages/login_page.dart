import 'package:flutter/material.dart';
import 'package:zippo_ventas/src/fonts/coco_line_icons_icons.dart';
import 'dart:math' as math;
 
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
 

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
      children: [
            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    Positioned(
                      top: -55,
                      right: -65,
                      child: Transform.rotate(
                        angle: math.pi / 10.0,
                        child: Container(
                          height: 220,
                          width: 220,
                          decoration: BoxDecoration(
                            color: Color(0xffF33238),
                            borderRadius: BorderRadius.circular(45),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 10.0,
                                  offset: Offset(-3, -3))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -95,
                      right: -50,
                      child: Transform.rotate(
                        angle: -math.pi / 6.0,
                        child: Container(
                            height: 270,
                            width: 220,
                            child: Image.asset('assets/zippoproduct.png')),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff707070),
                              fontSize: 80,
                              fontFamily: 'MetaPro',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'Por favor inicie sesión para continuar',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xffB7B7B7),
                              fontSize: 20,
                              fontFamily: 'MetaPro',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          fieldCorreo(),
                          fieldPassword(),
                           Padding(
                             padding: const EdgeInsets.only(top: 20),
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                btnOlvidePasswword(),
                                btnLogin(context)
                              ],
                          ),
                           )
                        ],
                      ),
                      
                    ),
                   
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    Positioned(
                      bottom: -40,
                      left: -65,
                      child: Transform.rotate(
                        angle: math.pi / 3.0,
                        child: Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Color(0xffF5333F),
                            borderRadius: BorderRadius.circular(35),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 10.0,
                                  offset: Offset(-3, -3))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -100,
                      left: -70,
                      child: Transform.rotate(
                        angle: math.pi / 5.0,
                        child: Container(
                            height: 270,
                            width: 220,
                            child: Image.asset('assets/ronsonproduct.png')),
                      ),
                    ),
                  ],
                ),
              ),
            ),
      ],
    ),
          ),
        ));
  }
  

  Padding fieldCorreo() {
    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: TextFormField(
                          decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        prefixIcon: Icon(
                          CocoLineIcons.message_5,
                          color: Color(0xffA7A7A7),
                        ),
                        labelStyle: TextStyle(
                            fontSize: 18,
                            fontFamily: 'MetaPro',
                            fontWeight: FontWeight.w300,
                            height: 1,
                            color: Color(0xffA7A7A7)),
                        labelText: "Correo",
                        filled: true,
                        fillColor: Color(0xffF5F6FB),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Color(0xffF5F6FB),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Color(0xffE8E8E8),
                            width: 1.0,
                          ),
                        ),
                      ),
                      onSaved: (value) => email = value,
                      validator: (value){
                        if(value.length < 3){
                          return 'Ingrese email valido';
                        }else{
                          return null;
                        }
                      },
                    ),
                  );
  }

  TextFormField fieldPassword() {
    return TextFormField(
                    obscureText: true,
                        decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      prefixIcon: Icon(
                        CocoLineIcons.lock_1,
                        color: Color(0xffA7A7A7),
                      ),
                      labelStyle: TextStyle(
                          fontSize: 18,
                          fontFamily: 'MetaPro',
                          fontWeight: FontWeight.w300,
                          height: 1,
                          color: Color(0xffA7A7A7)),
                      labelText: "Contraseña",
                      filled: true,
                      fillColor: Color(0xffF5F6FB),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color(0xffFBAD02),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color(0xffE8E8E8),
                          width: 1.0,
                        ),
                      ),
                    ),
                    onSaved: (value) => password = value,
                  validator: (value){
                      if(value.length < 3){
                        return 'La contraseña debe se de mas de 3 caracteres';
                      }else{
                        return null;
                      }
                    },
                  );
  }

    Text btnOlvidePasswword() {
    return Text(
                            'Olvidaste tu contraseña?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffF5443C),
                              fontSize: 14,
                              fontFamily: 'MetaPro',
                              fontWeight: FontWeight.w300,
                            ),
                          );
  }

  Widget btnLogin(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: GestureDetector(
                onTap: (){
                  Navigator.pushReplacementNamed(context, 'select');
                },
                  child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width*0.4,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFFF59433),
                                Color(0xFFF5333F),
                              ],
                            ),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(child: Text('Entrar',style: TextStyle(color: Colors.white,fontSize: 18,fontFamily: 'Tajawal',fontWeight: FontWeight.w200,height: 1),)),
                ),
              ),
      );
  }

  

}
