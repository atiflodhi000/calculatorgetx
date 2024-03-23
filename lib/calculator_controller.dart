
import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController extends GetxController{
  RxString userinput = ''.obs;
  RxString answer = ''.obs;

  CalRes(String value){
  userinput.value += value;


  }

  Res(String value){
    Parser p= Parser();
    Expression expression = p.parse(userinput.value);
    ContextModel contextModel = ContextModel();
    double oval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer.value = oval.toString();
  }
  EMP(){
    userinput.value='';
    answer.value='';
  }
  DEL(){
    userinput.value= userinput.value.substring(0,userinput.value.length-1);
  }
}

