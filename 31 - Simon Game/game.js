
buttonColours = ["red", "blue", "green", "yellow"];
gamePattern = [];
userClickedPattern = [];
level = 0;
hasGameStart = false;

$(document).keypress(function () {
    if (hasGameStart === false) {
        nextSequence();
        hasGameStart = true;
    }
});



// --- TIKLAMA YÖNETİCİSİ ---

$(".btn").click(function () {

    const userChosenColour = $(this).attr("id");
    playSound(userChosenColour);
    userClickedPattern.push(userChosenColour);

    animatePress(userChosenColour);
    checkAnswer(userClickedPattern.length - 1);

});



// --- ANA OYUN FONKSİYONLARI ---

function nextSequence() {
    userClickedPattern = [];
    level++;
    $("#level-title").text("Level " + level);

    var randomNumber = Math.floor(Math.random() * 4);
    randomChosenColour = buttonColours[randomNumber];

    // Seçilen rengi oyunun desenine ekle
    gamePattern.push(randomChosenColour);

    $("#" + randomChosenColour).fadeOut(100).fadeIn(100);
    playSound(randomChosenColour);


}


// PLAY SOUND & ERROR SOUND


function playSound(name) {


    const audio = new Audio("sounds/" + name + '.mp3');
    audio.play();
}

function playErrorSound() {
    const audio = new Audio("sounds/wrong.mp3");
    audio.play();
}

// ANIMATE PRESS & CHECK ANSWER

function animatePress(currentColour) {
    $("#" + currentColour).addClass("pressed");
    setTimeout(function () {
        $("#" + currentColour).removeClass("pressed");
    }, 100);

};
function checkAnswer(currentLevel) {
    if (gamePattern[currentLevel] === userClickedPattern[currentLevel]) {

        if (userClickedPattern.length === gamePattern.length) {
            setTimeout(function () {
                nextSequence();
            }, 1000);
        }


    }
    else {

        playErrorSound();
        $("body").addClass("game-over");
        $("#level-title").text("Game Over, Press Any Key to Restart");
        setTimeout(function () {
            $("body").removeClass("game-over");
        }, 200);

        startOver();


    }
}

function startOver() {
    hasGameStart = false;
    level = 0;
    gamePattern = [];

}