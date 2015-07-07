var answerOptions   = $("<div id='answerOptions'></div>"),
    showOrigin      = $("<button id='showOrigin'>"+showOriginI18n+"</button>"),
    showTest        = $("<button id='showTest'>"+showTestI18n+"</button>"),
    activeInputName = 0;

$(document).ready(function(){
  var solution = $("#solution").text().split('\\\\');
  var options = $("#solution").text().split('\\\\');
  shuffle(options);
  var inputSize = 0;
  for (i = 0; i < solution.length; i++) {
    if (solution[i].length > inputSize) {
      inputSize = solution[i].length;
    }
  };
  var textToChange = $("#text").text();
  var textAfterChange = "<p>" + textToChange
    .replace(/{{/g, '<input type="text" size="'+inputSize+'" name="')
    .replace(/}}/g, '" class="testInput">')
    .replace(/\\n\\n/g, '</p><p>')
    .replace(/\\n/g, '</p><p>')
    .replace(/\n\n/g, '</p><p>')
    .replace(/\n/g, '</p><p>')
    + "</p>";
  var originalText = "<p>" + textToChange
    .replace(/{{(\d+)}}/g, function(m,p1){return '<b>'+solution[p1]+'</b>';})
    .replace(/\\n\\n/g, '</p><p>')
    .replace(/\\n/g, '</p><p>')
    .replace(/\n\n/g, '</p><p>')
    .replace(/\n/g, '</p><p>')
    + "</p>";
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

  answerOptions.prependTo("#mainColumn");
  showOrigin.appendTo("#control");
  showTest.appendTo("#control").hide();

  for (var i = 0; i < options.length; i++) {
    var option = $("<span class='draggable'>"+options[i]+"</span><span> </span>");
    option.appendTo(answerOptions);
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
