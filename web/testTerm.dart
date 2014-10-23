part of text2test;

class testTerm {
  
  void testTheTerm(String termID) {
    String answer = querySelector("#$termID").value;
    String correctAnswer = querySelector("#$termID").name;
//    window.alert("Answer: $answer, correct: $correctAnswer, id: $termID");
    if (answer == correctAnswer) {
      querySelector("#$termID").style.background = "green";
    } else  {
      querySelector("#$termID").style.background = "red";
    }
  }
}