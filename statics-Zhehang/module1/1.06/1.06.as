
import com.xfactorstudio.core.Guid;

shell.LogWhenComplete = false;

shell.TutorWidth = "medium";

startButton.setStyle("themeColor", "0xeeeeee");

startButton.onRelease = function () {
	logButtonToolOnly(this, this.label);
	shell.logComplete();
	if (startButton.label == "Start") {
		startButton.enabled = false;
		startButton.setStyle("color", "0x0000ff");
		startButton.setStyle("fontWeight", "bold");
		startButton.label = "Reset";
		startButton.enabled = true;
		moveStuffTimer = setInterval(moveStuff, 20);
	} else {
		clearInterval(moveStuffTimer);
		clearInterval(fadeTimer);
		hand1._x = 249;
		hand2._x = 348;
		spring._x = 221;
		spring._width = 142;
		whiteBox._alpha = 100;
		startButton.setStyle("color", "0x000000");
		startButton.setStyle("fontWeight", "none");
		startButton.label = "Start";
	}
}


function moveStuff() {
	if (spring._width > 50) {
		hand1._x = hand1._x + 2;
		hand2._x = hand2._x - 2;
		spring._x = spring._x + 2;
		spring._width = spring._width - 4;
	} else {
		clearInterval(moveStuffTimer);
		fadeTimer = setInterval(fadeBox, 25);
	}
}

function fadeBox() {
		if (whiteBox._alpha > 0) {
			whiteBox._alpha = whiteBox._alpha - 5;
		} else {
			whiteBox._alpha = 0;
			clearInterval(fadeTimer);
		}
}


function logButtonCorrect(theButton, theInput, theFeedback) {
	var tempGUID = Guid.newGuid().toString();
	var tempGUID2 = Guid.newGuid().toString();		
	shell.TutorLog("TOOL_ACTION", "ATTEMPT", tempGUID, theButton._name, "ButtonPressed", theInput);
	shell.TutorLog("TUTOR_ACTION", "RESULT", tempGUID, "", "", "", tempGUID2, "CORRECT", theFeedback);	
}

function logButtonIncorrect(theButton, theInput, theFeedback) {
	var tempGUID = Guid.newGuid().toString();
	var tempGUID2 = Guid.newGuid().toString();		
	shell.TutorLog("TOOL_ACTION", "ATTEMPT", tempGUID, theButton._name, "ButtonPressed", theInput);
	shell.TutorLog("TUTOR_ACTION", "RESULT", tempGUID, "", "", "", tempGUID2, "INCORRECT", theFeedback);	
}

function logButtonToolOnly(theButton, theInput) {
	var tempGUID = Guid.newGuid().toString();
	shell.TutorLog("TOOL_ACTION", "ATTEMPT", tempGUID, theButton._name, "ButtonPressed", theInput);
}

function logRadioButtonToolOnly(theGroupName, theName, theLabel) {
	var tempGUID = Guid.newGuid().toString();
	shell.TutorLog("TOOL_ACTION", "ATTEMPT", tempGUID, theGroupName, "UpdateRadioButton", theName+": "+theLabel);
}



stop();

