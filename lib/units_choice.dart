


class choice{

  //private instance variables :
  var _isChoiceIGood;
  var _availableUnits = ['Handasa' , 'Mahan', 'Maam', 'Maav' , 'Matan' , 'Data And ShooShoo','Human resource'];


  bool makeChoice(String unitName){
    //_availableUnits.where((element) => eleme
    if(unitName != _availableUnits[0]){
      print("Compromising choice ...");
      return false;
    }

    print("Choice of warriors !!!");
    return true;
  }


}