import 'package:flutter/material.dart';
import 'package:examen1_stju/utils/constants.dart' as con;
import 'package:examen1_stju/home.dart';

class More_Info extends StatefulWidget {
  const More_Info({super.key});

  @override
  State<More_Info> createState() => _More_InfoState();
}

class _More_InfoState extends State<More_Info> {
  @override
  bool C1 = true;
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    C1 = C1 ? false : true;
                  });
                },
                child: Expanded(flex: 10,child: Container(
                  alignment: Alignment.center,
                  height: size.height * .05, width: size.width , decoration: BoxDecoration(color: Color(0xff67C88B), borderRadius: BorderRadius.circular(30)),
                  child: Text("Iniciar Sesión", style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500, color: Colors.white),),
                )),
              )
            ],)
        ],
      ),
    );
  }
}
