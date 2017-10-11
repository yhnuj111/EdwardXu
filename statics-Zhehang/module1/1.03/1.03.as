
import com.xfactorstudio.core.Guid;

shell.LogWhenComplete = false;

radio1.addEventListener("click", firstSetClicked);
radio2.addEventListener("click", firstSetClicked);
radio3.addEventListener("click", secondSetClicked);
radio4.addEventListener("click", secondSetClicked);

radio1.setStyle("themeColor", "0xeeeeee");
radio2.setStyle("themeColor", "0xeeeeee");
radio3.setStyle("themeColor", "0xeeeeee");
radio4.setStyle("themeColor", "0xeeeeee");

startButton.setStyle("themeColor", "0xeeeeee");
startButton.enabled = false;

function firstSetClicked (){
	radio1.enabled = false;
	radio2.enabled = false;

	startButton.enabled = true;
	logRadioButtonToolOnly(this.groupName, this._name, this.label);
	fadeTimer = setInterval(fadeBox, 50);
}



function fadeBox() {
		if (whiteBox._alpha > 0) {
			whiteBox._alpha = whiteBox._alpha - 5;
		} else {
			whiteBox._alpha = 0;
			clearInterval(fadeTimer);
		}
}


startButton.onRelease = function () {
	logButtonToolOnly(this, this.label);
	shell.logComplete();
	if (startButton.label == "Start") {
		hand._visible = true;
		startButton.enabled = false;
		//moveHandUpTimer = setInterval(moveHandUp, 20);
		startButton.setStyle("color", "0x0000ff");
		startButton.setStyle("fontWeight", "bold");
		startButton.label = "Reset";
		startButton.enabled = true;
		direction = "up";
		moveStuffTimer = setInterval(moveStuff, 20);
	} else {
		clearInterval(moveStuffTimer);
		blockA._x = 221;
		blockB._x = 253;
		hand._x = 214;
		startButton.setStyle("color", "0x000000");
		startButton.setStyle("fontWeight", "none");
		startButton.label = "Start";
	}
}


function moveStuff() {
	if (hand._x < 360) {
		hand._x = hand._x + 2;
		blockB._x = blockB._x + 2;
	} else {
		clearInterval(moveStuffTimer);
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

