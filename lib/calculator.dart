import 'package:calculator_by_getx/button.dart';
import 'package:calculator_by_getx/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
 final CalculatorController controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Obx(() => Text(controller.userinput.value,style: TextStyle(fontSize: 30,color: Colors.white),) ),
                      Obx(() => Text(controller.answer.value,style: TextStyle(fontSize: 30,color: Colors.white)))
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(text: 'AC',onpress: (){
                          controller.EMP();
                        },),
                        MyButton(text: '+/-',onpress: (){},),
                        MyButton(text: '%',onpress: (){}),
                        MyButton(text: '/',color: Color(0xffffa00a),onpress: (){
                          controller.CalRes('/');
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(text: '7',onpress: (){
                          controller.CalRes('7');
                        },),
                        MyButton(text: '8',onpress: (){
                          controller.CalRes('8');
                        },),
                        MyButton(text: '9',onpress: (){
                          controller.CalRes('9');
                        }),
                        MyButton(text: '*',color: Color(0xffffa00a),onpress: (){
                          controller.CalRes('*');
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(text: '4',onpress: (){
                          controller.CalRes('4');
                        },),
                        MyButton(text: '5',onpress: (){
                          controller.CalRes('5');
                        },),
                        MyButton(text: '6',onpress: (){
                          controller.CalRes('6');
                        }),
                        MyButton(text: '-',color: Color(0xffffa00a),onpress: (){
                          controller.CalRes('-');
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(text: '1',onpress: (){
                          controller.CalRes('1');
                        },),
                        MyButton(text: '2',onpress: (){
                          controller.CalRes('2');
                        },),
                        MyButton(text: '3',onpress: (){
                          controller.CalRes('3');
                        }),
                        MyButton(text: '+',color: Color(0xffffa00a),onpress: (){
                          controller.CalRes('+');
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(text: '0',onpress: (){
                          controller.CalRes('0');
                        },),
                        MyButton(text: '.',onpress: (){
                          controller.CalRes('.');
                        }),
                        MyButton(text: 'DEL',onpress: (){
                          controller.DEL();
                        }),
                        MyButton(text: '=',color: Color(0xffffa00a),onpress: (){
                          controller.Res('=');
                        },),

                      ],
                    ),




                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
