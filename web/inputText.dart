part of text2test;

class inputText {  
  
  String replaceTermBySimpleInput(String term, String id, int inputSize) {
    String replacement = '<input type="text" size="$inputSize" class="simpleInput" id="$id" name="$term" ><span title="$term">*</span>';
    return replacement;
  }
  
  
  /// Replaces end of paragraphs by <br> and all terms by <input>
  void createTest() {
    Element inputText = querySelector("#input_text");
    Element inputTerms = querySelector("#input_terms");
    Element test =  querySelector("#test_text");
    
    String transformedText = inputText.innerHtml.replaceAll('\n', '<br>\n'); // <br> tags addes at end of lines
    List<String> terms = inputTerms.text.split("\n");
    int maxTermLength = 0;
    
    for (String term in terms) { // the size of the input field have to correspond to the longest term
      if (term.length > maxTermLength) {
        maxTermLength = term.length;
      }
    }

    for (String term in terms) { 
      List<String> textParts = transformedText.split(" $term ");
      transformedText = "";
      for (int i = 0; i < textParts.length - 1; i++) {
        String id = term + i.toString();
        transformedText += textParts[i] + " " + replaceTermBySimpleInput(term, id, maxTermLength) + " ";
      }
      transformedText += textParts[textParts.length - 1];
    }
    
    test.setInnerHtml(transformedText);
    
    querySelectorAll(".simpleInput").onChange.listen(userCommands);
  }
}