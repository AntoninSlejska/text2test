var showSolution    = $("<button id='showSolution'>"+showSolutionI18n+"</button>"),
    showOrigin      = $("<button id='showOrigin'>"+showOriginI18n+"</button>"),
    showTest        = $("<button id='showTest'>"+showTestI18n+"</button>"),
    activeInputName = 0;

$(document).ready(function(){
    var solution = $("#solution").text().split('\\\\');
    var inputSize = 0;
    for (i = 0; i < solution.length; i++) {
        if (solution[i].length > inputSize) {
            inputSize = solution[i].length;
        }
    }
    var textToChange = $("#text").text();
    var textAfterChange = "<p>" + textToChange
        .replace(/\{\{/g, '<input type="text" size="'+inputSize+'" name="')
        .replace(/\}\}/g, '" class="testInput">')
        .replace(/\\n\\n/g, '</p><p>')
        .replace(/\\n/g, '</p><p>')
        .replace(/\n\n/g, '</p><p>')
        .replace(/\n/g, '</p><p>') + "</p>";
    var originalText = "<p>" + textToChange
        .replace(/\{\{(\d+)\}\}/g, function(m,p1){return '<b>'+solution[p1]+'</b>';})
        .replace(/\\n\\n/g, '</p><p>')
        .replace(/\\n/g, '</p><p>')
        .replace(/\n\n/g, '</p><p>')
        .replace(/\n/g, '</p><p>') + "</p>";
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

    showSolution.appendTo("#control");
    showOrigin.appendTo("#control");
    showTest.appendTo("#control").hide();

    showSolution.click(function() {
        activeInputSolution = solution[activeInputName];
        $("input:text.testInput[name="+activeInputName+"]").val(activeInputSolution);
        $("input:text.testInput[name="+activeInputName+"]").css("background-color", "green");
    });

    showOrigin.click(function() {
        showSolution.hide();
        showOrigin.hide();
        showTest.show();
        $("#text").hide();
        $("#origin").show();
    });

    showTest.click(function() {
        showTest.hide();
        showSolution.show();
        showOrigin.show();
        $("#origin").hide();
        $("#text").show();
    });
});
