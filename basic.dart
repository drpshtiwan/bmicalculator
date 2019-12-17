void main () {
//   BASIC
  var name = "Kardo";
  var fullname = "${name.toUpperCase()} QAdir";
  
  List names = [1,3,'AS'];
  names.add('Kardo');
  names.removeAt(2);
  
  var filter = names.where((n) {
    return n != 1;
  });
  
//   Functions
  var calculator = ({int param1,int param2,mode: '+'}) {
    var res = 0;
    if(mode == '/')
    {
      res = param1 ~/ param2;
    }
    else if(mode == '-'){
      res = param1 - param2;
    }else if (mode == '*'){
      res = param1 * param2;
    }else{
      res = param1 + param2;
    }
    
    return res;
  };
  
//   For loop
  var switcher = (val) {
    
    switch(val){
      case "Red":
        return "Red";
        
      default:
        return "nothing";
    }
  };
  
  print(calculator(param1: 24,param2:6,mode :"/"));
  print(switcher("ajhsaj"));
}
