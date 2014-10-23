library text2test;

import 'dart:html';

part 'inputText.dart';
part 'testTerm.dart';

void userCommands(Event event) {
  Element element = event.target;
  switch (element.id){
    case "input_button" :
      inputText textToTranform = new inputText();
      textToTranform.createTest();
      querySelector("#input").style.visibility = "hidden";
      querySelector("#test").style.visibility = "visible";
      break;
    case "new_test" :
      querySelector("#input").style.visibility = "visible";
      querySelector("#test").style.visibility = "hidden";
      break;
    default :
      testTerm testedTerm = new testTerm();
      testedTerm.testTheTerm(element.id);
      break;
  }
}

void main() {
  querySelector("#input_button").onClick.listen(userCommands);
  querySelector("#new_test").onClick.listen(userCommands);

}
