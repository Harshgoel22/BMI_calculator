
import 'dart:math';

class ResultBrain {
  ResultBrain({required this.height,required this.weight});

  final int height;
  final int weight;
  double _bmi = 0.0;

  String CalculateBMI() {
    double _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String CalculateResult() {
    double _bmi = weight/pow(height/100, 2);
    if(_bmi>=25.0){
      return 'OverWeight';
    }else if(_bmi>18.5){
      return 'Normal';
    }else{
      return 'UnderWeight';
    }
  }
  String CalculateInterpetetion() {
    double _bmi = weight/pow(height/100, 2);
    if(_bmi>=25.0){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }else if(_bmi>18.5){
      return 'You have a normal body weight. Good Job.';
    }else{
      return 'You have a less than normal body weight. You can eat a bit more.';
    }
  }

}