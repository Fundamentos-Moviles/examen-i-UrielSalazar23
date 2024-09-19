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
  bool C1 = true; int i = 0; int ii = 1; bool C2 = true; bool C3 = true; int iii=0; int iiii=0;
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
                    if(i<12)
                    {
                      i++;
                    }
                    else if(i>=12 && iii<12){
                      iii++;
                    }
                    else
                    {
                      iiii++;
                    }

                    if(i > 12 == 0 || iii > 12 == 0)
                    {
                      ii++;
                    }
                  });
                },
                child: Expanded(flex: 10,child: Container(
                  alignment: Alignment.center,
                  height: size.height * .05, width: size.width , decoration: BoxDecoration(color: Color(0xff67C88B), borderRadius: BorderRadius.circular(30)),
                  child: Text("Iniciar Sesión", style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500, color: Colors.white),),
                )),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: ii,
                  itemBuilder: (BuildContext ctxt, int index) {

                    if(C1){
                      return i < 12 ? Row(children: [
                        Expanded(child: Container(height: 250,color: i%12 < 1 ? Colors.white : con.icolor1,), flex: 1,),
                        Expanded(child: Container(height: 250,color: i%12 < 2 ? Colors.white : con.icolor2,), flex: 1,),
                        Expanded(child: Container(height: 250,color: i%12 < 3 ? Colors.white : con.icolor1,), flex: 1,),
                        Expanded(child: Container(height: 250,color: i%12 < 4 ? Colors.white : con.icolor2,), flex: 1,),
                        Expanded(child: Container(height: 250,color: i%12 < 5 ? Colors.white : con.icolor1,), flex: 1,),
                        Expanded(child: Container(height: 250,color: i%12 < 6 ? Colors.white : con.icolor2,), flex: 1,),
                        Expanded(child: Container(height: 250,color: i%12 < 7 ? Colors.white : con.icolor3,), flex: 1,),
                        Expanded(child: Container(height: 250,color: i%12 < 8 ? Colors.white : con.icolor4,), flex: 1,),
                        Expanded(child: Container(height: 250,color: i%12 < 9 ? Colors.white : con.icolor3,), flex: 1,),
                        Expanded(child: Container(height: 250,color: i%12 < 10 ? Colors.white : con.icolor4,), flex: 1,),
                        Expanded(child: Container(height: 250,color: i%12 < 11 ? Colors.white : con.icolor3,), flex: 1,),
                        Expanded(child: Container(height: 250,color: i%12 < 12 ? Colors.white : con.icolor4,), flex: 1,),
                      ],) : Row(children: [
                        Expanded(child: Container(height: 250,color:con.icolor1,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor2,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor1,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor2,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor1,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor2,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor3,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor4,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor3,), flex: 1,),
                        Expanded(child: Container(height: 250,color: con.icolor4,), flex: 1,),
                        Expanded(child: Container(height: 250,color: con.icolor3,), flex: 1,),
                        Expanded(child: Container(height: 250,color: con.icolor4,), flex: 1,),
                      ],);
                    }
                  }
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: ii,
                  itemBuilder: (BuildContext ctxt, int index) {

                    if(C2)
                    {
                      return iii < 12 ? Row(children: [
                        Expanded(child: Container(height: 250,color: iii%12 < 1 ? Colors.white : con.icolor3,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iii%12 < 2 ? Colors.white : con.icolor4,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iii%12 < 3 ? Colors.white : con.icolor3,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iii%12 < 4 ? Colors.white : con.icolor4,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iii%12 < 5 ? Colors.white : con.icolor3,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iii%12 < 6 ? Colors.white : con.icolor4,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iii%12 < 7 ? Colors.white : con.icolor1,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iii%12 < 8 ? Colors.white : con.icolor2,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iii%12 < 9 ? Colors.white : con.icolor1,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iii%12 < 10 ? Colors.white : con.icolor2,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iii%12 < 11 ? Colors.white : con.icolor1,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iii%12 < 12 ? Colors.white : con.icolor2,), flex: 1,),
                      ],) : Row(children: [
                        Expanded(child: Container(height: 250,color:con.icolor3,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor4,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor3,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor4,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor3,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor4,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor1,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor2,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor1,), flex: 1,),
                        Expanded(child: Container(height: 250,color: con.icolor2,), flex: 1,),
                        Expanded(child: Container(height: 250,color: con.icolor1,), flex: 1,),
                        Expanded(child: Container(height: 250,color: con.icolor2,), flex: 1,),
                      ],);
                    }
                  }
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: ii,
                  itemBuilder: (BuildContext ctxt, int index) {

                    if(C3)
                    {
                      return iiii < 12 ? Row(children: [
                        Expanded(child: Container(height: 250,color: iiii%12 < 1 ? Colors.white : con.icolor1,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iiii%12 < 2 ? Colors.white : con.icolor2,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iiii%12 < 3 ? Colors.white : con.icolor1,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iiii%12 < 4 ? Colors.white : con.icolor2,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iiii%12 < 5 ? Colors.white : con.icolor1,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iiii%12 < 6 ? Colors.white : con.icolor2,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iiii%12 < 7 ? Colors.white : con.icolor3,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iiii%12 < 8 ? Colors.white : con.icolor4,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iiii%12 < 9 ? Colors.white : con.icolor3,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iiii%12 < 10 ? Colors.white : con.icolor4,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iiii%12 < 11 ? Colors.white : con.icolor3,), flex: 1,),
                        Expanded(child: Container(height: 250,color: iiii%12 < 12 ? Colors.white : con.icolor4,), flex: 1,),
                      ],) : Row(children: [
                        Expanded(child: Container(height: 250,color:con.icolor1,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor2,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor1,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor2,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor1,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor2,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor3,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor4,), flex: 1,),
                        Expanded(child: Container(height: 250,color:con.icolor3,), flex: 1,),
                        Expanded(child: Container(height: 250,color: con.icolor4,), flex: 1,),
                        Expanded(child: Container(height: 250,color: con.icolor3,), flex: 1,),
                        Expanded(child: Container(height: 250,color: con.icolor4,), flex: 1,),
                      ],);
                    }
                  }
              )

            ],)
        ],
      ),
    );
  }
}
