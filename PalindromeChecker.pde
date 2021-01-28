public String reverse(String str)
{
  String reversedString = "";
  for(int i = str.length()-1; i>= 0; i--){
        reversedString += str.charAt(i);
  }
  return reversedString;
}
public String noSpaces(String str){
  String newString = "";
  for(int i = 0; i<str.length();i++){
    if(str.charAt(i) != ' '){
      newString += str.charAt(i);
    }
  }
  return newString;
}

public String noCapitals(String str){
  return str.toLowerCase();
}
public String onlyLetters(String str){
  String newString = "";
  for(int i = 0;i<str.length();i++){
    if(Character.isLetter(str.charAt(i))){
      newString += str.charAt(i);
    }
  }
  return newString;
}

public int numLetters(String str){
  int count = 0;
  for(int i = 0;i<str.length();i++){
    if(Character.isLetter(str.charAt(i))){
      count++;
    }
  }
  return count;
}
