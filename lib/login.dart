import 'package:flutter/material.dart';
import 'package:examen1_stju/utils/constants.dart' as con;
import 'package:examen1_stju/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final usuario = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  bool  C1=false;
  bool C2=false;
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          background(size),
          buildContainer(size),
          buildContainerData(size)
        ],
      ),
    );
    return const Placeholder();
  }

  Container buildContainerData(Size size) {
    return Container(
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50)
      ),
      height: size.height * .48,
      width: size.width * .80,
      child: Column(

        children: [
          SizedBox(height: 45.0,),
          Expanded(child: Text(
            'Bienvenido a tu primer EXAMEN',
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w800, color: con.title),)),
          SizedBox(height: 25.0,),
          Padding(padding: EdgeInsets.only(left: 20, right: 20),
            child: Expanded(child: TextField(
              controller: usuario,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(width:5, style:  BorderStyle.solid)),
                hintText: 'Correo/Usuario',
              ),
            )) ,),
          SizedBox(height: 20.0,),
          Padding(padding: EdgeInsets.only(left: 20, right: 20),
            child: Expanded(child: TextField(
              controller: pass,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(width:5, style:  BorderStyle.solid)),
                hintText: 'Contraseña',
              ),
            )) ,),
          SizedBox(height: 20.0,),
          SizedBox(width: size.width *0.60, height: size.height * 0.05,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: con.bottons,
              ),
              onPressed: (){
                validaUser();
              }, ///(){} = Función interna
              child: Text('Iniciar Sesión ',style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.white)),
            ),),
          SizedBox(height: 45.0,),
          Expanded(child: Text(
            'Mi primer examen, ¿estará sencillo?',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.white),)),
          SizedBox(height: 45.0,),



        ],
      ),

    );
  }

  void validaUser() {
    ///Detectar y actualizar el estado de la vista actual
    setState(() {
      print('Usuario: ${usuario.text}');
      print("Contraseña: "+pass.text);
      //solo puede ingresar si escribi user = User01 y pass = Pass02
      //un mensaje si es valido o incorrecto
      if(usuario.text == 'test') {C1  = true;}
      if(pass.text == 'FDM1') {C2  = true;}
      if(usuario.text == 'test' && pass.text == 'FDM1'){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Home()));
      } else {
        showAlertDialog(context, C1, C2);
      }
      C1 = false;
      C2 = false;
    });
  }
}
showAlertDialog(BuildContext context, bool C1, bool C2) {

  // set up the button
  Widget okButton = TextButton(
    child: Text(""),
    onPressed: () { },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Datos Incompletos"),
    content: C1 ? Text("La contraseña es erronea") : Text(C2 ? "El usuario no es correcto" : "Usuario y contraseña erronea"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}


Opacity buildContainer(Size size) {
  return Opacity(opacity: .50,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(50)
      ),
      height: size.height * .46,
      width: size.width * .80,

    ),);
}

Container background(Size size) {
  return Container(
    color: con.F1,
    child:
    Column(
      children: [
        Row(children: [
          Expanded(child: Container(
            height: size.height * 0.3,
            decoration: BoxDecoration(
                color: con.F2, borderRadius: BorderRadius.circular(30)
            ),
          )),
          Expanded(child: Container(
            height: size.height * 0.3,
            decoration: BoxDecoration(
                color: con.F1, borderRadius: BorderRadius.circular(30)
            ),
          )),
          Expanded(child: Container(
            height: size.height * 0.3,
            decoration: BoxDecoration(
                color: con.F3, borderRadius: BorderRadius.circular(30)
            ),
          )),
          Expanded(child: Container(
            height: size.height * 0.3,
            decoration: BoxDecoration(
                color: con.F4, borderRadius: BorderRadius.circular(30)
            ),
          )),
        ],),
        Row(children: [
          Expanded(child: Container(
            height: size.height * 0.333,
            decoration: BoxDecoration(
                color: con.F4, borderRadius: BorderRadius.circular(30)
            ),
          )),
          Expanded(child: Container(
            height: size.height * 0.333,
            decoration: BoxDecoration(
                color: con.F3, borderRadius: BorderRadius.circular(30)
            ),
          )),
          Expanded(child: Container(
            height: size.height * 0.333,
            decoration: BoxDecoration(
                color: con.F2, borderRadius: BorderRadius.circular(30)
            ),
          )),
          Expanded(child: Container(
            height: size.height * 0.333,
            decoration: BoxDecoration(
                color: con.F1, borderRadius: BorderRadius.circular(30)
            ),
          )),
        ],),
        Row(children: [
          Expanded(child: Container(
            height: size.height * 0.333,
            decoration: BoxDecoration(
                color: con.F3, borderRadius: BorderRadius.circular(30)
            ),
          )),
          Expanded(child: Container(
            height: size.height * 0.333,
            decoration: BoxDecoration(
                color: con.F4, borderRadius: BorderRadius.circular(30)
            ),
          )),
          Expanded(child: Container(
            height: size.height * 0.333,
            decoration: BoxDecoration(
                color: con.F1, borderRadius: BorderRadius.circular(30)
            ),
          )),
          Expanded(child: Container(
            height: size.height * 0.333,
            decoration: BoxDecoration(
                color: con.F2, borderRadius: BorderRadius.circular(30)
            ),
          )),
        ],)
      ],
    ),
  );
}





