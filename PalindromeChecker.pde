public void setup()
{
  String lines[] = {"test","rotator","rewriter","nurses run","Madam, I'm Adam!","A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String processedString = noSpaces(noCapitals(onlyLetters(word)));
  if( processedString.equals(reverse(processedString)) && numLetters(processedString) == numLetters(reverse(processedString)) ){
    return true;
  }else {
    return false;
  }
}
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


