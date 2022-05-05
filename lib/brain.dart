import 'dart:math';
class Brain {
  Brain(this.height, this.weight);
  final int height;
  final int weight;

  late double _bmi;

  String calulateBMI(){
    _bmi = weight/ pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>=25){
      return 'OVERWEIGHT';
    }else if (_bmi>18.5){
      return 'NORMAL';
    }else{
      return 'UNDERWEIGHT';
    }
  }


  String getInterpretation(){
    if(_bmi>=25){
      return 'You have a higher than normal body weight. Try to exercise more';
    }else if (_bmi>=18.5){
      return 'You have normal body weight. Good Job';
    }else{
      return 'You have a lower than normal body weight. You need to eat more';
    }
  }
}