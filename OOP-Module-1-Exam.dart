class PastaFactoryGenerator{
  //This first part of the code will be Inheritance together
  //with Encapsulation for Setters and Getters assigning properties
  //the scopes similar in Java Programming.
  bool isMaking = true;
  bool isStartMaking = false;
  late String linguinePasta = "Santino's Linguine Pasta"; //null safety using "late" methods
  late String spagettiPasta = "Grande Jumbo Spagetti"; //for avoid undefining these properties
  // assigning string literals
  void lackResources(){
    print("We're out of resources...");
  }
  void machineJammed(){
    print("Oops... Our factory machine is jammed.");
  }
  String get makeSpagetti{
    return spagettiPasta;
  }
  set makeSpagetti(String linguine){
    this.linguinePasta = linguine;
    
  }
  String get makeLinguine{
    return linguinePasta;
  }
  set makeLinguine(String linguine){
    this.linguinePasta = linguine;
    }
}
class ProducingProductSpagetti extends PastaFactoryGenerator{
  // These two child classes will be Polymorphism. 
  // Whenever they uses the super class, may share the own functions
  // or behavior within the parent class.
  Produce(){ 
    super.lackResources();
    super.machineJammed();
    print("The product $makeSpagetti were currently producing...");
  }
  Finish(){
    print("The product $makeSpagetti were actually produced...");
  }
}
class ProducingProductLinguine extends PastaFactoryGenerator{
  Produce(){
    print("The product $linguinePasta were currently producing...");
  }
  Finish(){
    print("The product $linguinePasta were actually produced...");
  }
} //last part will be Abstraction - it will
  //hides for unusual information to make it organized and clean within the functionalities.
  //The part will be have own functions within these classes.
void main(){
ProducingProductSpagetti pasta1 = ProducingProductSpagetti();
ProducingProductSpagetti pasta2 = ProducingProductSpagetti();
pasta1.Produce();

pasta1.makeSpagetti = "Grande 250grams Spagetti"; // Setters/getters
pasta2.makeLinguine = "Santino's 250grams Linguine Pasta";

// printing assigned setters/getters
print("But we are still currently making ${pasta1.makeSpagetti}..");
print("But we are still currently making ${pasta2.makeLinguine}..");
}




    

  

