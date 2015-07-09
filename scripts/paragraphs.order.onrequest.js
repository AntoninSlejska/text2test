var checkTest     = $("<button id='checkTest'>"+checkTestI18n+"</button>"),
    showOrigin      = $("<button id='showOrigin'>"+showOriginI18n+"</button>"),
    showTest        = $("<button id='showTest'>"+showTestI18n+"</button>");

$(document).ready(function(){
  var solution = $("#solution").text().split('\\\\');
  var textToChange = $("#text").text();
  $("#text").text("");
  var paragraphs = textToChange.split('\\\\');
  var textAfterChange = $("<ul id='sortable'></ul>");
  for (var i = 0; i < paragraphs.length; i++) {
    var paragraph = $("<li id='"+i+"' class='ui-state-default'></li>");
    paragraph.html("<span class='ui-icon ui-icon-arrowthick-2-n-s'></span>"+paragraphs[i]);
    textAfterChange.append(paragraph);
  }
  var originalText = "";
  for (i = 0; i < paragraphs.length; i++) {
    originalText += "<p>"+paragraphs[solution[i]]+"</p>";
  }

  $("#text").append(textAfterChange);
  $(function() {
  	$( "#sortable" ).sortable();
  	$( "#sortable" ).disableSelection();
  });

  $("#origin").html(originalText);

  checkTest.appendTo("#control");
  showOrigin.appendTo("#control");
  showTest.appendTo("#control").hide();

  checkTest.click(function() {
    var everythingCorrect = true;
    $("#sortable").find("li").each(function(i){
      if ($(this).attr("id") == solution[i]) {
        $(this).find("span").css("background-color","green");
      } else {
        $(this).find("span").css("background-color","red");
        everythingCorrect = false;
      }
      i++;
    });
    if (everythingCorrect) {
      $("#messages").text(textIsPerfectI18n).css("color","green");
    } else {
      $("#messages").text(textIsNotCorrectI18n).css("color","green");
    }
  });

  showOrigin.click(function() {
    $("#messages").text("");
    checkTest.hide();
    showOrigin.hide();
    showTest.show();
    $("#text").hide();
    $("#origin").show();
  });

  showTest.click(function() {
    showTest.hide();
    checkTest.show();
    showOrigin.show();
    $("#origin").hide();
    $("#text").show();
  });
});
