function htmlEscape(str) {
    return String(str)
            .replace(/&/g, '&amp;')
            .replace(/"/g, '&quot;')
            .replace(/'/g, '&#39;')
            .replace(/</g, '&lt;')
            .replace(/>/g, '&gt;');
}
function htmlUnescape(str){
    return String(str)
        .replace(/&quot;/g, '"')
        .replace(/&#39;/g, "'")
        .replace(/&lt;/g, '<')
        .replace(/&gt;/g, '>')
        .replace(/&amp;/g, '&')
        .replace(/\\n/g, '\n');
}
function chosen(element){
    $(element).chosen({
        width: "250px"
    });
    $(element).trigger("chosen:updated");
}
function addSelectTestType(){
    if ($("#selectTextType_chosen").length) {
        $("#selectTestType_chosen").show();
    } else {
        $.ajax({
            url: "query.php?q=selecttesttype&la="+selectedLanguage,
            type: "POST",
            async: true,
            dataType: "html",
            success: function(response){
                selectTestType.insertBefore(formText);
                selectTestTypeOptions = $.parseHTML(response);
                selectTestType.empty();
                selectTestType.append(selectTestTypeOptions);
                chosen(selectTestType);
            },
            error: function(response){
                $("#mainColumn").html(response);
            }
        });
    }
}
function hideMinorColumn() {
    formTitleInfoText.hide();
    formTitleInfoTest.hide();
    formTitle.hide();
    formSource.hide();
    formUrl.hide();
    formLevelInfo.hide();
    formLevel.hide();
    formPublic.hide();
    sendText.hide();
    sendTest.hide();
}
// http://stackoverflow.com/questions/2450954/how-to-randomize-shuffle-a-javascript-array
function shuffle(array) {
  var currentIndex = array.length, temporaryValue, randomIndex ;
  while (0 !== currentIndex) {
    randomIndex = Math.floor(Math.random() * currentIndex);
    currentIndex -= 1;
    temporaryValue = array[currentIndex];
    array[currentIndex] = array[randomIndex];
    array[randomIndex] = temporaryValue;
  }
  return array;
}
