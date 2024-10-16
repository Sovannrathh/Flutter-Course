class Distance{
  final double meters;

  // main constructor 
  Distance(this.meters);
 // named contructor 
  Distance.kms(double kms): meters = kms*1000;
  Distance.meters(double meters): meters = meters;
  Distance.cms(double cms) : meters = cms/100;

  // use get 
  double get kms => meters/1000;
  double get cms=>meters*100;
  // use operator overloading 

  Distance operator + (Distance new_other){
    return Distance.meters(this.meters+ new_other.meters);
  }
 
}
void main(){
  Distance d1 = new Distance.kms(3.4);
  Distance d2 = new Distance.meters(1000); 
  print((d1+d2).kms);
  print((d1+d2).meters);
  print((d1+d2).cms);
}
