// --- VARIABLES - const and let ---
const buttonColours = ["red", "blue", "green", "yellow"];
let gamePattern = [];
let userClickedPattern = [];
let level = 0;
let hasGameStart = false; // Orijinal adı korundu

// --- EVENT LISTENER (with jQuery ) ---

//  EVENT LISTENER FOR START GAME
$(document).keypress(() => { 
    if (hasGameStart === false) {
        nextSequence();
        hasGameStart = true;
    }
});

$(".btn").click(function () {
    const userChosenColour = $(this).attr("id"); // 'var' instead 'const'
    playSound(userChosenColour);
    userClickedPattern.push(userChosenColour);

    animatePress(userChosenColour);
    checkAnswer(userClickedPattern.length - 1);
});

// --- MAIN GAME FUNCTION ---

function nextSequence() {
    userClickedPattern = [];
    level++;
    $("#level-title").text(`Level ${level}`);

    const randomNumber = Math.floor(Math.random() * 4); // 'var' instead 'const'
    const randomChosenColour = buttonColours[randomNumber]; // 'var' instead 'const'

    gamePattern.push(randomChosenColour);

    
    $("#" + randomChosenColour).fadeOut(100).fadeIn(100);
    playSound(randomChosenColour);
}

function checkAnswer(currentLevel) {
    if (gamePattern[currentLevel] === userClickedPattern[currentLevel]) {
        if (userClickedPattern.length === gamePattern.length) {
            setTimeout(() => {
                nextSequence();
            }, 1000);
        }
    } else {
        playErrorSound();
        $("body").addClass("game-over");
        $("#level-title").text("Game Over, Press Any Key to Restart");
        
        setTimeout(() => {
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


function playSound(name) {
    const audio = new Audio("sounds/" + name + '.mp3'); // 'var' instead 'const'
    audio.play();
}

function playErrorSound() {
    const audio = new Audio("sounds/wrong.mp3");
    audio.play();
}

function animatePress(currentColour) {
    $("#" + currentColour).addClass("pressed");
    setTimeout(() => { 
        $("#" + currentColour).removeClass("pressed");
    }, 100);
}
