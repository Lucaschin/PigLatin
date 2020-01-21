public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}

}
public void draw()
{
        //not used
}
public int findQ(String sWord){
if(sWord.charAt(0) == 'q'){
		return 3;
	
 }
return 5;
}

public int findFirstVowel(String sWord)
{


for(int i = 0; i < sWord.length(); i++){

       if(sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u')
      return i;
if(sWord.charAt(i) == 0){
	return 0;
}
}

return -1;
}
public int findCon(String sWord){
if(sWord.charAt(0) != 'q'|| sWord.charAt(0) != 'a' || sWord.charAt(0) != 'e' || sWord.charAt(0) != 'o' || sWord.charAt(0) != 'o' || sWord.charAt(0) != 'u'){
		return 6;
	
 }
 
 return 7;
}


public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{

	if(findQ(sWord)== 3){
		return sWord.substring(2,sWord.length()-1) + "quay";
	}
	else if(findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	else if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(findCon(sWord) == 6){
		return sWord.substring(1,sWord.length()) + sWord.substring(0,1)+ "ay";
	}
	else if(sWord.substring(0,sWord.length()) == "three"){
		return sWord.substring(2,sWord.length()) + sWord.substring(0,2)+ "ay";
	}
	else
	{
		return "ERROR!";
	}
}
