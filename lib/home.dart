import 'package:examen1_stju/more_info.dart';
import 'package:flutter/material.dart';
import 'package:examen1_stju/utils/constants.dart' as con;


class Home extends StatefulWidget {
  const Home({super.key});

  @override

  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List lista;
  @override

  void initState() {
    lista=List.from(con.lista);
    // TODO: implement initState
    super.initState();
  }




  @override

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: con.F3,
      body: Stack(
        children: [
          Padding(
              padding: EdgeInsets.all(30.0),
              ///Crea un scrool
              child: SingleChildScrollView(
                child:
                Column(
                  children: [
                    Title(size),
                    SizedBox(height: 30,),
                    Container(
                      height: size.height,
                      width: size.width,
                      child: ListView.builder(
                          padding: const EdgeInsets.only(bottom: 20, top: 20),
                          itemCount: lista.length,
                          itemBuilder: (BuildContext context, int index){
                            var datos = lista[index].toString().split('#');
                            if(index % 2 == 0)
                            {
                              return Column(
                                children: [
                                  SizedBox(height: 25,),
                                  NewCart1(
                                    size: size,
                                    num: datos[1],
                                    title: datos[2],
                                    description: datos[3],
                                    star: datos[4],
                                  )
                                ],
                              );

                            }
                            else
                            {
                              return Column(
                                children: [
                                  SizedBox(height: 25,),
                                  newCart1(size,
                                      datos[1], datos[2],
                                      datos[3], datos[4], index)
                                ],
                              );

                            }
                          }

                      ),
                    ),

                  ],
                ),
              )
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Expanded(child: Expanded(child: Text(style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: con.title),"SEGUNDA VISTA: Salazar Torres Josue Uriel"))),
          )
        ],

      ),
    );
  }

  Container newCart1(Size size, String num, String title, String description, String star, int id) {
    int i = 0;
    for(i; i.toString() != star; i++);
    return
      Container(
        child: Row(
          children: [
            Container(
                width: size.width * .65,
                height: size.height * .15,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  children: [
                    SizedBox(height: 9,),
                    Row(
                      children: [
                        SizedBox(width: 30,),
                        Expanded(child: Text(num, style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500, color: con.F3),), flex: 10,),
                        Expanded(child: Icon(Icons.energy_savings_leaf, color: con.effects,), flex: 1,)
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 30,),
                        Expanded(child: Text(title, style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400, color: Colors.black),))
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 30,),
                        Expanded(child: Text(description, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400, color: Colors.grey),))
                      ],
                    ),
                    Row(
                        children: [
                          SizedBox(width: 310,),
                          Expanded(child: Icon(Icons.star, color: i >= 1 ? Colors.yellow : Colors.grey,)),
                          Expanded(child: Icon(Icons.star, color: i >= 2 ? Colors.yellow : Colors.grey,)),
                          Expanded(child: Icon(Icons.star, color: i >= 3 ? Colors.yellow : Colors.grey,)),
                          Expanded(child: Icon(Icons.star, color: i >= 4 ? Colors.yellow : Colors.grey,)),
                          Expanded(child: Icon(Icons.star, color: i == 5 ? Colors.yellow : Colors.grey,)),
                          SizedBox(width: 20,)]
                    ),
                  ],
                )
            ),
            SizedBox(width: 20,),
            Container(
              width: size.width * .23,
              height: size.height * .15,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const More_Info()));
                      });
                    },
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFF42A28C),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        height: size.height * .05,
                        width: size.width * .21,
                        child: Padding(padding: EdgeInsets.only(left: 28.0),
                          child: Row(children: [Icon(Icons.edit, color: Colors.white,), Text(" Ver mas", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),)],),)

                    ),
                  ),
                  SizedBox(height: 15,),
                  InkWell(
                    onTap: (){
                      setState(() {

                        var snackdemo = SnackBar(
                          content: Text('El dato $num ha sido eliminado'),
                          backgroundColor: con.bottons,
                          elevation: 10,
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsets.all(5),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackdemo);
                        if(num != '23')
                        {
                          lista.removeAt(id);
                        }

                      });
                    },
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFF42A28C),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        height: size.height * .05,
                        width: size.width * .21,
                        child: Padding(padding: EdgeInsets.only(left: 28.0),
                          child: Row(children: [Icon(Icons.delete, color: Colors.white,), Text(" Borrar", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),)],),)

                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
  }

  Container Title(Size size) {
    return Container(
      width: size.width * .90,
      height: size.height * .05,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color:  Colors.white,
            blurRadius: 10.0,
            spreadRadius: 0.0,
            offset: const Offset(0.0, 3.0,),
          ),
        ],

      ),

      child: Text('Notificacion de actividades ',style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w700, color: con.title)),
    );
  }
}

class NewCart1 extends StatelessWidget {
  final String num;
  final String title;
  final String description;
  final String star;
  const NewCart1({
    super.key,
    required this.size, required this.num, required this.title, required this.description, required this.star,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    int i = 0;
    for(i; i.toString() != star; i++);
    return InkWell(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const More_Info()));
      },
      child: Container(
          width: size.width * .95,
          height: size.height * .15,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20),
          ),

          child: Column(
            children: [
              SizedBox(height: 9,),
              Row(
                children: [
                  SizedBox(width: 30,),
                  Expanded(child: Text(num, style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500, color: con.F3),), flex: 10,),
                  Expanded(child: Icon(Icons.energy_savings_leaf, color: con.effects,), flex: 1,)
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 30,),
                  Expanded(child: Text(title, style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400, color: Colors.black),))
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 30,),
                  Expanded(child: Text(description, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400, color: Colors.grey),))
                ],
              ),
              Row(
                  children: [
                    SizedBox(width: 530,),
                    Expanded(child: Icon(Icons.star, color: i >= 1 ? Colors.yellow : Colors.grey,)),
                    Expanded(child: Icon(Icons.star, color: i >= 2 ? Colors.yellow : Colors.grey,)),
                    Expanded(child: Icon(Icons.star, color: i >= 3 ? Colors.yellow : Colors.grey,)),
                    Expanded(child: Icon(Icons.star, color: i >= 4 ? Colors.yellow : Colors.grey,)),
                    Expanded(child: Icon(Icons.star, color: i == 5 ? Colors.yellow : Colors.grey,)),
                    SizedBox(width: 20,)]
              ),
            ],
          )
      ),
    );

  }
}
