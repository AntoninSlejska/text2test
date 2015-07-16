var showOrigin      = $("<button id='showOrigin'>"+showOriginI18n+"</button>"),
    showTest        = $("<button id='showTest'>"+showTestI18n+"</button>"),
    activeInputName = 0;

$(document).ready(function(){
  var solution = $("#solution").text().split('\\\\');
  //var options = $("#solution").text().split('\\\\');

  var inputSize = 0;
  for (i = 0; i < solution.length; i++) {
    if (solution[i].length > inputSize) {
      inputSize = solution[i].length;
    }
  }
  var textToChange = $("#text").text();
  var numSentence = 0;
  function replaceEndOfLines() {
    numSentence++;
    var replacement = "</p><div class='answerOptions' id='"+numSentence+"'></div><p>";
    return replacement;
  }
  var textAfterChange = "<div class='answerOptions' id='"+numSentence+"'></div><p>" + textToChange
    .replace(/\{\{/g, '<input type="text" size="'+inputSize+'" name="')
    .replace(/\}\}/g, '" class="testInput">')
    .replace(/\\\\/g, replaceEndOfLines) + "</p>";
  var originalText = "<p>" + textToChange
    .replace(/\{\{(\d+)\}\}/g, function(m,p1){return solution[p1];})
    .replace(/\\\\/g, '</p><p>') + "</p>";
  $("#text").html(textAfterChange);
  $("#origin").html(originalText);

  $(".testInput").focus(function() {
    $(this).css("background-color", "cornsilk");
    activeInputName = document.activeElement.name;
  });

  $(".testInput").focusout(function() {
    var testedValue = $(this).val();
    var inputName =  $(this).attr("name");
    if (testedValue == solution[inputName]) {
      $(this).css("background-color", "green");
    } else {
      $(this).css("background-color", "red");
    }
  });

  $(".testInput").on("input", function() {
    var testedValue = $(this).val();
    var inputName =  $(this).attr("name");
    if (testedValue == solution[inputName]) {
      $(this).css("background-color", "green");
    }
  });

  showOrigin.appendTo("#control");
  showTest.appendTo("#control").hide();

  sentences = textToChange.split('\\\\');
  //$("#title").text(JSON.stringify(sentences));
  for (var i = 0; i < sentences.length; i++) {
    var wordIDs = sentences[i].split(/\}\}.*?\{\{/);
    wordIDs[0] = wordIDs[0].replace(/.*\{\{/, '');
    wordIDs[wordIDs.length - 1] = wordIDs[wordIDs.length - 1].replace(/\}\}.*/, '');
    var options = [];
    for (var j = 0; j < wordIDs.length; j++) {
      options[j] = j;
    }
    shuffle(options);
    for (var j = 0; j < wordIDs.length; j++) {
      var option = $("<span class='draggable'>"+solution[wordIDs[options[j]]]+"</span><span> </span>");
     option.appendTo($("#"+i));
    }
  }

  $("span").draggable({
    revert: true
  });
  $(".testInput").droppable({
    drop: function(event, ui) {
      if (solution[$(this).attr('name')]==$(ui.draggable).text()) {
        this.value = $(ui.draggable).text();
        $(this).css("background-color","green");
        $(ui.draggable).css("background-color","transparent").css("color","transparent");
      }
    }
  });

  showOrigin.click(function() {
    showOrigin.hide();
    showTest.show();
    $("#text").hide();
    $("#origin").show();
  });

  showTest.click(function() {
    showTest.hide();
    showOrigin.show();
    $("#origin").hide();
    $("#text").show();
  });
});
