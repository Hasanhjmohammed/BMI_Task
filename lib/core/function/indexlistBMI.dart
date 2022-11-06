int indexlistBMI(double bmi){
  int res;
  if(bmi<16.0)
    return 0;
  else if(bmi>=16.0&&bmi<18.4)
    return 1;
  else if(bmi>=18.5&&bmi<24.9)
    return 2;
  else if(bmi>=25.0&&bmi<29.9)
    return 3;
  else if(bmi>=30.0&&bmi<34.9)
    return 4;
  else if(bmi>=35.0&&bmi<39.9)
    return 5;
  else
    return 6;

}