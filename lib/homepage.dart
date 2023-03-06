import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool headdivisibility = false;
  bool lhvisibility = false;
  bool rhvisibility = false;
  bool llvisibility = false;
  bool rlvisibility = false;
  bool bodyvisibility = false;
  bool letterF = false;
  bool letterL = false;
  bool letterU = false;
  bool letterT = false;
  bool letterE = false;
  bool letterR = false;
  int count = 0;
  int flag = 0;

  void displayletter(String text){
    setState(() {
      if(count==5){
        Alert(
          context: context,
          title:"Game Over",
          desc: "You are losed",

        ).show();
        reset();
      }
      else if(flag==5){
        Alert(
          title: "Game over",
          desc:"You are won",
          context: context,
        ).show();
        reset();
      }
      else{
        if(text=='F'){
          letterF=true;
          flag++;
        }else if(text=='L'){
          letterL=true;
          flag++;
        }else if(text=='U'){
          letterU=true;
          flag++;
        }else if(text=='T'){
          letterT=true;
          flag++;
        }else if(text=='E'){
          letterE=true;
          flag++;
        }else if(text=='R'){
          letterR=true;
          flag++;
        }else{
          count++;
          if(count==1){
            headdivisibility=true;
          }else if(count==2){
            bodyvisibility=true;
          }else if(count==3){
            rhvisibility=true;
          }else if(count==4){
            lhvisibility=true;
          }else if(count==5){
            rlvisibility=true;
          }else if(count==6){
            llvisibility=true;
          }
        }
      }
    });
  }
  void reset(){
    headdivisibility = false;
    lhvisibility = false;
    rhvisibility = false;
    llvisibility = false;
    rlvisibility = false;
    bodyvisibility = false;
    letterF = false;
    letterL = false;
    letterU = false;
    letterT = false;
    letterE = false;
    letterR = false;
    count = 0;
    flag = 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: ListView(
            children: [
              Stack(
                children: [
                  Image.asset("images/hang.png"),
                  Visibility(visible: headdivisibility,
                      child: Image.asset("images/head.png")),
                  Visibility(visible: bodyvisibility,
                      child: Image.asset("images/Hang1.png")),
                  Visibility(visible: rhvisibility,
                      child: Image.asset("images/la.png")),
                  Visibility(visible:lhvisibility,
                      child: Image.asset("images/ll.png")),
                  Visibility(visible: rlvisibility,
                      child: Image.asset("images/ra.png")),
                  Visibility(visible: llvisibility,
                      child: Image.asset("images/rl.png")),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.black12,
                      child: Center(
                          child: Visibility(
                              visible: letterF,
                              child: Text(
                                "F",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.black12,
                      child: Center(
                          child: Visibility(
                              visible: letterL,
                              child: Text(
                                "L",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.black12,
                      child: Center(
                          child: Visibility(
                              visible: letterU,
                              child: Text(
                                "U",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.black12,
                      child: Center(
                          child: Visibility(
                              visible: letterT,
                              child: Text(
                                "T",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.black12,
                      child: Center(
                          child: Visibility(
                              visible: letterT,
                              child: Text(
                                "T",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.black12,
                      child: Center(
                          child: Visibility(
                              visible: letterE,
                              child: Text(
                                "E",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.black12,
                      child: Center(
                          child: Visibility(
                              visible: letterR,
                              child: Text(
                                "R",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    buildButton("A",),
                    buildButton("B",),
                    buildButton("C",),
                    buildButton("D",),
                    buildButton("E",),
                    buildButton("F",),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    buildButton("G",),
                    buildButton("H",),
                    buildButton("I",),
                    buildButton("J",),
                    buildButton("K",),
                    buildButton("L",),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    buildButton("M",),
                    buildButton("N",),
                    buildButton("O",),
                    buildButton("P",),
                    buildButton("Q",),
                    buildButton("R",),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    buildButton("S",),
                    buildButton("T",),
                    buildButton("U",),
                    buildButton("V",),
                    buildButton("W",),
                    buildButton("X",),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    buildButton("Y",),
                    buildButton("Z",),
                  ],
                ),
              )


            ],
          ),
        ),
    );
  }
  buildButton(String text,){
    return Expanded(
      child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black12,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        onPressed: () {
        displayletter(text);
        },
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );

  }

}
